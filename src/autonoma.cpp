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

void Autonoma::addBox(Box* list_ptr) {
	// Box* list_ptr = boxList.add(std::move(s));
	unifiedShapeList.push_back(list_ptr);
}

void Autonoma::addDisk(Disk* list_ptr) {
	// Disk* list_ptr = diskList.add(std::move(s));
	unifiedShapeList.push_back(list_ptr);
}

void Autonoma::addTriangle(Triangle* list_ptr) {
	// Triangle* list_ptr = triangleList.add(std::move(s));
	unifiedShapeList.push_back(list_ptr);
}

void Autonoma::addSphere(Sphere* list_ptr) {
	// Sphere* list_ptr = sphereList.add(std::move(s));
	unifiedShapeList.push_back(list_ptr);
}

void Autonoma::addPlane(Plane* list_ptr) {
	// Plane* list_ptr = planeList.add(std::move(s));
	unifiedShapeList.push_back(list_ptr);
}