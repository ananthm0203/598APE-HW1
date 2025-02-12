#ifndef __BVH_H__
#define __BVH_H__

#include "light.h"
#include "shape.h"
#include "aabb.h"  // Include full AABB definition
#include <vector>
#include <memory>

class BVHNode {
public:
    AABB bounds;
    std::unique_ptr<BVHNode> left;
    std::unique_ptr<BVHNode> right;
    Shape* shape;

    BVHNode() : bounds(), left(nullptr), right(nullptr), shape(nullptr) {}
    ~BVHNode() {}
    bool isLeaf() const { return shape != nullptr; }
};

class BVH {
public:
    BVH(std::vector<std::unique_ptr<Shape>>& shapes);
    double getIntersection(const Ray& ray, Shape** hitShape) const;
    bool getLightIntersection(const Ray& ray, double* fill) const;

private:
    std::unique_ptr<BVHNode> root;
    std::unique_ptr<BVHNode> buildBVH(std::vector<std::unique_ptr<Shape>>& shapes, int start, int end);
    double getNodeIntersection(const BVHNode* node, const Ray& ray, Shape** hitShape) const;
    bool getNodeLightIntersection(const BVHNode* node, const Ray& ray, double* fill) const;
};

#endif