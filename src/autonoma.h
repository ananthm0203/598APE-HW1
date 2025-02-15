#ifndef __AUTONOMA_H__
#define __AUTONOMA_H__

#include "Textures/colortexture.h"
#include "Textures/texture.h"
#include "bvh.h"
#include "camera.h"
#include "light.h"
#include "shape.h"
#include "vector.h"

#include <memory>
#include <vector>

struct Autonoma {
    Camera                              camera;
    Texture*                            skybox;
    unsigned int                        depth;
    std::vector<std::unique_ptr<Shape>> shapes;
    std::vector<Light>                  lights;
    std::unique_ptr<BVH>                bvh;

    Autonoma(const Camera& c);
    Autonoma(const Camera& c, Texture* tex);

    void addShape(std::unique_ptr<Shape>&& s);
    // void removeShape(Shape* s);
    void addLight(Light&& s);
    // void removeLight(Light* s);
};

#endif