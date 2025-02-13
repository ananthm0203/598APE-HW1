
#include "light.h"

Light::Light(const Vector& cente, unsigned char a, unsigned char b, unsigned char c)
    : center(cente), color{a, b, c} {
}
