#pragma once
#include "vector.h"

class AABB {
public:
    Vector min;
    Vector max;

    AABB()
        : min(Vector(INFINITY, INFINITY, INFINITY)), max(Vector(-INFINITY, -INFINITY, -INFINITY)) {}
    AABB(const Vector& min, const Vector& max) : min(min), max(max) {}

    inline bool intersect(const Ray& ray) const {
        double tx1  = (min.x - ray.point.x) * ray.inv_vector.x;
        double tx2  = (max.x - ray.point.x) * ray.inv_vector.x;
        double tmin = std::min(tx1, tx2);
        double tmax = std::max(tx1, tx2);

        double ty1 = (min.y - ray.point.y) * ray.inv_vector.y;
        double ty2 = (max.y - ray.point.y) * ray.inv_vector.y;
        tmin       = std::max(tmin, std::min(ty1, ty2));
        tmax       = std::min(tmax, std::max(ty1, ty2));

        double tz1 = (min.z - ray.point.z) * ray.inv_vector.z;
        double tz2 = (max.z - ray.point.z) * ray.inv_vector.z;
        tmin       = std::max(tmin, std::min(tz1, tz2));
        tmax       = std::min(tmax, std::max(tz1, tz2));

        return tmax >= tmin && tmax > 0;
    }
    void expand(const AABB& other);
    void expand(const Vector& point);
};
