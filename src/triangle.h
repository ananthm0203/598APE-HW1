#ifndef __TRIANGLE_H__
#define __TRIANGLE_H__
#include "plane.h"

class Triangle : public Plane {
public:
    double thirdX;
    Triangle(Vector c, Vector b, Vector a, Texture* t);
    double       getIntersection(const Ray& ray, const Shape*& hitShape) const override;
    bool         getLightIntersection(const Ray& ray, double fill[3]) const override;
    virtual AABB getBounds() const override {
        Vector v1 = center;
        Vector v2 = center + right * textureX;
        Vector v3 = center + right * thirdX + up * textureY;

        return AABB(Vector(std::min({v1.x(), v2.x(), v3.x()}), std::min({v1.y(), v2.y(), v3.y()}),
                           std::min({v1.z(), v2.z(), v3.z()})),
                    Vector(std::max({v1.x(), v2.x(), v3.x()}), std::max({v1.y(), v2.y(), v3.y()}),
                           std::max({v1.z(), v2.z(), v3.z()})));
    }
};

#endif
