#ifndef __PLANE_H__
#define __PLANE_H__

#include "shape.h"

class Plane : public Shape{
public:
  Vector vect, right, up;
  double d;
  Plane(const Vector &c, Texture* t, double ya, double pi, double ro, double tx, double ty);
  double getIntersection(Ray ray, Shape** hitShape) override;
  bool getLightIntersection(Ray ray, double* toFill) override;
  void move() override;
  void getColor(unsigned char* toFill, double* am, double* op, double* ref, Ray ray, unsigned int depth) override;
  Vector getNormal(Vector point) override;
  unsigned char reversible() override;
  void setAngles(double yaw, double pitch, double roll) override;
  void setYaw(double d) override;
  void setPitch(double d) override;
  void setRoll(double d) override;
  virtual AABB getBounds() const override {
    // Since planes are infinite, we'll use a large but finite box
    const double LARGE_VALUE = 1e6;
    Vector extent(LARGE_VALUE, LARGE_VALUE, LARGE_VALUE);
    return AABB(center - extent, center + extent);
  }
};

#endif
