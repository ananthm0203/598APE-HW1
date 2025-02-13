#include "shape.h"

Shape::Shape(const Vector& c, Texture* t, double ya, double pi, double ro)
    : center(c), texture(t), yaw(ya), pitch(pi), roll(ro){};

void Shape::setAngles(fixed_t a, fixed_t b, fixed_t c) {
    yaw   = a;
    pitch = b;
    roll  = c;
    xcos  = cos(yaw);
    xsin  = sin(yaw);
    ycos  = cos(pitch);
    ysin  = sin(pitch);
    zcos  = cos(roll);
    zsin  = sin(roll);
}

void Shape::setYaw(fixed_t a) {
    yaw  = a;
    xcos = cos(yaw);
    xsin = sin(yaw);
}

void Shape::setPitch(fixed_t b) {
    pitch = b;
    ycos  = cos(pitch);
    ysin  = sin(pitch);
}

void Shape::setRoll(fixed_t c) {
    roll = c;
    zcos = cos(roll);
    zsin = sin(roll);
}
