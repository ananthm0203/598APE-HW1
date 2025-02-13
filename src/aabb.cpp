#include "aabb.h"
#include <algorithm>

bool AABB::intersect(const Ray& ray) const {
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
