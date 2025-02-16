#include "imagetexture.h"

void ImageTexture::getColor(unsigned char toFill[3], double& am, double& op, double& ref, double x,
                            double y) {
    int xi  = static_cast<int>(x * w);
    int yi  = static_cast<int>(y * h);
    int idx = xi + yi * w;

    toFill[0] = imageData.r[idx];
    toFill[1] = imageData.g[idx];
    toFill[2] = imageData.b[idx];
    op        = imageData.a[idx] * opacity / 255.;
    ref       = reflection;
    am        = ambient;
}

void ImageTexture::getColor(unsigned char toFill[3], double& am, double& op, double& ref,
                            unsigned int x, unsigned int y) {
    int idx   = x + y * w;
    toFill[0] = imageData.r[idx];
    toFill[1] = imageData.g[idx];
    toFill[2] = imageData.b[idx];
    op        = imageData.a[idx] * opacity / 255.;
    ref       = reflection;
    am        = ambient;
}

void ImageTexture::maskImageAlpha() {
    int x, y;
    for (y = h - 1; y >= 0; y--) {
        for (x = 0; x < w; x++) {
            int idx          = x + y * w;
            imageData.a[idx] = imageData.r[idx];
            imageData.r[idx] = 255;
            imageData.g[idx] = 255;
            imageData.b[idx] = 255;
        }
    }
}

void ImageTexture::maskImage(unsigned char r, unsigned char g, unsigned char b, unsigned char rm,
                             unsigned char gm, unsigned char bm, unsigned char m) {
    int x, y;
    for (y = h - 1; y >= 0; y--) {
        for (x = 0; x < w; x++) {
            int idx = x + y * w;
            if (imageData.r[idx] == r && imageData.g[idx] == g && imageData.b[idx] == b) {
                imageData.r[idx] = rm;
                imageData.g[idx] = gm;
                imageData.b[idx] = bm;
                imageData.a[idx] = m;
            }
        }
    }
}

void ImageTexture::maskImageA(unsigned char r, unsigned char g, unsigned char b, unsigned char m) {
    int x, y;
    for (y = h - 1; y >= 0; y--) {
        for (x = 0; x < w; x++) {
            int idx = x + y * w;
            if (imageData.r[idx] >= r && imageData.g[idx] >= g && imageData.b[idx] >= b) {
                imageData.a[idx] = m;
            }
        }
    }
}

void ImageTexture::maskImageU(unsigned char r, unsigned char g, unsigned char b, unsigned char m) {
    int x, y;
    for (y = h - 1; y >= 0; y--) {
        for (x = 0; x < w; x++) {
            int idx = x + y * w;
            if (imageData.r[idx] <= r && imageData.g[idx] <= g && imageData.b[idx] <= b) {
                imageData.a[idx] = m;
            }
        }
    }
}

unsigned char* ImageTexture::setColor(unsigned int x, unsigned int y, unsigned char* data) {
    int idx          = x + y * w;
    imageData.r[idx] = data[0];
    imageData.g[idx] = data[1];
    imageData.b[idx] = data[2];
    return &imageData.r[idx];
}

unsigned char* ImageTexture::setColor(unsigned int x, unsigned int y, unsigned char r,
                                      unsigned char g, unsigned char b) {
    int idx          = x + y * w;
    imageData.r[idx] = r;
    imageData.g[idx] = g;
    imageData.b[idx] = b;
    return &imageData.r[idx];
}

ImageTexture::ImageTexture(unsigned int ww, unsigned int hh)
    : Texture(.3, 1., 0.), w(ww), h(hh), imageData(hh, ww) {
    // Initialize alpha channel to 255
    for (size_t i = 0; i < w * h; i++) {
        imageData.a[i] = 255;
    }
}

ImageTexture::ImageTexture(unsigned char* data, unsigned int ww, unsigned int hh)
    : Texture(.3, 1., 0.), w(ww), h(hh), imageData(hh, ww) {
    // Copy data to individual channels
    for (size_t i = 0; i < w * h; i++) {
        imageData.r[i] = data[i * 4];
        imageData.g[i] = data[i * 4 + 1];
        imageData.b[i] = data[i * 4 + 2];
        imageData.a[i] = data[i * 4 + 3];
    }
}

void ImageTexture::readPPM(FILE* f, const char* file) {
    if (f == NULL) {
        printf("File loading error!!! %s\n", file);
        exit(0);
    }

    int fchar = getc(f);
    if (fchar != 'P') {
        printf("Header error --1st char not 'P' %s %c %d\n", file, fchar, fchar);
        exit(0);
    }

    int id = getc(f);
    while (fpeek(f) == '#') {
        int rr;
        do {
            rr = getc(f);
        } while (rr != '\n');
    }

    int x = 0, y = 0;
    if (id == '6') {
        int r = fscanf(f, "%u %u", &w, &h);
        if (r < 2) {
            printf("Could not find width / height -6- %d %d %d\n", r, w, h);
            exit(0);
        }

        int ne = fpeek(f);
        while (ne == ' ' || ne == '\n' || ne == '\t') {
            getc(f);
            ne = fpeek(f);
        }

        int d;
        r = fscanf(f, "%u", &d);
        if ((r < 1) || (d != 255)) {
            printf("Illegal max size %u %u", d, r);
            exit(0);
        }

        imageData = ImageData(h, w);

        for (y = h - 1; y >= 0; y--) {
            for (x = 0; x < w; x++) {
                int idx          = x + y * w;
                imageData.r[idx] = getc(f);
                imageData.g[idx] = getc(f);
                imageData.b[idx] = getc(f);
                imageData.a[idx] = 255;
            }
        }
    } else if (id == '3') {
        // Handle ASCII PPM format
        int ne = fpeek(f);
        while (ne == ' ' || ne == '\n' || ne == '\t') {
            getc(f);
            ne = fpeek(f);
        }

        int r = fscanf(f, "%u %u", &w, &h);
        if (r < 2) {
            printf("Could not find width / height -3- %d %d %d\n", r, w, h);
            exit(0);
        }

        int d;
        r = fscanf(f, "%u", &d);
        if ((r < 1) || (d != 255)) {
            printf("Illegal max size %d %d %d %d", d, r, w, d);
            exit(0);
        }

        fseek(f, 1, SEEK_CUR); /* skip one byte, should be whitespace */
        id = getc(f);

        if (fpeek(f) == '#') {
            int rr;
            do {
                rr = getc(f);
            } while (rr != '\n');
        }

        imageData = ImageData(h, w);

        for (y = h - 1; y >= 0; y--) {
            for (x = 0; x < w; x++) {
                int          idx = x + y * w;
                unsigned int tmp;

                if (fscanf(f, "%u", &tmp) == EOF) {
                    printf("Could not read byte\n");
                    exit(1);
                }
                imageData.r[idx] = static_cast<unsigned char>(tmp);

                if (fscanf(f, "%u", &tmp) == EOF) {
                    printf("Could not read byte\n");
                    exit(1);
                }
                imageData.g[idx] = static_cast<unsigned char>(tmp);

                if (fscanf(f, "%u", &tmp) == EOF) {
                    printf("Could not read byte\n");
                    exit(1);
                }
                imageData.b[idx] = static_cast<unsigned char>(tmp);

                imageData.a[idx] = 255;
            }
        }
    } else {
        printf("Unknown PPM FILE!?\n");
        exit(0);
    }
}

ImageTexture::ImageTexture(const char* file) : Texture(.3, 1., 0.) {
    const char* ext = findExtension(file);
    if (extensionEquals(ext, "ppm")) {
        FILE* f = fopen(file, "r");
        readPPM(f, file);
        fclose(f);
    } else {
        char command[2000];
        snprintf(command, sizeof(command), "magick %s ppm:-", file);
        FILE* f = popen(command, "r");
        readPPM(f, file);
        pclose(f);
    }
}