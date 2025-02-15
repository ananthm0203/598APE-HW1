#include "autonoma.h"

Autonoma::Autonoma(const Camera& c) : camera(c), depth(10), skybox(BLACK) {
}

Autonoma::Autonoma(const Camera& c, Texture* tex) : camera(c), depth(10), skybox(tex) {
}

void Autonoma::addShape(std::unique_ptr<Shape>&& r) {
    shapes.push_back(std::move(r));
}

void Autonoma::addLight(Light&& r) {
    lights.push_back(std::move(r));
}
