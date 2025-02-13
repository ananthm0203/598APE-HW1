#ifndef __SHAPE_H__
#define __SHAPE_H__
#include "aabb.h"
#include "fpm/fixed.h"
#include "fpm/math.h"
#include "light.h"
#include "vector.h"
#include <algorithm>

class Shape {
public:
    Shape(const Vector& c, Texture* t, double ya, double pi, double ro);
    virtual ~Shape() = default;
    fixed_t  yaw, pitch, roll, xsin, xcos, ysin, ycos, zsin, zcos;
    Vector   center;
    Texture* texture;
    fixed_t  textureX, textureY, mapX, mapY, mapOffX, mapOffY;
    Texture* normalMap;

    virtual fixed_t       getIntersection(Ray ray, Shape** hitShape)   = 0;
    virtual bool          getLightIntersection(Ray ray, fixed_t* fill) = 0;
    virtual void          move()                                       = 0;
    virtual unsigned char reversible()                                 = 0;
    virtual void   getColor(unsigned char* toFill, fixed_t* am, fixed_t* op, fixed_t* ref, Ray ray,
                            unsigned int depth)                        = 0;
    virtual Vector getNormal(Vector point)                             = 0;
    virtual void   setAngles(fixed_t yaw, fixed_t pitch, fixed_t roll) = 0;
    virtual void   setYaw(fixed_t d)                                   = 0;
    virtual void   setPitch(fixed_t d)                                 = 0;
    virtual void   setRoll(fixed_t d)                                  = 0;
    virtual AABB   getBounds() const                                   = 0;
};

#endif
