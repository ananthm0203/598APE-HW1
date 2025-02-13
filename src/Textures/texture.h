#ifndef __TEXTURE_H__
#define __TEXTURE_H__
#define M_TWO_PI 6.28318530718
#if defined(_MSC_VER)
#define popen _popen
#endif
#include <stdio.h>
#include <stdlib.h>
#define _USE_MATH_DEFINES
#include "../fpm/math.h"
#include "../vector.h"
#include <cmath>
class Texture {
public:
    /** from 0 to 1 **/
    fixed_t opacity, reflection, ambient;
    Texture(double am, double op, double ref);
    virtual void getColor(unsigned char* toFill, fixed_t* am, fixed_t* opacity, fixed_t* reflection,
                          fixed_t x, fixed_t y) = 0;
    Texture*     clone();
};

fixed_t interpolate(fixed_t a, fixed_t b, fixed_t x);

const char* findExtension(const char* s);

fixed_t ground(fixed_t e);

fixed_t fix(fixed_t a);

char lowerCase(char c);

int  fpeek(FILE* f);
bool extensionEquals(const char* a, const char* knownExt);
#endif
