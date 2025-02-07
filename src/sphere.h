#ifndef __SPHERE_H__
#define __SPHERE_H__
#include "shape.h"

class alignas(64) Sphere : public Shape {
public:
    double radius;
    Sphere(const Vector& c, Texture* t, double ya, double pi, double ro, double radius);
    Sphere() = default;
    double        getIntersection(Ray ray);
    void          move();
    bool          getLightIntersection(Ray ray, double* fill);
    void          getColor(unsigned char* toFill, double* am, double* op, double* ref, Ray ray,
                           unsigned int depth);
    Vector        getNormal(Vector point);
    unsigned char reversible();
    void          setAngles(double a, double b, double c);
    void          setYaw(double a);
    void          setPitch(double b);
    void          setRoll(double c);
};
#endif