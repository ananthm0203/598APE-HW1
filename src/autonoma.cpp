#include "autonoma.h"

Autonoma::Autonoma(const Camera& c): camera(c), depth(10), skybox(BLACK){
}

Autonoma::Autonoma(const Camera& c, Texture* tex): camera(c), depth(10), skybox(tex) {
}

void Autonoma::addShape(std::unique_ptr<Shape>&& r){
   shapes.push_back(std::move(r));
}

void Autonoma::removeShape(Shape* s) {
    for (int i = 0; i < shapes.size(); ++i) {
        if (shapes[i].get() == s) {
            shapes.erase(shapes.begin() + i);
            return;
        }
    }
}

void Autonoma::addLight(std::unique_ptr<Light>&& r){
   lights.push_back(std::move(r));
}

void Autonoma::removeLight(Light* s){
    for (int i = 0; i < shapes.size(); ++i) {
        if (lights[i].get() == s) {
            lights.erase(lights.begin() + i);
            return;
        }
    }
}

