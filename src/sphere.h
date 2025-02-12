#ifndef __SPHERE_H__
#define __SPHERE_H__
#include "shape.h"

class Sphere : public Shape{
public:
  double radius;

  Sphere(const Vector &c, Texture* t, double ya, double pi, double ro, double radius);
  double getIntersection(Ray ray, Shape** hitShape) override;
  void move() override;
  bool getLightIntersection(Ray ray, double* fill) override;
  void getColor(unsigned char* toFill, double* am, double* op, double* ref, Ray ray, unsigned int depth) override;
  Vector getNormal(Vector point) override;
  unsigned char reversible() override;
  void setAngles(double a, double b, double c) override;
  void setYaw(double a) override;
  void setPitch(double b) override;
  void setRoll(double c) override;
  virtual AABB getBounds() const override {
    Vector radius_vec(radius, radius, radius);
    return AABB(center - radius_vec, center + radius_vec);
  }
};
#endif
