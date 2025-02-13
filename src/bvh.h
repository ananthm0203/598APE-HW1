#ifndef __BVH_H__
#define __BVH_H__

#include "aabb.h" // Include full AABB definition
#include "light.h"
#include "shape.h"
#include <memory>
#include <vector>
#include <random>

class alignas(64) BVHNode {
public:
    AABB                     bounds;
    unsigned leftChild;
    Shape*                   shape;

    BVHNode() : bounds(), leftChild(0), shape(nullptr) {}
    ~BVHNode() = default;
};

class BVH {
public:
    BVH(std::vector<std::unique_ptr<Shape>>& shapes, std::vector<unsigned>& shape_perm);
    ~BVH();
    double getIntersection(const Ray& ray, Shape** hitShape) const;
    bool   getLightIntersection(const Ray& ray, double* fill) const;

private:
    std::mt19937 gen;
    BVHNode *nodes;
    size_t nodes_used;
    void buildBVH(std::vector<std::unique_ptr<Shape>>& shapes, std::vector<unsigned>& shape_perm, int start,
                                      int end, int node_idx);
    double getNodeIntersection(size_t node_idx, const Ray& ray, Shape** hitShape) const;
    bool   getNodeLightIntersection(size_t node_idx, const Ray& ray, double* fill) const;
};

#endif