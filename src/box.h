#ifndef __BOX_H__
#define __BOX_H__
#include "plane.h"

class Box : public Plane {
public:
    Box(const Vector& c, Texture* t, double ya, double pi, double ro, double tx, double ty);
    Box(const Vector& c, Texture* t, double ya, double pi, double ro, double tx);
    double       getIntersection(const Ray& ray, const Shape*& hitShape) const override;
    bool         getLightIntersection(const Ray& ray, double fill[3]) const override;
    virtual AABB getBounds() const override {
        Vector half_size(textureX / 2, textureY / 2,
                         0.01); // Small thickness in Z direction
        Vector rotated_min = center;
        Vector rotated_max = center;

        // Account for rotation by checking all corners
        Vector corners[8] = {Vector(-half_size.x, -half_size.y, -half_size.z),
                             Vector(-half_size.x, -half_size.y, half_size.z),
                             Vector(-half_size.x, half_size.y, -half_size.z),
                             Vector(-half_size.x, half_size.y, half_size.z),
                             Vector(half_size.x, -half_size.y, -half_size.z),
                             Vector(half_size.x, -half_size.y, half_size.z),
                             Vector(half_size.x, half_size.y, -half_size.z),
                             Vector(half_size.x, half_size.y, half_size.z)};

        for (const Vector& corner : corners) {
            Vector rotated = center + right * corner.x + up * corner.y + vect * corner.z;
            rotated_min.x  = std::min(rotated_min.x, rotated.x);
            rotated_min.y  = std::min(rotated_min.y, rotated.y);
            rotated_min.z  = std::min(rotated_min.z, rotated.z);
            rotated_max.x  = std::max(rotated_max.x, rotated.x);
            rotated_max.y  = std::max(rotated_max.y, rotated.y);
            rotated_max.z  = std::max(rotated_max.z, rotated.z);
        }

        return AABB(rotated_min, rotated_max);
    }
};

#endif
