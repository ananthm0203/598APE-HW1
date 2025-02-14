#ifndef __SHAPE_H__
#define __SHAPE_H__
#include "aabb.h"
#include "light.h"
#include <algorithm>

class Shape {
public:
    Shape(const Vector& c, Texture* t, double ya, double pi, double ro);
    virtual ~Shape() = default;
    double   yaw, pitch, roll, xsin, xcos, ysin, ycos, zsin, zcos;
    Vector   center;
    Texture* texture;
    double   textureX, textureY, mapX, mapY, mapOffX, mapOffY;
    double textureX_inv, textureY_inv, mapX_inv, mapY_inv;
    Texture* normalMap;

    virtual double        getIntersection(const Ray& ray, const Shape*& hitShape) const = 0;
    virtual bool          getLightIntersection(const Ray& ray, double fill[3]) const      = 0;
    virtual void          move()                                                        = 0;
    virtual unsigned char reversible() const                                            = 0;
    virtual void          getColor(unsigned char toFill[3], double& am, double& op, double& ref,
                                   const Ray& ray, unsigned int depth) const            = 0;
    virtual Vector        getNormal(const Vector& point) const                          = 0;
    virtual void          setAngles(double yaw, double pitch, double roll)              = 0;
    virtual void          setYaw(double d)                                              = 0;
    virtual void          setPitch(double d)                                            = 0;
    virtual void          setRoll(double d)                                             = 0;
    virtual AABB          getBounds() const                                             = 0;
};

#endif
