#ifndef __TRIANGLE_H__
#define __TRIANGLE_H__
#include "plane.h"

class alignas(64) Triangle : public Plane {
public:
    double thirdX;
    Triangle(Vector c, Vector b, Vector a, Texture* t);
    Triangle() = default;
    double getIntersection(Ray ray);
    bool   getLightIntersection(Ray ray, double* fill);
};

#endif