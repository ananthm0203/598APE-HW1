#include "bvh.h"
#include "aabb.h"
#include "shape.h"
#include <algorithm>
#include <memory>

BVH::BVH(std::vector<std::unique_ptr<Shape>>& shapes)
    : nodes((BVHNode*)std::aligned_alloc(alignof(BVHNode),
                                         sizeof(BVHNode) * (shapes.size() * 2 - 1))),
      nodes_used(0) {
    // We know the max amount of nodes in the BVH will be 2 * (shapes.size()) - 1
    // TODO: make aligned
    buildBVH(shapes, 0, shapes.size(), 0);
}

BVH::~BVH() {
    for (size_t i = 0; i < nodes_used; ++i) {
        nodes[i].~BVHNode();
    }
    free(nodes);
}

void BVH::buildBVH(std::vector<std::unique_ptr<Shape>>& shapes, int start, int end,
                   size_t node_idx) {
    BVHNode* nodePtr = new (nodes + node_idx) BVHNode;
    auto&    node    = *nodePtr;

    // Base case (end is practically guaranteed to be greater than start)
    if (end - start <= 1) {
        node.bounds.expand(shapes[start]->getBounds());
        node.shape = shapes[start].get();
        return;
    }

    // Calculate bounds of all shapes
    for (int i = start; i < end; ++i) {
        node.bounds.expand(shapes[i]->getBounds());
    }

    // Split along longest axis
    Vector extent = node.bounds.max - node.bounds.min;
    int    axis   = 0;
    if (extent.y > extent.x)
        axis = 1;
    if (extent.z > extent.y)
        axis = 2;

    // Sort shapes along the chosen axis
    int mid = (start + end) / 2;

    // partition shapes along the chosen axis, no need to sort fully
    // doing some pointer chasing here, can focus on fixing later once bvh is working
    std::nth_element(shapes.begin() + start, shapes.begin() + mid, shapes.begin() + end,
                     [axis](const std::unique_ptr<Shape>& a, const std::unique_ptr<Shape>& b) {
                         return a->getBounds().min[axis] < b->getBounds().min[axis];
                     });

    auto left_idx  = ++nodes_used;
    auto right_idx = ++nodes_used;
    node.leftChild = left_idx;

    buildBVH(shapes, start, mid, left_idx);
    buildBVH(shapes, mid, end, right_idx);
}

double BVH::getIntersection(const Ray& ray, const Shape*& hitShape) const {
    if (__builtin_expect(!nodes_used, 0))
        return inf;
    return getNodeIntersection(0, ray, hitShape);
}

double BVH::getNodeIntersection(size_t node_idx, const Ray& ray, const Shape*& hitShape) const {
    const auto& node = nodes[node_idx];
    if (!node.bounds.intersect(ray)) {
        return inf;
    }

    if (node.shape) {
        double t = node.shape->getIntersection(ray, hitShape);
        if (t != inf) {
            hitShape = node.shape;
        }
        return t;
    }

    const Shape* leftHitShape  = nullptr;
    const Shape* rightHitShape = nullptr;

    double hitLeft  = getNodeIntersection(node.leftChild, ray, leftHitShape);
    double hitRight = getNodeIntersection(node.leftChild + 1, ray, rightHitShape);

    if (hitLeft < hitRight) {
        hitShape = leftHitShape;
        return hitLeft;
    } else {
        hitShape = rightHitShape;
        return hitRight;
    }
}

bool BVH::getLightIntersection(const Ray& ray, double fill[3]) const {
    if (__builtin_expect(!nodes_used, 0))
        return false;
    return getNodeLightIntersection(0, ray, fill);
}

bool BVH::getNodeLightIntersection(size_t node_idx, const Ray& ray, double fill[3]) const {
    const auto& node = nodes[node_idx];
    if (!node.bounds.intersect(ray)) {
        return false;
    }

    if (node.shape) {
        return node.shape->getLightIntersection(ray, fill);
    }

    Shape* leftHitShape  = nullptr;
    Shape* rightHitShape = nullptr;

    // short circuiting
    return getNodeLightIntersection(node.leftChild, ray, fill) ||
           getNodeLightIntersection(node.leftChild + 1, ray, fill);
}