#ifndef __AUTONOMA_H__
#define __AUTONOMA_H__

#include "box.h"
#include "bucketlist.h"
#include "disk.h"
#include "light.h"
#include "shape.h"
#include "sphere.h"
#include "triangle.h"

#include <vector>

#define LOOP_OVER_BUCKET_LIST(bucketList, X)                                                       \
    for (auto it = (bucketList).begin(); !it.at_end(); ++it) {                                     \
        X;                                                                                         \
    }

#define LOOP_OVER_SHAPES(autonoma, X)                                                              \
    do {                                                                                           \
        LOOP_OVER_BUCKET_LIST((autonoma).diskList, X)                                              \
        LOOP_OVER_BUCKET_LIST((autonoma).boxList, X)                                               \
        LOOP_OVER_BUCKET_LIST((autonoma).triangleList, X)                                          \
        LOOP_OVER_BUCKET_LIST((autonoma).sphereList, X)                                            \
    } while (0);

struct Autonoma {
    Camera       camera;
    Texture*     skybox;
    unsigned int depth;
    // Hardcoded caches because speed and easiness
    // Possible to do this parametrically, but becomes very messy
    std::vector<Shape*>     unifiedShapeList;
    BucketList<Disk, 8>     diskList;
    BucketList<Box, 8>      boxList;
    BucketList<Triangle, 8> triangleList;
    BucketList<Sphere, 8>   sphereList;
    BucketList<Plane, 8>    planeList;
    std::vector<Light*>     unifiedLightList;
    Autonoma(const Camera& c);
    Autonoma(const Camera& c, Texture* tex);
    void addLight(Light* l);
    void addBox(Box&& s);
    void addDisk(Disk&& s);
    void addTriangle(Triangle&& s);
    void addSphere(Sphere&& s);
    void addPlane(Plane&& s);
};

#endif