#ifndef __AUTONOMA_H__
#define __AUTONOMA_H__

#include "light.h"
#include "shape.h"
#include "disk.h"
#include "box.h"
#include "triangle.h"
#include "sphere.h"

#include <vector>

struct Autonoma {
    Camera              camera;
    Texture*            skybox;
    unsigned int        depth;
    // Hardcoded caches because speed and easiness
    // Possible to do this parametrically, but becomes very messy
    std::vector<Shape*> unifiedShapeList;
    std::vector<Light*> unifiedLightList;
    Autonoma(const Camera& c);
    Autonoma(const Camera& c, Texture* tex);
    void addLight(Light* l);
    void addBox(Box* s);
    void addDisk(Disk* s);
    void addTriangle(Triangle* s);
    void addSphere(Sphere* s);
    void addPlane(Plane* s);
};

#endif