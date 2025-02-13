#ifndef __VECTOR_H_INCLUDED__
#define __VECTOR_H_INCLUDED__
#define _USE_MATH_DEFINES
#include "fpm/fixed.h"
#include "fpm/math.h"
#include <cmath>
#include <limits.h>
#include <limits>
#include <stdio.h>
#include <stdlib.h>

#define inf 32767 //std::numeric_limits<double>::infinity()

using fixed_t = fpm::fixed<int, long long, 16>;

class Vector {
public:
    fixed_t x, y, z;
    Vector(fixed_t a, fixed_t b, fixed_t c);
    Vector(double a, double b, double c);
    Vector(float a, float b, float c);
    Vector(int a, int b, int c);

    void operator+=(const Vector);
    void operator-=(const Vector);
    void operator*=(const fixed_t);
    void operator*=(const double);
    void operator*=(const float);
    void operator*=(const int);
    void operator/=(const fixed_t);
    void operator/=(const double);
    void operator/=(const float);
    void operator/=(const int);

    Vector operator+(const Vector) const;
    Vector operator-(const Vector) const;
    /*  Vector operator * (const Vector);*/
    Vector  operator*(const fixed_t) const;
    Vector  operator*(const double) const;
    Vector  operator*(const float) const;
    Vector  operator*(const int) const;
    Vector  operator/(const fixed_t) const;
    Vector  operator/(const double) const;
    Vector  operator/(const float) const;
    Vector  operator/(const int) const;
    Vector  cross(const Vector a) const;
    fixed_t mag2() const;
    fixed_t mag() const;
    fixed_t dot(const Vector a) const;
    Vector  normalize() const;

    fixed_t operator[](int i) const {
        switch (i) {
            case 0:
                return x;
            case 1:
                return y;
            case 2:
                return z;
            default:
                return fixed_t(0);
        }
    }
};

class Ray {
public:
    Vector point, vector;
    Ray(const Vector& po, const Vector& ve);
};

inline Vector operator-(const Vector b) {
    return Vector(-b.x, -b.y, -b.z);
}

inline Vector operator+(const Vector b) {
    return b;
}

inline Vector operator*(const fixed_t a, const Vector b) {
    return Vector(a * b.x, a * b.y, a * b.z);
}

inline Vector operator*(const int a, const Vector b) {
    return Vector(a * b.x, a * b.y, a * b.z);
}

inline Vector operator*(const double a, const Vector b) {
    fixed_t right = fixed_t(a);
    return Vector(right * b.x, right * b.y, right * b.z);
}

inline Vector operator*(const float a, const Vector b) {
    fixed_t right = fixed_t(a);
    return Vector(right * b.x, right * b.y, right * b.z);
}

inline Vector operator/(const int a, const Vector b) {
    fixed_t right = fixed_t(a);
    return Vector(right / b.x, right / b.y, right / b.z);
}

inline Vector operator/(const double a, const Vector b) {
    fixed_t right = fixed_t(a);
    return Vector(right / b.x, right / b.y, right / b.z);
}

inline Vector operator/(const float a, const Vector b) {
    fixed_t right = fixed_t(a);
    return Vector(right / b.x, right / b.y, right / b.z);
}

Vector solveScalers(Vector v1, Vector v2, Vector v3, Vector solve);

int print_vector(FILE* stream, const struct printf_info* info, const void* const* args);

int print_vector_arginfo(const struct printf_info* info, size_t n, int* argtypes);

#endif
