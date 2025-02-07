#include "autonoma.h"

Autonoma::Autonoma(const Camera& c) : camera(c) {
    depth  = 10;
    skybox = BLACK;
}

Autonoma::Autonoma(const Camera& c, Texture* tex) : camera(c) {
    depth  = 10;
    skybox = tex;
}

void Autonoma::addLight(Light* l) {
    unifiedLightList.push_back(l);
}

void Autonoma::addBox(Box&& s) {
    Box* list_ptr = boxList.add(std::move(s));
    unifiedShapeList.push_back(list_ptr);
}

void Autonoma::addDisk(Disk&& s) {
    Disk* list_ptr = diskList.add(std::move(s));
    unifiedShapeList.push_back(list_ptr);
}

void Autonoma::addTriangle(Triangle&& s) {
    Triangle* list_ptr = triangleList.add(std::move(s));
    unifiedShapeList.push_back(list_ptr);
}

void Autonoma::addSphere(Sphere&& s) {
    Sphere* list_ptr = sphereList.add(std::move(s));
    unifiedShapeList.push_back(list_ptr);
}

void Autonoma::addPlane(Plane&& s) {
    Plane* list_ptr = planeList.add(std::move(s));
    unifiedShapeList.push_back(list_ptr);
}