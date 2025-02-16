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
    double x, y, z;
    Vector(double a, double b, double c) : x(a), y(b), z(c) {}
    inline void operator-=(const Vector& rhs) {
        x -= rhs.x;
        y -= rhs.y;
        z -= rhs.z;
    }
    inline void operator+=(const Vector& rhs) {
        x += rhs.x;
        y += rhs.y;
        z += rhs.z;
    }
    inline void operator*=(const double rhs) {
        x *= rhs;
        y *= rhs;
        z *= rhs;
    }
    inline void operator*=(const float rhs) {
        x *= rhs;
        y *= rhs;
        z *= rhs;
    }
    inline void operator*=(const int rhs) {
        x *= rhs;
        y *= rhs;
        z *= rhs;
    }
    inline void operator/=(const double rhs) {
        x /= rhs;
        y /= rhs;
        z /= rhs;
    }
    inline void operator/=(const float rhs) {
        x /= rhs;
        y /= rhs;
        z /= rhs;
    }
    inline void operator/=(const int rhs) {
        x /= rhs;
        y /= rhs;
        z /= rhs;
    }

    inline Vector operator-(const Vector& rhs) const {
        return Vector(x - rhs.x, y - rhs.y, z - rhs.z);
    }
    inline Vector operator+(const Vector& rhs) const {
        return Vector(x + rhs.x, y + rhs.y, z + rhs.z);
    }

    // inline Vector operator*(const Vector a) const { return Vector(a.x * x, a.y * y, a.z * z); }

    inline Vector operator*(const double rhs) const { return Vector(x * rhs, y * rhs, z * rhs); }
    inline Vector operator*(const float rhs) const { return Vector(x * rhs, y * rhs, z * rhs); }
    inline Vector operator*(const int rhs) const { return Vector(x * rhs, y * rhs, z * rhs); }
    inline Vector operator/(const double rhs) const { return Vector(x / rhs, y / rhs, z / rhs); }
    inline Vector operator/(const float rhs) const { return Vector(x / rhs, y / rhs, z / rhs); }
    inline Vector operator/(const int rhs) const { return Vector(x / rhs, y / rhs, z / rhs); }
    inline Vector cross(const Vector& a) const {
        return Vector(y * a.z - z * a.y, z * a.x - x * a.z, x * a.y - y * a.x);
    }
    inline double mag2() const { return x * x + y * y + z * z; }
    inline double mag() const { return sqrt(x * x + y * y + z * z); }
    inline double dot(const Vector& a) const { return x * a.x + y * a.y + z * a.z; }
    inline Vector normalize() const {
        double m = mag();
        return Vector(x / m, y / m, z / m);
    }

    double operator[](int i) const {
        switch (i) {
            case 0:
                return x;
            case 1:
                return y;
            case 2:
                return z;
            default:
                return 0;
        }
    }
};

inline Vector operator-(const Vector& b) {
    return Vector(-b.x, -b.y, -b.z);
}

inline Vector operator+(const Vector& b) {
    return b;
}

inline Vector operator*(const int a, const Vector& b) {
    return Vector(a * b.x, a * b.y, a * b.z);
}

inline Vector operator*(const double a, const Vector& b) {
    return Vector(a * b.x, a * b.y, a * b.z);
}

inline Vector operator*(const float a, const Vector& b) {
    return Vector(a * b.x, a * b.y, a * b.z);
}

inline Vector operator/(const int a, const Vector& b) {
    return Vector(a / b.x, a / b.y, a / b.z);
}

inline Vector operator/(const double a, const Vector& b) {
    return Vector(a / b.x, a / b.y, a / b.z);
}

inline Vector operator/(const float a, const Vector& b) {
    return Vector(a / b.x, a / b.y, a / b.z);
}

inline std::pair<Vector, double> solveScalers(const Vector& v1, const Vector& v2, const Vector& v3,
                                              const Vector& C) {
    double denom = v1.z * v2.y * v3.x - v1.y * v2.z * v3.x - v1.z * v2.x * v3.y +
                   v1.x * v2.z * v3.y + v1.y * v2.x * v3.z - v1.x * v2.y * v3.z;
    double a = C.z * v2.y * v3.x - C.y * v2.z * v3.x - C.z * v2.x * v3.y + C.x * v2.z * v3.y +
               C.y * v2.x * v3.z - C.x * v2.y * v3.z;
    double b = -C.z * v1.y * v3.x + C.y * v1.z * v3.x + C.z * v1.x * v3.y - C.x * v1.z * v3.y -
               C.y * v1.x * v3.z + C.x * v1.y * v3.z;
    double c = C.z * v1.y * v2.x - C.y * v1.z * v2.x - C.z * v1.x * v2.y + C.x * v1.z * v2.y +
               C.y * v1.x * v2.z - C.x * v1.y * v2.z;
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
