#ifndef __AUTONOMA_H__
#define __AUTONOMA_H__

#include "vector.h"
#include "camera.h"
#include "light.h"
#include "shape.h"
#include "Textures/texture.h"
#include "Textures/colortexture.h"
#include "bvh.h"

#include <vector>
#include <memory>

struct Autonoma {
   Camera camera;
   Texture* skybox;
   unsigned int depth;
   std::vector<std::unique_ptr<Shape>> shapes;
   std::vector<std::unique_ptr<Light>> lights;
   std::unique_ptr<BVH> bvh;

   Autonoma(const Camera &c);
   Autonoma(const Camera &c, Texture* tex);
   
   void addShape(std::unique_ptr<Shape>&& s);
   void removeShape(Shape* s);
   void addLight(std::unique_ptr<Light>&& s);
   void removeLight(Light* s);
};

#endif