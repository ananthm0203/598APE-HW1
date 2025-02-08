#include "bvh.h"
#include "shape.h"
#include "aabb.h"
#include <algorithm>
#include <memory>

BVH::BVH(std::vector<Shape*>& shapes) {
    root = buildBVH(shapes, 0, shapes.size());
}

std::unique_ptr<BVHNode> BVH::buildBVH(std::vector<Shape*>& shapes, int start, int end) {
    auto node = std::make_unique<BVHNode>();

    int nShapes = end - start;
    if (nShapes == 1) {
        // Leaf node
        node->shape = shapes.at(start);
        //will likely call copy constructor instead of move constructor
        //can figure out optimization later
        node->bounds = node->shape->getBounds();
        return node;
    }

    // Calculate bounds of all shapes
    for (int i = start; i < end; i++) {
        node->bounds.expand(shapes[i]->getBounds());
    }

    // Split along longest axis
    Vector extent = node->bounds.max - node->bounds.min;
    int axis = 0;
    if (extent.y > extent.x) axis = 1;
    if (extent.z > extent.y) axis = 2;

    // Sort shapes along the chosen axis
    int mid = (start + end) / 2;

    //partition shapes along the chosen axis, no need to sort fully
    //doing some pointer chasing here, can focus on fixing later once bvh is working
    std::nth_element(shapes.begin() + start, shapes.begin() + mid, shapes.begin() + end,
                    [axis](const Shape* a, const Shape* b) {
                        return a->getBounds().min[axis] < b->getBounds().min[axis];
                    });

    node->left = buildBVH(shapes, start, mid);
    node->right = buildBVH(shapes, mid, end);

    return node;
}

double BVH::getIntersection(const Ray& ray, Shape** hitShape) const {
    if (!root) return inf;
    return getNodeIntersection(root.get(), ray, hitShape);
}

double BVH::getNodeIntersection(const BVHNode* node, const Ray& ray, Shape** hitShape) const {
    if (!node->bounds.intersect(ray)) {
        return inf;
    }

    if (node->shape) {
        double t = node->shape->getIntersection(ray, hitShape);
        if (t != inf) {
            *hitShape = node->shape;
        }
        return t;
    }

    Shape* leftHitShape = nullptr;
    Shape* rightHitShape = nullptr;
    
    double hitLeft = getNodeIntersection(node->left.get(), ray, &leftHitShape);
    double hitRight = getNodeIntersection(node->right.get(), ray, &rightHitShape);

    if (hitLeft < hitRight) {
        *hitShape = leftHitShape;
        return hitLeft;
    } else {
        *hitShape = rightHitShape;
        return hitRight;
    }
}

bool BVH::getLightIntersection(const Ray& ray, double* fill) const {
    if (!root) return false;
    return getNodeLightIntersection(root.get(), ray, fill);
}

bool BVH::getNodeLightIntersection(const BVHNode* node, const Ray& ray, double* fill) const {
    if (!node->bounds.intersect(ray)) {
        return false;
    }

    if (node->shape) {
        return node->shape->getLightIntersection(ray, fill);
    }

    Shape* leftHitShape = nullptr;
    Shape* rightHitShape = nullptr;
    
    bool hitLeft = getNodeLightIntersection(node->left.get(), ray, fill);
    bool hitRight = getNodeLightIntersection(node->right.get(), ray, fill);

    return hitLeft || hitRight;
}