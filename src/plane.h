#ifndef __PLANE_H__
#define __PLANE_H__

#include "shape.h"

class Plane : public Shape {
public:
    Vector vect, right, up;
    double d;
    Plane(const Vector& c, Texture* t, double ya, double pi, double ro, double tx, double ty);
    double getIntersection(const Ray& ray, const Shape*& hitShape) const override;
    bool   getLightIntersection(const Ray& ray, double toFill[3]) const override;
    void   move() override;
    void   getColor(unsigned char toFill[3], double& am, double& op, double& ref, const Ray& ray,
                    unsigned int depth) const override;
    Vector getNormal(const Vector& point) const override;
    unsigned char reversible() const override;
    void          setAngles(double yaw, double pitch, double roll) override;
    void          setYaw(double d) override;
    void          setPitch(double d) override;
    void          setRoll(double d) override;
    virtual AABB  getBounds() const override {
        // Since planes are infinite, we'll use a large but finite box
        const double LARGE_VALUE = 1e6;
        Vector       extent(LARGE_VALUE, LARGE_VALUE, LARGE_VALUE);
        return AABB(center - extent, center + extent);
    }
};

#endif
