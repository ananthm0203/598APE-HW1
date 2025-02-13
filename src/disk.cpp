#include "disk.h"
Disk::Disk(const Vector& c, Texture* t, double ya, double pi, double ro, double tx, double ty)
    : Plane(c, t, ya, pi, ro, tx, ty) {
}

fixed_t Disk::getIntersection(Ray ray, Shape** hitShape) {
    fixed_t time = Plane::getIntersection(ray, hitShape);
    if (time == fixed_t(inf))
        return time;
    Vector dist = solveScalers(right, up, vect, ray.point + ray.vector * time - center);
    if (dist.x * dist.x / (textureX * textureX) + dist.y * dist.y / (textureY * textureY) > fixed_t(1))
        return fixed_t(inf);
    *hitShape = this;
    return time;
}

bool Disk::getLightIntersection(Ray ray, fixed_t* fill) {
    const fixed_t t    = ray.vector.dot(vect);
    const fixed_t norm = vect.dot(ray.point) + d;
    const fixed_t r    = -norm / t;
    if (r <= fixed_t(0.) || r >= fixed_t(1.))
        return false;
    Vector dist = solveScalers(right, up, vect, ray.point + ray.vector * r - center);
    if (dist.x * dist.x / (textureX * textureX) + dist.y * dist.y / (textureY * textureY) > fixed_t(1))
        return false;
    if (texture->opacity > fixed_t(1) - fixed_t(1E-6))
        return true;
    unsigned char temp[4];
    fixed_t       amb, op, ref;
    texture->getColor(temp, &amb, &op, &ref, fix(dist.x / textureX - fixed_t(0.5)),
                      fix(dist.y / textureY - fixed_t(0.5)));
    if (op > fixed_t(1) - fixed_t(1E-6))
        return true;
    fill[0] *= temp[0] / fixed_t(255.);
    fill[1] *= temp[1] / fixed_t(255.);
    fill[2] *= temp[2] / fixed_t(255.);
    return false;
}