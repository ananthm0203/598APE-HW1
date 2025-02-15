//#include<printf.h>
#include "src/Textures/colortexture.h"
#include "src/Textures/imagetexture.h"
#include "src/autonoma.h"
#include "src/box.h"
#include "src/bvh.h"
#include "src/disk.h"
#include "src/light.h"
#include "src/plane.h"
#include "src/shape.h"
#include "src/sphere.h"
#include "src/triangle.h"
#include "src/vector.h"
#include <iostream>
#include <memory>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <vector>

#define TILE_SIZE (4)

using namespace std;

struct TriangleParsed {
    int a;
    int b;
    int c;
};

float tdiff(struct timeval* start, struct timeval* end) {
    return (end->tv_sec - start->tv_sec) + 1e-6 * (end->tv_usec - start->tv_usec);
}

int W = 1000, H = 1000;

unsigned char* DATA = (unsigned char*)malloc(W * H * 3 * sizeof(unsigned char));

unsigned char get(int i, int j, int k) {
    return DATA[3 * (i + j * W) + k];
}
unsigned char* getPos(int i, int j) {
    return &DATA[3 * (i + j * W)];
}
void set(int i, int j, unsigned char r, unsigned char g, unsigned char b) {
    DATA[3 * (i + j * W)]     = r;
    DATA[3 * (i + j * W) + 1] = g;
    DATA[3 * (i + j * W) + 2] = b;
}

void getLight(double* tColor, const Autonoma& aut, const Vector& point, const Vector& norm,
              unsigned char flip) {
    tColor[0] = tColor[1] = tColor[2] = 0.;
    for (const auto& light : aut.lights) {
        double lightColor[3];
        lightColor[0] = light.color[0] / 255.;
        lightColor[1] = light.color[1] / 255.;
        lightColor[2] = light.color[2] / 255.;
        Vector ra     = light.center - point;

        bool   hit  = aut.bvh->getLightIntersection(Ray(point + ra * .01, ra), lightColor);
        double perc = (norm.dot(ra) / (ra.mag() * norm.mag()));
        if (!hit) {
            if (flip && perc < 0)
                perc = -perc;
            if (perc > 0) {
                tColor[0] += perc * (lightColor[0]);
                tColor[1] += perc * (lightColor[0]);
                tColor[2] += perc * (lightColor[0]);
                if (tColor[0] > 1.)
                    tColor[0] = 1.;
                if (tColor[1] > 1.)
                    tColor[1] = 1.;
                if (tColor[2] > 1.)
                    tColor[2] = 1.;
            }
        }
    }
}

void calcColor(unsigned char toFill[3], const Autonoma& c, const Ray& ray, unsigned int depth) {
    if (depth >= c.depth) {
        return;
    }
    const Shape* hitShape = nullptr;
    double       time     = c.bvh->getIntersection(ray, hitShape);

    if (!hitShape || time == inf) {
        double       opacity, reflection, ambient;
        Vector       temp  = ray.vector.normalize();
        const double x     = temp.x;
        const double z     = temp.z;
        const double me    = (temp.y < 0) ? -temp.y : temp.y;
        const double angle = atan2(z, x);
        c.skybox->getColor(toFill, ambient, opacity, reflection, fix(angle * M_TWO_PI_INV),
                           fix(me));
        return;
    }

    Vector intersect = time * ray.vector + ray.point;
    double opacity, reflection, ambient;
    hitShape->getColor(toFill, ambient, opacity, reflection, Ray(intersect, ray.vector), depth);

    double lightData[3];
    getLight(lightData, c, intersect, hitShape->getNormal(intersect), hitShape->reversible());
    toFill[0] = (unsigned char)(toFill[0] * (ambient + lightData[0] * (1 - ambient)));
    toFill[1] = (unsigned char)(toFill[1] * (ambient + lightData[1] * (1 - ambient)));
    toFill[2] = (unsigned char)(toFill[2] * (ambient + lightData[2] * (1 - ambient)));
    if (opacity < 1 - 1e-6 || reflection > 1e-6) {
        unsigned char col[4] = {0, 0, 0, 0};
        if (opacity < 1 - 1e-6) {
            Ray nextRay = Ray(intersect + ray.vector * 1E-4, ray.vector);
            calcColor(col, c, nextRay, depth + 1);
            toFill[0] = (unsigned char)(toFill[0] * opacity + col[0] * (1 - opacity));
            toFill[1] = (unsigned char)(toFill[1] * opacity + col[1] * (1 - opacity));
            toFill[2] = (unsigned char)(toFill[2] * opacity + col[2] * (1 - opacity));
        }
        if (reflection > 1e-6) {
            Vector norm    = hitShape->getNormal(intersect).normalize();
            Vector vec     = ray.vector - 2 * norm * (norm.dot(ray.vector));
            Ray    nextRay = Ray(intersect + vec * 1E-4, vec);
            calcColor(col, c, nextRay, depth + 1);

            toFill[0] = (unsigned char)(toFill[0] * (1 - reflection) + col[0] * (reflection));
            toFill[1] = (unsigned char)(toFill[1] * (1 - reflection) + col[1] * (reflection));
            toFill[2] = (unsigned char)(toFill[2] * (1 - reflection) + col[2] * (reflection));
        }
    }
}

void        refresh(const Autonoma& c) {
#pragma omp parallel for collapse(2) schedule(dynamic)
    for (int ty = 0; ty < H; ty += TILE_SIZE) {
        for (int tx = 0; tx < W; tx += TILE_SIZE) {
            for (int dy = 0; dy < TILE_SIZE; ++dy) {
                for (int dx = 0; dx < TILE_SIZE; ++dx) {
                    int x = tx + dx;
                    int y = ty + dy;
                    if (x < W && y < H) { // Bounds check
                        int    n  = y * W + x;
                        Vector ra = c.camera.forward + ((double)x / W - 0.5) * c.camera.right +
                                    (0.5 - (double)y / H) * c.camera.up;
                        unsigned char toFill[3];
                        calcColor(toFill, c, Ray(c.camera.focus, ra), 0);
                        DATA[3 * n]     = toFill[0];
                        DATA[3 * n + 1] = toFill[1];
                        DATA[3 * n + 2] = toFill[2];
                    }
                }
            }
        }
    }
}

void outputPPM(FILE* f) {
    fprintf(f, "P6 %d %d 255 ", W, H);
    fwrite(DATA, 1, W * H * 3, f);
}

void outputPPM(char* file) {
    FILE* f = fopen(file, "w");
    outputPPM(f);
    fclose(f);
}
void output(char* file) {
    char  command[2000];
    FILE* f;
    snprintf(command, sizeof(command), "magick ppm:- %s", file);
    printf("%s\n", command);
    f = popen(command, "w");
    outputPPM(f);
    pclose(f);
}

int streq(const char* a, const char* b) {
    return strcmp(a, b) == 0;
}

// Similar to fscanf, except ignore empty and comment lines
// Kept as a macro to preserve compiler warnings for mismatch input type
#define lscanf(f, ...)                                                                             \
    ({                                                                                             \
        char   line[1000];                                                                         \
        char*  linePtr = line;                                                                     \
        size_t len     = sizeof(line);                                                             \
        int    retval;                                                                             \
        while ((retval = getline(&linePtr, &len, f)) != EOF) {                                     \
            if (line[0] == '#')                                                                    \
                continue;                                                                          \
            if (line[0] == '\n')                                                                   \
                continue;                                                                          \
            if (line[0] == '\0')                                                                   \
                continue;                                                                          \
            sscanf(line, __VA_ARGS__);                                                             \
            break;                                                                                 \
        }                                                                                          \
        retval;                                                                                    \
    })

Texture* parseTexture(FILE* f, bool allowNull) {
    char texture_type[80];

    if (lscanf(f, "%s", texture_type) == EOF) {
        printf("Found EOF while parsing texture type\n");
        exit(1);
    }
    if (streq(texture_type, "null")) {
        if (allowNull)
            return NULL;
        printf("Null texture not permitted\n");
        exit(1);
    }
    if (streq(texture_type, "color")) {
        int    r, g, b;
        double opacity, reflection, ambient;
        if (lscanf(f, "%d %d %d %lf %lf %lf\n", &r, &g, &b, &opacity, &reflection, &ambient) ==
            EOF) {
            printf("Could not read <r> <g> <b> <opacity> <reflection> <ambient>\n");
            exit(1);
        }
        return new ColorTexture((unsigned char)r, (unsigned char)g, (unsigned char)b, opacity,
                                reflection, ambient);
    }
    if (streq(texture_type, "image")) {
        char image_file[100];
        if (lscanf(f, "%s\n", image_file) == EOF) {
            printf("Could not read <image path>\n");
            exit(1);
        }
        return new ImageTexture(image_file);
    }
    if (streq(texture_type, "maskedimage")) {
        char image_file[100];
        if (lscanf(f, "%s\n", image_file) == EOF) {
            printf("Could not read <image path>\n");
            exit(1);
        }
        ImageTexture* text = new ImageTexture(image_file);
        text->maskImageAlpha();
        return text;
    }
    if (streq(texture_type, "inlineimage")) {
        int    w, h;
        double opacity, reflection, ambient;
        if (lscanf(f, "%d %d %lf %lf %lf\n", &w, &h, &opacity, &reflection, &ambient) == EOF) {
            printf("Could not read <w> <h> <b> <opacity> <reflection> <ambient>\n");
            exit(1);
        }

        ImageTexture* text = new ImageTexture(w, h);
        for (int x = 0; x < w; x++) {
            for (int y = 0; y < h; y++) {
                int r, g, b;
                if (lscanf(f, "%d %d %d\n", &r, &g, &b) == EOF) {
                    printf("Could not read <r> <g> <b>\n");
                    exit(1);
                }
                text->setColor(x, y, r, g, b);
            }
        }
        text->opacity    = opacity;
        text->reflection = reflection;
        text->ambient    = ambient;
        return text;
    }

    printf("Unknown texture type \"%s\"\n", texture_type);
    exit(1);
}

std::vector<Vector> getVectors(FILE* f, int len) {
    std::vector<Vector> vec(len, Vector(0, 0, 0));
    float               x, y, z;
    for (int i = 0; i < len; i++) {
        if (fscanf(f, "%f %f %f\n", &x, &y, &z) == EOF) {
            printf("Failed to read vectors\n");
            exit(1);
        }
        vec[i] = Vector(x, y, z);
    }
    return vec;
}
std::vector<TriangleParsed> getTriangles(FILE* f, int len) {
    std::vector<TriangleParsed> vec(len);
    for (int i = 0; i < len; i++) {
        if (fscanf(f, "%d %d %d\n", &vec[i].a, &vec[i].b, &vec[i].c) == EOF) {
            printf("Failed to read triangles\n");
            exit(1);
        }
    }
    return vec;
}

Autonoma createInputs(const char* inputFile) {
    double   camera_x   = 0;
    double   camera_y   = 2;
    double   camera_z   = 0;
    double   yaw        = 0;
    double   pitch      = 0;
    double   roll       = 0;
    Texture* background = NULL;

    FILE* f = NULL;
    if (inputFile) {
        f = fopen(inputFile, "r");
        if (!f) {
            printf("Could not open input file %s\n", inputFile);
            exit(1);
        }
        if (lscanf(f, "%lf %lf %lf %lf %lf %lf\n", &camera_x, &camera_y, &camera_z, &yaw, &pitch,
                   &roll) == EOF) {
            printf("Could not read <camera_x> <camera_y> <camera_z> <yaw> <pitch> "
                   "<roll>\n");
            exit(1);
        }
        background = parseTexture(f, false);
    }
    if (!background) {
        const char* texture_path = "images/skybox.jpg";
        background               = new ImageTexture(texture_path);
    }
    Autonoma MAIN_DATA(Camera(Vector(camera_x, camera_y, camera_z), yaw, pitch, roll), background);

    std::vector<Shape*> shapes;
    if (f) {
        char object_type[80];
        while (lscanf(f, "%s", object_type) != EOF) {
            if (streq(object_type, "light")) {
                double light_x, light_y, light_z;
                int    color_r, color_g, color_b;
                if (lscanf(f, "%lf %lf %lf %d %d %d\n", &light_x, &light_y, &light_z, &color_r,
                           &color_g, &color_b) == EOF) {
                    printf("Could not read <light_x> <light_y> <light_z> <color_r> "
                           "<color_g> <color_b>\n");
                    exit(1);
                }
                Light light(Vector(light_x, light_y, light_z), color_r, color_g, color_b);
                MAIN_DATA.addLight(std::move(light));
            } else if (streq(object_type, "plane")) {
                double plane_x, plane_y, plane_z;
                double yaw, pitch, roll;
                double tx, ty;
                if (lscanf(f, "%lf %lf %lf %lf %lf %lf %lf %lf\n", &plane_x, &plane_y, &plane_z,
                           &yaw, &pitch, &roll, &tx, &ty) == EOF) {
                    printf("Could not read <plane_x> <plane_y> <plane_z> <yaw> <pitch> "
                           "<roll> <tx> <ty>\n");
                    exit(1);
                }
                Texture* texture = parseTexture(f, false);
                auto     shape = std::make_unique<Plane>(Vector(plane_x, plane_y, plane_z), texture,
                                                     yaw, pitch, roll, tx, ty);
                shape->normalMap = parseTexture(f, true);
                MAIN_DATA.addShape(std::move(shape));
            } else if (streq(object_type, "disk")) {
                double disk_x, disk_y, disk_z;
                double yaw, pitch, roll;
                double tx, ty;
                if (lscanf(f, "%lf %lf %lf %lf %lf %lf %lf %lf\n", &disk_x, &disk_y, &disk_z, &yaw,
                           &pitch, &roll, &tx, &ty) == EOF) {
                    printf("Could not read <disk_x> <disk_y> <disk_z> <yaw> <pitch> "
                           "<roll> <tx> <ty>\n");
                    exit(1);
                }
                Texture* texture = parseTexture(f, false);
                auto shape = std::make_unique<Disk>(Vector(disk_x, disk_y, disk_z), texture, yaw,
                                                    pitch, roll, tx, ty);
                shape->normalMap = parseTexture(f, true);
                MAIN_DATA.addShape(std::move(shape));
            } else if (streq(object_type, "box")) {
                double box_x, box_y, box_z;
                double yaw, pitch, roll;
                double tx, ty;
                if (lscanf(f, "%lf %lf %lf %lf %lf %lf %lf %lf\n", &box_x, &box_y, &box_z, &yaw,
                           &pitch, &roll, &tx, &ty) == EOF) {
                    printf("Could not read <box_x> <box_y> <box_z> <yaw> <pitch> <roll> "
                           "<tx> <ty>\n");
                    exit(1);
                }
                Texture* texture = parseTexture(f, false);
                auto shape = std::make_unique<Box>(Vector(box_x, box_y, box_z), texture, yaw, pitch,
                                                   roll, tx, ty);
                shape->normalMap = parseTexture(f, true);
                MAIN_DATA.addShape(std::move(shape));
            } else if (streq(object_type, "triangle")) {
                double x1, y1, z1;
                double x2, y2, z2;
                double x3, y3, z3;
                if (lscanf(f, "%lf %lf %lf %lf %lf %lf %lf %lf %lf\n", &x1, &y1, &z1, &x2, &y2, &z2,
                           &x3, &y3, &z3) == EOF) {
                    printf("Could not read <x1> <y1> <z1> <x2> <y2> <z2> <x3> <y3> <z3>\n");
                    exit(1);
                }
                Texture* texture = parseTexture(f, false);
                auto     shape = std::make_unique<Triangle>(Vector(x1, y1, z1), Vector(x2, y2, z2),
                                                        Vector(x3, y3, z3), texture);
                MAIN_DATA.addShape(std::move(shape));
                shape->normalMap = parseTexture(f, true);
            } else if (streq(object_type, "sphere")) {
                double sphere_x, sphere_y, sphere_z;
                double yaw, pitch, roll;
                double radius;
                if (lscanf(f, "%lf %lf %lf %lf %lf %lf %lf\n", &sphere_x, &sphere_y, &sphere_z,
                           &yaw, &pitch, &roll, &radius) == EOF) {
                    printf("Could not read <sphere_x> <sphere_y> <sphere_z> <yaw> "
                           "<pitch> <roll> <radius>\n");
                    exit(1);
                }
                Texture* texture = parseTexture(f, false);
                auto shape = std::make_unique<Sphere>(Vector(sphere_x, sphere_y, sphere_z), texture,
                                                      yaw, pitch, roll, radius);
                shape->normalMap = parseTexture(f, true);
                MAIN_DATA.addShape(std::move(shape));
            } else if (streq(object_type, "mesh")) {
                char   point_filepath[100];
                char   poly_filepath[100];
                int    num_points;
                int    num_polygons;
                double off_x;
                double off_y;
                double off_z;
                if (lscanf(f, "%s %d %s %d %lf %lf %lf\n", point_filepath, &num_points,
                           poly_filepath, &num_polygons, &off_x, &off_y, &off_z) == EOF) {
                    printf("Could not read <point filepath> <num_points> <polygons "
                           "filepath> <num_polygons> <off_x> <off_y> <off_z>\n");
                    exit(1);
                }
                Texture* texture   = parseTexture(f, false);
                Texture* normalMap = parseTexture(f, true);

                FILE *vectors = fopen(point_filepath, "r"), *triangles = fopen(poly_filepath, "r");
                if (!vectors) {
                    printf("Could not open point file %s\n", point_filepath);
                    exit(1);
                }
                if (!triangles) {
                    printf("Could not open triangles file %s\n", poly_filepath);
                    exit(1);
                }
                std::vector<Vector> points = getVectors(vectors, num_points);
                fclose(vectors);
                std::vector<TriangleParsed> polys = getTriangles(triangles, num_polygons);
                fclose(triangles);
                Vector offset(off_x, off_y, off_z);
                for (int i = 0; i < num_polygons; i++) {
                    auto shape       = std::make_unique<Triangle>(points[polys[i].a] + offset,
                                                            points[polys[i].b] + offset,
                                                            points[polys[i].c] + offset, texture);
                    shape->normalMap = normalMap;
                    MAIN_DATA.addShape(std::move(shape));
                }
            } else {
                printf("Unknown object type %s\n", object_type);
                exit(1);
            }
        }
    }

    MAIN_DATA.bvh = std::make_unique<BVH>(MAIN_DATA.shapes);

    return MAIN_DATA;
}

double identity(double x, double from, double to) {
    return (1 - x) * from + x * to;
}
double expfn(double x, double from, double to) {
    return (to - from) * exp(10 * x) / exp(10) + from;
}
double sinfn(double x, double from, double to) {
    return (to - from) * sin(x * 6.28) + from;
}
double cosfn(double x, double from, double to) {
    return (to - from) * cos(x * 6.28) + from;
}

void setFrame(const char* animateFile, Autonoma& MAIN_DATA, int frame, int frameLen) {
    if (animateFile) {
        char   object_type[80];
        char   transition_type[80];
        int    obj_num;
        char   field_type[80];
        double from;
        double to;
        FILE*  f = fopen(animateFile, "r");
        while (lscanf(f, "%s %s %d %s %lf %lf", transition_type, object_type, &obj_num, field_type,
                      &from, &to) != EOF) {
            double (*func)(double, double, double);
            if (streq(transition_type, "linear")) {
                func = identity;
            } else if (streq(transition_type, "exp")) {
                func = expfn;
            } else if (streq(transition_type, "sin")) {
                func = sinfn;
            } else if (streq(transition_type, "cos")) {
                func = cosfn;
            } else {
                printf("Unknown transition type %s, expected one of linear, exp, cos, "
                       "or sin\n",
                       transition_type);
                exit(1);
            }
            double result = func((double)frame / frameLen, from, to);

            if (streq(object_type, "camera")) {
                if (streq(field_type, "yaw")) {
                    MAIN_DATA.camera.setYaw(result);
                } else if (streq(field_type, "pitch")) {
                    MAIN_DATA.camera.setPitch(result);
                } else if (streq(field_type, "roll")) {
                    MAIN_DATA.camera.setRoll(result);
                } else if (streq(field_type, "x")) {
                    MAIN_DATA.camera.focus.x = result;
                } else if (streq(field_type, "y")) {
                    MAIN_DATA.camera.focus.y = result;
                } else if (streq(field_type, "z")) {
                    MAIN_DATA.camera.focus.z = result;
                } else {
                    printf("Unknown camera field_type %s, expected one of yaw, pitch, "
                           "roll, x, y, z\n",
                           field_type);
                    exit(1);
                }
            } else if (streq(object_type, "object")) {
                auto& shape = MAIN_DATA.shapes[obj_num];

                if (streq(field_type, "yaw")) {
                    shape->setYaw(result);
                } else if (streq(field_type, "pitch")) {
                    shape->setPitch(result);
                } else if (streq(field_type, "roll")) {
                    shape->setRoll(result);
                } else if (streq(field_type, "textureX")) {
                    shape->textureX     = result;
                    shape->textureX_inv = 1 / result;
                } else if (streq(field_type, "textureY")) {
                    shape->textureY     = result;
                    shape->textureY_inv = 1 / result;
                } else if (streq(field_type, "mapX")) {
                    shape->mapX     = result;
                    shape->mapX_inv = 1 / result;
                } else if (streq(field_type, "mapY")) {
                    shape->mapY     = result;
                    shape->mapY_inv = 1 / result;
                } else if (streq(field_type, "mapOffX")) {
                    shape->mapOffX = result;
                } else if (streq(field_type, "mapOffY")) {
                    shape->mapOffY = result;
                } else {
                    printf("Unknown shape field_type %s, expected one of yaw, pitch, "
                           "roll, textureX, textureY, mapX, mapY, mapOffX, mapOffY\n",
                           field_type);
                    exit(1);
                }
            } else {
                printf("Unknown object_type %s, expected one of camera, object\n", field_type);
                exit(1);
            }
        }
    }

    refresh(MAIN_DATA);
}

int main(int argc, const char** argv) {
    int         frameLen    = 1;
    const char* inFile      = NULL;
    const char* animateFile = NULL;
    const char* outFile     = NULL;
    bool        toMovie     = true;
    bool        png         = true;
    for (int i = 1; i < argc; i++) {
        if (streq(argv[i], "-H")) {
            if (i + 1 >= argc) {
                printf("Error -H option must be followed by an integer height");
            }
            H = atoi(argv[i + 1]);
            i++;
            continue;
        }
        if (streq(argv[i], "-W")) {
            if (i + 1 >= argc) {
                printf("Error -W option must be followed by an integer width");
            }
            W = atoi(argv[i + 1]);
            i++;
            continue;
        }
        if (streq(argv[i], "-F")) {
            if (i + 1 >= argc) {
                printf("Error -F option must be followed by an integer number of frames");
            }
            frameLen = atoi(argv[i + 1]);
            i++;
            continue;
        }
        if (streq(argv[i], "-o")) {
            if (i + 1 >= argc) {
                printf("Error -o option must be followed by an output file path");
            }
            outFile = argv[i + 1];
            i++;
            continue;
        }
        if (streq(argv[i], "-i")) {
            if (i + 1 >= argc) {
                printf("Error -i option must be followed by an input file path");
            }
            inFile = argv[i + 1];
            i++;
            continue;
        }
        if (streq(argv[i], "-a")) {
            if (i + 1 >= argc) {
                printf("Error -a option must be followed by an animation input file path");
            }
            animateFile = argv[i + 1];
            i++;
            continue;
        }
        if (streq(argv[i], "--movie")) {
            toMovie = true;
            continue;
        }
        if (streq(argv[i], "--no-movie")) {
            toMovie = false;
            continue;
        }
        if (streq(argv[i], "--ppm")) {
            png = false;
            continue;
        }
        if (streq(argv[i], "--png")) {
            png = true;
            continue;
        }
        if (streq(argv[i], "--help")) {
            printf("Usage %s [-H <height>] [-W <width>] [-F <framecount>] [--movie] "
                   "[--no-movie] [--png] [--ppm] [--help] [-o <outfile>] [-i "
                   "<infile>]\n",
                   argv[0]);
            return 0;
        }
        printf("Unknown option %s, look at %s --help\n", argv[i], argv[0]);
        return 1;
    }

    if (outFile == NULL) {
        if (frameLen == 1) {
            if (png) {
                outFile = "output/output.png";
            } else {
                outFile = "output/output.ppm";
            }
        } else {
            outFile = "output/output.mp4";
        }
    }

    Autonoma MAIN_DATA = createInputs(inFile);

    int  frame;
    char command[200];

    struct timeval start, end;
    gettimeofday(&start, NULL);
    for (frame = 0; frame < frameLen; frame++) {
        setFrame(animateFile, MAIN_DATA, frame, frameLen);
        if (frameLen == 1) {
            snprintf(command, sizeof(command), "%s", outFile);
        } else if (png) {
            snprintf(command, sizeof(command), "%s.tmp.%07d.png", outFile, frame);
        } else {
            snprintf(command, sizeof(command), "%s.tmp.%07d.ppm", outFile, frame);
        }
        if (png) {
            output(command);
        } else {
            outputPPM(command);
        }
        printf("Done Frame %7d|\n", frame);
    }

    gettimeofday(&end, NULL);
    printf("Total time to create images=%0.6f seconds\n", tdiff(&start, &end));

    if (frameLen > 1 && toMovie) {
        if (png) {
            snprintf(command, sizeof(command),
                     "ffmpeg -y -r 24 -i %s.tmp.%%07d.png -vcodec ffv1 %s.tmp.avi && "
                     "ffmpeg -y -i %s.tmp.avi -c:v libx264 -preset veryslow -qp 0 -r "
                     "24 %s",
                     outFile, outFile, outFile, outFile);
        } else {
            snprintf(command, sizeof(command),
                     "ffmpeg -y -r 24 -i %s.tmp.%%07d.ppm -vcodec ffv1 %s.tmp.avi && "
                     "ffmpeg -y -i %s.tmp.avi -c:v libx264 -preset veryslow -qp 0 -r "
                     "24 %s",
                     outFile, outFile, outFile, outFile);
        }
        return system(command);
    }
    return 0;
}
