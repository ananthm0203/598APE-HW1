#ifndef __IMAGE_TEXTURE_H__
#define __IMAGE_TEXTURE_H__
#include "colortexture.h"

#define CEIL64(x) (((x) + 63) & (~63))

class ImageTexture : public Texture {
    /** from 0 to 1 **/

    struct ImageData {
        unsigned char* r = nullptr;
        unsigned char* g = nullptr;
        unsigned char* b = nullptr;
        unsigned char* a = nullptr;

        ImageData() = default;
        ImageData(size_t h, size_t w) {
            r = (unsigned char*)aligned_alloc(64, CEIL64(sizeof(unsigned char) * h * w));
            g = (unsigned char*)aligned_alloc(64, CEIL64(sizeof(unsigned char) * h * w));
            b = (unsigned char*)aligned_alloc(64, CEIL64(sizeof(unsigned char) * h * w));
            a = (unsigned char*)aligned_alloc(64, CEIL64(sizeof(unsigned char) * h * w));
        }
        ImageData& operator=(ImageData&& other) noexcept {
            // Check for self-assignment
            if (this != &other) {
                // Free our current resources
                if (r) {
                    free(r);
                    free(g);
                    free(b);
                    free(a);
                }

                // Take ownership of other's resources
                r = other.r;
                g = other.g;
                b = other.b;
                a = other.a;

                // Reset other's pointers to prevent double-free
                other.r = nullptr;
                other.g = nullptr;
                other.b = nullptr;
                other.a = nullptr;
            }

            return *this;
        }
        ~ImageData() {
            free(r);
            free(g);
            free(b);
            free(a);
        }
    };

public:
    unsigned int w, h;
    ImageData    imageData;
    void getColor(unsigned char toFill[3], double& am, double& op, double& ref, double x, double y);
    void getColor(unsigned char toFill[3], double& am, double& op, double& ref, unsigned int x,
                  unsigned int y);
    ImageTexture(unsigned char* data, unsigned int ww, unsigned int hh);
    ImageTexture(unsigned int ww, unsigned int hh);
    ImageTexture(const char* file);
    unsigned char* setColor(unsigned int x, unsigned int y, unsigned char* data);
    unsigned char* setColor(unsigned int x, unsigned int y, unsigned char r, unsigned char g,
                            unsigned char b);
    void           readPPM(FILE* f, const char* file);
    void           maskImage(unsigned char r, unsigned char g, unsigned char b);
    void           maskImage(unsigned char r, unsigned char g, unsigned char b, unsigned char rm,
                             unsigned char gm, unsigned char mb, unsigned char m);
    void           maskImage(unsigned char r, unsigned char g, unsigned char b, unsigned char m);
    void           maskImageU(unsigned char r, unsigned char g, unsigned char b, unsigned char m);
    void           maskImageA(unsigned char r, unsigned char g, unsigned char b, unsigned char m);
    void           maskImage(ColorTexture b);
    void           maskImage(ColorTexture b, unsigned char m);
    void           maskImage(ColorTexture* b);
    void           maskImage(ColorTexture* b, unsigned char m);
    void           maskImageAlpha();
};

#endif
