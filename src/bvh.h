#ifndef __BVH_H__
#define __BVH_H__

#include "aabb.h" // Include full AABB definition
#include "light.h"
#include "shape.h"
#include <memory>
#include <vector>

// class BVHNode {
// public:
//     AABB                     bounds; //6 doubles, 48 bytes
//     std::unique_ptr<BVHNode> left; //8 bytes
//     std::unique_ptr<BVHNode> right; //8 bytes
//     Shape*                   shape; //8 bytes

//     BVHNode() : bounds(), left(nullptr), right(nullptr), shape(nullptr) {}
//     ~BVHNode() {}
//     bool isLeaf() const { return shape != nullptr; }
// };

class alignas(64) BVHNode {
public:
    AABB     bounds;
    unsigned leftChild;
    Shape*   shape;

    BVHNode() : bounds(), leftChild(0), shape(nullptr) {}
    ~BVHNode() = default;
};

class BVH {
public:
    BVH(std::vector<std::unique_ptr<Shape>>& shapes);
    ~BVH();
    double getIntersection(const Ray& ray, const Shape*& hitShape) const;
    bool   getLightIntersection(const Ray& ray, double fill[3]) const;

private:
    std::unique_ptr<BVHNode> root;
    BVHNode*                 nodes;
    size_t                   nodes_used;
    void buildBVH(std::vector<std::unique_ptr<Shape>>& shapes, int start, int end, size_t node_idx);
    double getNodeIntersection(size_t node_idx, const Ray& ray, const Shape*& hitShape) const;
    bool   getNodeLightIntersection(size_t node_idx, const Ray& ray, double fill[3]) const;
};

#endif