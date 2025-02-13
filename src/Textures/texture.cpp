#include "texture.h"

fixed_t interpolate(fixed_t a, fixed_t b, fixed_t x) {
    fixed_t f = (fixed_t(1.0) - cos(x * fixed_t(M_PI))) * fixed_t(0.5);
    return a * (fixed_t(1.0) - f) + b * f;
}

Texture::Texture(double am, double op, double ref) : ambient(am), opacity(op), reflection(ref) {
}

fixed_t fix(fixed_t a) {
    a = fmod(a, fixed_t(1));
    if (a < fixed_t(0))
        a += fixed_t(1);
    return a;
}

fixed_t ground(fixed_t e) {
    return (e > fixed_t(1)) ? fixed_t(1) : e;
}
const char* findExtension(const char* ola) {
    const char* end = ola;
    while (*end != '\0')
        end++;
    const char* start = end;
    while (*start != '.' && start > ola)
        start--;
    if (*start == '.')
        start++;
    return start;
}

char lowerCase(char c) {
    if ((c >= 'A') && (c <= 'Z'))
        return c - 'a' + 'A';
    else
        return c;
}

int fpeek(FILE* stream) {
    int c;
    c = fgetc(stream);
    ungetc(c, stream);
    return c;
}

bool extensionEquals(const char* a, const char* knownExt) {
    while (*a != '\0') {
        if (a[0] != knownExt[0])
            return false;
        a++;
        knownExt++;
    }
    return knownExt[0] == '\0';
}
