#include "aabb.h"
#include <algorithm>

bool AABB::intersect(const Ray& ray) const {
    fixed_t tx1 = (min.x - ray.point.x) / ray.vector.x;
    fixed_t tx2 = (max.x - ray.point.x) / ray.vector.x;

    fixed_t ty1 = (min.y - ray.point.y) / ray.vector.y;
    fixed_t ty2 = (max.y - ray.point.y) / ray.vector.y;

    fixed_t tz1 = (min.z - ray.point.z) / ray.vector.z;
    fixed_t tz2 = (max.z - ray.point.z) / ray.vector.z;

    fixed_t tmin = std::min(tx1, tx2);
    fixed_t tmax = std::max(tx1, tx2);

    // tmin = std::max(tmin, std::min(ty1, ty2));
    // tmax = std::min(tmax, std::max(ty1, ty2));

    // tmin = std::max(tmin, std::min(tz1, tz2));
    // tmax = std::min(tmax, std::max(tz1, tz2));

    fixed_t ymin = std::min(ty1, ty2);
    fixed_t ymax = std::max(ty1, ty2);

    tmin = std::max(tmin, ymin);
    tmax = std::min(tmax, ymax);

    fixed_t zmin = std::min(tz1, tz2);
    fixed_t zmax = std::max(tz1, tz2);

    tmin = std::max(tmin, zmin);
    tmax = std::min(tmax, zmax);

    return tmax >= tmin && tmax > fixed_t(0);
}

void AABB::expand(const AABB& other) {
    min.x = std::min(min.x, other.min.x);
    min.y = std::min(min.y, other.min.y);
    min.z = std::min(min.z, other.min.z);

    max.x = std::max(max.x, other.max.x);
    max.y = std::max(max.y, other.max.y);
    max.z = std::max(max.z, other.max.z);
}

void AABB::expand(const Vector& point) {
    min.x = std::min(min.x, point.x);
    min.y = std::min(min.y, point.y);
    min.z = std::min(min.z, point.z);

    max.x = std::max(max.x, point.x);
    max.y = std::max(max.y, point.y);
    max.z = std::max(max.z, point.z);
}
