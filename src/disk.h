#ifndef __DISK_H__
#define __DISK_H__
#include "plane.h"

class Disk : public Plane {
public:
    Disk(const Vector& c, std::shared_ptr<Texture> t, double ya, double pi, double ro, double tx,
         double ty);
    double       getIntersection(const Ray& ray, const Shape*& hitShape) const override;
    bool         getLightIntersection(const Ray& ray, double fill[3]) const override;
    virtual AABB getBounds() const override {
        Vector radius_vec(textureX, textureY,
                          0.01); // Small thickness in normal direction
        Vector rotated_min = center;
        Vector rotated_max = center;

        // Similar to Box, account for rotation
        Vector corners[8] = {Vector(-radius_vec.x(), -radius_vec.y(), -radius_vec.z()),
                             Vector(-radius_vec.x(), -radius_vec.y(), radius_vec.z()),
                             Vector(-radius_vec.x(), radius_vec.y(), -radius_vec.z()),
                             Vector(-radius_vec.x(), radius_vec.y(), radius_vec.z()),
                             Vector(radius_vec.x(), -radius_vec.y(), -radius_vec.z()),
                             Vector(radius_vec.x(), -radius_vec.y(), radius_vec.z()),
                             Vector(radius_vec.x(), radius_vec.y(), -radius_vec.z()),
                             Vector(radius_vec.x(), radius_vec.y(), radius_vec.z())};

        for (const Vector& corner : corners) {
            Vector rotated  = center + right * corner.x() + up * corner.y() + vect * corner.z();
            rotated_min.x() = std::min(rotated_min.x(), rotated.x());
            rotated_min.y() = std::min(rotated_min.y(), rotated.y());
            rotated_min.z() = std::min(rotated_min.z(), rotated.z());
            rotated_max.x() = std::max(rotated_max.x(), rotated.x());
            rotated_max.y() = std::max(rotated_max.y(), rotated.y());
            rotated_max.z() = std::max(rotated_max.z(), rotated.z());
        }

        return AABB(rotated_min, rotated_max);
    }
};

#endif
