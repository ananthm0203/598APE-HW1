#include "bvh.h"
#include "aabb.h"
#include "shape.h"
#include <algorithm>
#include <cstring>
#include <memory>
#include <random>

BVH::BVH(std::vector<std::unique_ptr<Shape>>& shapes, std::vector<unsigned>& shape_perm)
: gen(), nodes((BVHNode *)std::aligned_alloc(alignof(BVHNode), sizeof(BVHNode) * (shapes.size() * 2 - 1))), nodes_used(0) {
    // We know the max amount of nodes in the BVH will be 2 * (shapes.size()) - 1
    // TODO: make aligned
    buildBVH(shapes, shape_perm, 0, shapes.size(), 0);
}

BVH::~BVH() {
    for (size_t i = 0; i < nodes_used; ++i) {
        nodes[i].~BVHNode();
    }
    free(nodes);
}

void BVH::buildBVH(std::vector<std::unique_ptr<Shape>>& shapes, std::vector<unsigned>& shape_perm, int start,
                                       int end, int node_idx) {
    // Placement new on new node
    BVHNode* nodePtr = new (nodes + node_idx) BVHNode;
    auto& node = *nodePtr;

    // Calculate bounds of all shapes
    for (int i = start; i < end; ++i) {
        node.bounds.expand(shapes[i]->getBounds());
    }

    if (end - start <= 1) {
        node.shape = shapes[start].get();
        return;
    }

    // Split along longest axis
    Vector extent = node.bounds.max - node.bounds.min;
    int    axis   = 0;
    if (extent.y > extent.x)
        axis = 1;
    if (extent.z > extent.y)
        axis = 2;

    // Partition shapes along a particular axis using a random pivot
    std::uniform_int_distribution<int> dist(start, end - 1);
    int pivot_idx = dist(gen);
    auto pivot = shapes[pivot_idx]->getBounds().min[axis];
    int i = start, j = end-1;
    while (i <= j) {
        if (shapes[i]->getBounds().min[axis] >= pivot) {
            std::swap(shapes[i], shapes[j]);
            std::swap(shape_perm[i], shape_perm[j]);
            j--;
        }
        else {
            ++i;
        }
    }

    auto left_idx = ++nodes_used;
    auto right_idx = ++nodes_used;
    node.leftChild = left_idx;

    buildBVH(shapes, shape_perm, start, std::min(i+1, end-1), left_idx);
    buildBVH(shapes, shape_perm, std::min(i+1, end-1), end, right_idx);
}

double BVH::getIntersection(const Ray& ray, Shape** hitShape) const {
    if (!nodes_used)
        return inf;
    return getNodeIntersection(0, ray, hitShape);
}

double BVH::getNodeIntersection(size_t node_idx, const Ray& ray, Shape** hitShape) const {
    const auto& node = nodes[node_idx];
    if (!node.bounds.intersect(ray)) {
        return inf;
    }

    if (node.shape) {
        double t = node.shape->getIntersection(ray, hitShape);
        if (t != inf) {
            *hitShape = node.shape;
        }
        return t;
    }

    Shape* leftHitShape  = nullptr;
    Shape* rightHitShape = nullptr;

    double hitLeft  = getNodeIntersection(node.leftChild, ray, &leftHitShape);
    double hitRight = getNodeIntersection(node.leftChild+1, ray, &rightHitShape);

    if (hitLeft < hitRight) {
        *hitShape = leftHitShape;
        return hitLeft;
    } else {
        *hitShape = rightHitShape;
        return hitRight;
    }
}

bool BVH::getLightIntersection(const Ray& ray, double* fill) const {
    if (!nodes_used)
        return false;
    return getNodeLightIntersection(0, ray, fill);
}

bool BVH::getNodeLightIntersection(size_t node_idx, const Ray& ray, double* fill) const {
    const auto& node = nodes[node_idx];
    if (!node.bounds.intersect(ray)) {
        return false;
    }

    if (node.shape) {
        return node.shape->getLightIntersection(ray, fill);
    }

    Shape* leftHitShape  = nullptr;
    Shape* rightHitShape = nullptr;

    bool hitLeft  = getNodeLightIntersection(node.leftChild, ray, fill);
    bool hitRight = getNodeLightIntersection(node.leftChild+1, ray, fill);

    return hitLeft || hitRight;
}