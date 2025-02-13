#ifndef __PLANE_H__
#define __PLANE_H__

#include "shape.h"

class Plane : public Shape {
public:
    Vector vect, right, up;
    fixed_t d;
    Plane(const Vector& c, Texture* t, double ya, double pi, double ro, double tx, double ty);
    fixed_t        getIntersection(Ray ray, Shape** hitShape) override;
    bool          getLightIntersection(Ray ray, fixed_t* toFill) override;
    void          move() override;
    void          getColor(unsigned char* toFill, fixed_t* am, fixed_t* op, fixed_t* ref, Ray ray,
                           unsigned int depth) override;
    Vector        getNormal(Vector point) override;
    unsigned char reversible() override;
    void          setAngles(fixed_t yaw, fixed_t pitch, fixed_t roll) override;
    void          setYaw(fixed_t d) override;
    void          setPitch(fixed_t d) override;
    void          setRoll(fixed_t d) override;
    virtual AABB  getBounds() const override {
        // Since planes are infinite, we'll use a large but finite box
        const double LARGE_VALUE = 1e6;
        Vector       extent(LARGE_VALUE, LARGE_VALUE, LARGE_VALUE);
        return AABB(center - extent, center + extent);
    }
};

#endif
