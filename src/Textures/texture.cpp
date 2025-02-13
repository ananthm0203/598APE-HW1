#include "texture.h"

Texture::Texture(double am, double op, double ref) : ambient(am), opacity(op), reflection(ref) {
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
