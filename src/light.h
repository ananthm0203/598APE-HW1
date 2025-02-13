#ifndef __LIGHT_H__
#define __LIGHT_H__
#include "Textures/colortexture.h"
#include "Textures/texture.h"
#include "camera.h"
#include "vector.h"
#include <array>
struct Light {
    std::array<unsigned char, 3> color;
    Vector                       center;
    Light(const Vector& cente, unsigned char a, unsigned char b, unsigned char c);
};

#endif
