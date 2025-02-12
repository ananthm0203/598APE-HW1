#ifndef __LIGHT_H__
#define __LIGHT_H__
#include "Textures/colortexture.h"
#include "Textures/texture.h"
#include "camera.h"
#include "vector.h"

struct Light {
    unsigned char* color;
    unsigned char* getColor(unsigned char a, unsigned char b, unsigned char c);
    Vector         center;
    Light(const Vector& cente, unsigned char* colo);
};

#endif
