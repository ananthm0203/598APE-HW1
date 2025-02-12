#pragma once
#include "vector.h"

class AABB {
public:
    Vector min;
    Vector max;

    AABB()
        : min(Vector(INFINITY, INFINITY, INFINITY)), max(Vector(-INFINITY, -INFINITY, -INFINITY)) {}
    AABB(const Vector& min, const Vector& max) : min(min), max(max) {}

    bool intersect(const Ray& ray) const;
    void expand(const AABB& other);
    void expand(const Vector& point);
};
