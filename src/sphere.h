#ifndef __SPHERE_H__
#define __SPHERE_H__
#include "shape.h"

class Sphere : public Shape {
public:
    double radius;

    Sphere(const Vector& c, std::shared_ptr<Texture> t, double ya, double pi, double ro, double radius);
    double getIntersection(const Ray& ray, const Shape*& hitShape) const override;
    void   move() override;
    bool   getLightIntersection(const Ray& ray, double fill[3]) const override;
    void   getColor(unsigned char* toFill, double& am, double& op, double& ref, const Ray& ray,
                    unsigned int depth) const override;
    Vector getNormal(const Vector& point) const override;
    unsigned char reversible() const override;
    void          setAngles(double a, double b, double c) override;
    void          setYaw(double a) override;
    void          setPitch(double b) override;
    void          setRoll(double c) override;
    virtual AABB  getBounds() const override {
        Vector radius_vec(radius, radius, radius);
        return AABB(center - radius_vec, center + radius_vec);
    }
};
#endif
