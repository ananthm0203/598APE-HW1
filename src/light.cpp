
#include "light.h"
#include "camera.h"
#include "shape.h"

Light::Light(const Vector& cente, unsigned char* colo) : center(cente) {
    color = colo;
}

unsigned char* Light::getColor(unsigned char a, unsigned char b, unsigned char c) {
    unsigned char* r = (unsigned char*)malloc(sizeof(unsigned char) * 3);
    r[0]             = a;
    r[1]             = b;
    r[2]             = c;
    return r;
}
