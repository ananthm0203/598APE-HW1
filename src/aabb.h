#pragma once
#include "vector.h"
#include <emmintrin.h>

class AABB {
public:
    Vector min;
    Vector max;

    AABB()
        : min(Vector(INFINITY, INFINITY, INFINITY)), max(Vector(-INFINITY, -INFINITY, -INFINITY)) {}
    AABB(const Vector& min, const Vector& max) : min(min), max(max) {}

    inline bool intersect_old(const Ray& ray) const {
        double tx1 = (min.x() - ray.point.x()) * ray.inv_vector.x();
        double tx2 = (max.x() - ray.point.x()) * ray.inv_vector.x();

        double ty1 = (min.y() - ray.point.y()) * ray.inv_vector.y();
        double ty2 = (max.y() - ray.point.y()) * ray.inv_vector.y();

        double tz1 = (min.z() - ray.point.z()) * ray.inv_vector.z();
        double tz2 = (max.z() - ray.point.z()) * ray.inv_vector.z();

        double tmin = std::min(tx1, tx2);
        double tmax = std::max(tx1, tx2);

        tmin = std::max(tmin, std::min(ty1, ty2));
        tmax = std::min(tmax, std::max(ty1, ty2));

        tmin = std::max(tmin, std::min(tz1, tz2));
        tmax = std::min(tmax, std::max(tz1, tz2));

        return tmax >= tmin && tmax > 0;
    }

    inline bool intersect(const Ray& ray) const {
        double t1[3], t2[3], tmin_arr[3], tmax_arr[3];
#pragma clang loop vectorize(enable) interleave(enable)
        for (int i = 0; i < 3; i++) {
            t1[i]       = (min[i] - ray.point[i]) * ray.inv_vector[i];
            t2[i]       = (max[i] - ray.point[i]) * ray.inv_vector[i];
            tmin_arr[i] = std::min(t1[i], t2[i]);
            tmax_arr[i] = std::max(t1[i], t2[i]);
        }

        double tmin = std::max(std::max(tmin_arr[0], tmin_arr[1]), tmin_arr[2]);
        double tmax = std::min(std::min(tmax_arr[0], tmax_arr[1]), tmax_arr[2]);

        return tmax >= tmin && tmax > 0;
    }

    void expand(const AABB& other);
    void expand(const Vector& point);
};
