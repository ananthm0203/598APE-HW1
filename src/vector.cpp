#include "vector.h"
#include <math.h>
#include <stddef.h>
#include <stdlib.h>

Vector::Vector(fixed_t a, fixed_t b, fixed_t c) : x(a), y(b), z(c) {
}
Vector::Vector(double a, double b, double c) : x(a), y(b), z(c) {
}
Vector::Vector(float a, float b, float c) : x(a), y(b), z(c) {
}
Vector::Vector(int a, int b, int c) : x(a), y(b), z(c) {
}
void Vector::operator-=(const Vector rhs) {
    x -= rhs.x;
    y -= rhs.y;
    z -= rhs.z;
}
void Vector::operator+=(const Vector rhs) {
    x += rhs.x;
    y += rhs.y;
    z += rhs.z;
}
void Vector::operator*=(const fixed_t rhs) {
    x *= rhs;
    y *= rhs;
    z *= rhs;
}
void Vector::operator*=(const double rhs) {
    fixed_t right = fixed_t(rhs);
    x *= right;
    y *= right;
    z *= right;
}
void Vector::operator*=(const float rhs) {
    fixed_t right = fixed_t(rhs);
    x *= right;
    y *= right;
    z *= right;
}
void Vector::operator*=(const int rhs) {
    x *= rhs;
    y *= rhs;
    z *= rhs;
}
void Vector::operator/=(const fixed_t rhs) {
    x /= rhs;
    y /= rhs;
    z /= rhs;
}
void Vector::operator/=(const double rhs) {
    fixed_t right = fixed_t(rhs);
    x /= right;
    y /= right;
    z /= right;
}
void Vector::operator/=(const float rhs) {
    fixed_t right = fixed_t(rhs);
    x /= right;
    y /= right;
    z /= right;
}
void Vector::operator/=(const int rhs) {
    x /= rhs;
    y /= rhs;
    z /= rhs;
}

Vector Vector::operator-(const Vector rhs) const {
    return Vector(x - rhs.x, y - rhs.y, z - rhs.z);
}
Vector Vector::operator+(const Vector rhs) const {
    return Vector(x + rhs.x, y + rhs.y, z + rhs.z);
}
/*
Vector Vector::operator * (const Vector a) {
   return Vector(y*a.z-z*a.y, z*a.x-x*a.z, x*a.y-y*a.x);
}*/
Vector Vector::operator*(const fixed_t rhs) const {
    return Vector(x * rhs, y * rhs, z * rhs);
}
Vector Vector::operator*(const double rhs) const {
    fixed_t right = fixed_t(rhs);
    return Vector(x * right, y * right, z * right);
}
Vector Vector::operator*(const float rhs) const {
    fixed_t right = fixed_t(rhs);
    return Vector(x * right, y * right, z * right);
}
Vector Vector::operator*(const int rhs) const {
    fixed_t right = fixed_t(rhs);
    return Vector(x * right, y * right, z * right);
}
Vector Vector::operator/(const fixed_t rhs) const {
    return Vector(x / rhs, y / rhs, z / rhs);
}
Vector Vector::operator/(const double rhs) const {
    fixed_t right = fixed_t(rhs);
    return Vector(x / right, y / right, z / right);
}
Vector Vector::operator/(const float rhs) const {
    fixed_t right = fixed_t(rhs);
    return Vector(x / right, y / right, z / right);
}
Vector Vector::operator/(const int rhs) const {
    fixed_t right = fixed_t(rhs);
    return Vector(x / right, y / right, z / right);
}
Vector Vector::cross(const Vector a) const {
    return Vector(y * a.z - z * a.y, z * a.x - x * a.z, x * a.y - y * a.x);
}
fixed_t Vector::mag2() const {
    return x * x + y * y + z * z;
}
fixed_t Vector::mag() const {
    return sqrt(x * x + y * y + z * z);
}
fixed_t Vector::dot(const Vector a) const {
    return x * a.x + y * a.y + z * a.z;
}
Vector Vector::normalize() const {
    fixed_t m = mag();
    return Vector(x / m, y / m, z / m);
}

Vector solveScalers(Vector v1, Vector v2, Vector v3, Vector C) {
    fixed_t denom = v1.z * v2.y * v3.x - v1.y * v2.z * v3.x - v1.z * v2.x * v3.y +
                    v1.x * v2.z * v3.y + v1.y * v2.x * v3.z - v1.x * v2.y * v3.z;
    fixed_t a = C.z * v2.y * v3.x - C.y * v2.z * v3.x - C.z * v2.x * v3.y + C.x * v2.z * v3.y +
                C.y * v2.x * v3.z - C.x * v2.y * v3.z;
    fixed_t b = -C.z * v1.y * v3.x + C.y * v1.z * v3.x + C.z * v1.x * v3.y - C.x * v1.z * v3.y -
                C.y * v1.x * v3.z + C.x * v1.y * v3.z;
    fixed_t c = C.z * v1.y * v2.x - C.y * v1.z * v2.x - C.z * v1.x * v2.y + C.x * v1.z * v2.y +
                C.y * v1.x * v2.z - C.x * v1.y * v2.z;
    return Vector(a / denom, b / denom, c / denom);
}

Ray::Ray(const Vector& po, const Vector& ve) : point(po), vector(ve) {
}
