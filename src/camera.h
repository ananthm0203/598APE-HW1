#ifndef __CAMERA_H__
#define __CAMERA_H__
#include "vector.h"

class Camera {
public:
    Vector focus, right, up, forward;
    fixed_t xcos, xsin, ycos, ysin, zcos, zsin;
    Camera(const Vector& center);

    Camera(const Vector& f, double a, double b, double c);

    void setAngles(double a, double b, double c);
    void setYaw(double a);
    void setPitch(double a);
    void setRoll(double b);

private:
    fixed_t yaw, pitch, roll;
};

#endif
