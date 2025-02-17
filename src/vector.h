#ifndef __VECTOR_H_INCLUDED__
#define __VECTOR_H_INCLUDED__
#define _USE_MATH_DEFINES
#include <cmath>
#include <limits.h>
#include <limits>
#include <stdio.h>
#include <stdlib.h>

#define inf std::numeric_limits<double>::infinity()

class Vector {
public:
    alignas(32) double d[3]; // Align for AVX

    Vector(double a, double b, double c) {
        d[0] = a;
        d[1] = b;
        d[2] = c;
    }

    double&       x() { return d[0]; }
    double&       y() { return d[1]; }
    double&       z() { return d[2]; }
    const double& x() const { return d[0]; }
    const double& y() const { return d[1]; }
    const double& z() const { return d[2]; }

    inline void operator-=(const Vector& rhs) {
        d[0] -= rhs.x();
        d[1] -= rhs.y();
        d[2] -= rhs.z();
    }
    inline void operator+=(const Vector& rhs) {
        d[0] += rhs.x();
        d[1] += rhs.y();
        d[2] += rhs.z();
    }
    inline void operator*=(const double rhs) {
        d[0] *= rhs;
        d[1] *= rhs;
        d[2] *= rhs;
    }
    inline void operator*=(const float rhs) {
        d[0] *= rhs;
        d[1] *= rhs;
        d[2] *= rhs;
    }
    inline void operator*=(const int rhs) {
        d[0] *= rhs;
        d[1] *= rhs;
        d[2] *= rhs;
    }
    inline void operator/=(const double rhs) {
        d[0] /= rhs;
        d[1] /= rhs;
        d[2] /= rhs;
    }
    inline void operator/=(const float rhs) {
        d[0] /= rhs;
        d[1] /= rhs;
        d[2] /= rhs;
    }
    inline void operator/=(const int rhs) {
        d[0] /= rhs;
        d[1] /= rhs;
        d[2] /= rhs;
    }

    inline Vector operator-(const Vector& rhs) const {
        return Vector(d[0] - rhs.x(), d[1] - rhs.y(), d[2] - rhs.z());
    }
    inline Vector operator+(const Vector& rhs) const {
        return Vector(d[0] + rhs.x(), d[1] + rhs.y(), d[2] + rhs.z());
    }

    // inline Vector operator*(const Vector a) const { return Vector(a.x * x, a.y * y, a.z * z); }

    inline Vector operator*(const double rhs) const {
        return Vector(d[0] * rhs, d[1] * rhs, d[2] * rhs);
    }
    inline Vector operator*(const float rhs) const {
        return Vector(d[0] * rhs, d[1] * rhs, d[2] * rhs);
    }
    inline Vector operator*(const int rhs) const {
        return Vector(d[0] * rhs, d[1] * rhs, d[2] * rhs);
    }
    inline Vector operator/(const double rhs) const {
        return Vector(d[0] / rhs, d[1] / rhs, d[2] / rhs);
    }
    inline Vector operator/(const float rhs) const {
        return Vector(d[0] / rhs, d[1] / rhs, d[2] / rhs);
    }
    inline Vector operator/(const int rhs) const {
        return Vector(d[0] / rhs, d[1] / rhs, d[2] / rhs);
    }
    inline Vector cross(const Vector& a) const {
        return Vector(d[1] * a.z() - d[2] * a.y(), d[2] * a.x() - d[0] * a.z(),
                      d[0] * a.y() - d[1] * a.x());
    }
    inline double mag2() const { return d[0] * d[0] + d[1] * d[1] + d[2] * d[2]; }
    inline double mag() const { return sqrt(d[0] * d[0] + d[1] * d[1] + d[2] * d[2]); }
    inline double dot(const Vector& a) const { return d[0] * a.x() + d[1] * a.y() + d[2] * a.z(); }
    inline Vector normalize() const {
        double m = mag();
        return Vector(d[0] / m, d[1] / m, d[2] / m);
    }

    double operator[](int i) const {
        switch (i) {
            case 0:
                return x();
            case 1:
                return y();
            case 2:
                return z();
            default:
                return 0;
        }
    }
};

inline Vector operator-(const Vector& b) {
    return Vector(-b.x(), -b.y(), -b.z());
}

inline Vector operator+(const Vector& b) {
    return b;
}

inline Vector operator*(const int a, const Vector& b) {
    return Vector(a * b.d[0], a * b.d[1], a * b.d[2]);
}

inline Vector operator*(const double a, const Vector& b) {
    return Vector(a * b.d[0], a * b.d[1], a * b.d[2]);
}

inline Vector operator*(const float a, const Vector& b) {
    return Vector(a * b.d[0], a * b.d[1], a * b.d[2]);
}

inline Vector operator/(const int a, const Vector& b) {
    return Vector(a / b.d[0], a / b.d[1], a / b.d[2]);
}

inline Vector operator/(const double a, const Vector& b) {
    return Vector(a / b.d[0], a / b.d[1], a / b.d[2]);
}

inline Vector operator/(const float a, const Vector& b) {
    return Vector(a / b.d[0], a / b.d[1], a / b.d[2]);
}

inline std::pair<Vector, double> solveScalers(const Vector& v1, const Vector& v2, const Vector& v3,
                                              const Vector& C) {
    double denom = v1.d[2] * v2.d[1] * v3.d[0] - v1.d[1] * v2.d[2] * v3.d[0] -
                   v1.d[2] * v2.d[0] * v3.d[1] + v1.d[0] * v2.d[2] * v3.d[1] +
                   v1.d[1] * v2.d[0] * v3.d[2] - v1.d[0] * v2.d[1] * v3.d[2];
    double a = C.d[2] * v2.d[1] * v3.d[0] - C.d[1] * v2.d[2] * v3.d[0] -
               C.d[2] * v2.d[0] * v3.d[1] + C.d[0] * v2.d[2] * v3.d[1] +
               C.d[1] * v2.d[0] * v3.d[2] - C.d[0] * v2.d[1] * v3.d[2];
    double b = -C.d[2] * v1.d[1] * v3.d[0] + C.d[1] * v1.d[2] * v3.d[0] +
               C.d[2] * v1.d[0] * v3.d[1] - C.d[0] * v1.d[2] * v3.d[1] -
               C.d[1] * v1.d[0] * v3.d[2] + C.d[0] * v1.d[1] * v3.d[2];
    double c = C.d[2] * v1.d[1] * v2.d[0] - C.d[1] * v1.d[2] * v2.d[0] -
               C.d[2] * v1.d[0] * v2.d[1] + C.d[0] * v1.d[2] * v2.d[1] +
               C.d[1] * v1.d[0] * v2.d[2] - C.d[0] * v1.d[1] * v2.d[2];
    return std::make_pair(Vector(a, b, c), denom);
}

class Ray {
public:
    Vector point, vector, inv_vector;
    Ray(const Vector& po, const Vector& ve) : point(po), vector(ve), inv_vector(1 / ve) {}
};

int print_vector(FILE* stream, const struct printf_info* info, const void* const* args);

int print_vector_arginfo(const struct printf_info* info, size_t n, int* argtypes);

#endif
