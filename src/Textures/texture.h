#ifndef __TEXTURE_H__
#define __TEXTURE_H__
#define M_TWO_PI 6.28318530718
#define M_TWO_PI_INV (1 / M_TWO_PI)
#if defined(_MSC_VER)
#define popen _popen
#endif
#include <stdio.h>
#include <stdlib.h>
#define _USE_MATH_DEFINES
#include <cmath>
#include <iostream>
class Texture {
public:
    /** from 0 to 1 **/
    double opacity, reflection, ambient;
    Texture(double am, double op, double ref);
    virtual void getColor(unsigned char toFill[3], double& am, double& opacity, double& reflection,
                          double x, double y) = 0;
    virtual ~Texture()                        = default;
};

inline double interpolate(double a, double b, double x) {
    double f = (1.0 - cos(x * M_PI)) * 0.5;
    return a * (1.0 - f) + b * f;
}

const char* findExtension(const char* s);

inline double ground(double e) {
    return (e > 1.) ? 1. : e;
}

inline double fix(double a) {
    auto r = a - (long)a;
    if (r < 0)
        r += 1;
    return r;
}

char lowerCase(char c);

int  fpeek(FILE* f);
bool extensionEquals(const char* a, const char* knownExt);
#endif
