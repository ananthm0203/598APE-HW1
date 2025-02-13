#ifndef __SPHERE_H__
#define __SPHERE_H__
#include "shape.h"
#include "vector.h"

class Sphere : public Shape {
public:
    fixed_t radius;

    Sphere(const Vector& c, Texture* t, double ya, double pi, double ro, double radius);
    fixed_t       getIntersection(Ray ray, Shape** hitShape) override;
    void          move() override;
    bool          getLightIntersection(Ray ray, fixed_t* fill) override;
    void          getColor(unsigned char* toFill, fixed_t* am, fixed_t* op, fixed_t* ref, Ray ray,
                           unsigned int depth) override;
    Vector        getNormal(Vector point) override;
    unsigned char reversible() override;
    void          setAngles(fixed_t a, fixed_t b, fixed_t c) override;
    void          setYaw(fixed_t a) override;
    void          setPitch(fixed_t b) override;
    void          setRoll(fixed_t c) override;
    virtual AABB  getBounds() const override {
        Vector radius_vec(radius, radius, radius);
        return AABB(center - radius_vec, center + radius_vec);
    }
};
#endif
