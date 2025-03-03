#include "disk.h"
Disk::Disk(const Vector& c, std::shared_ptr<Texture> t, double ya, double pi, double ro, double tx,
           double ty)
    : Plane(c, t, ya, pi, ro, tx, ty) {
}

double Disk::getIntersection(const Ray& ray, const Shape*& hitShape) const {
    double time = Plane::getIntersection(ray, hitShape);
    if (time == inf)
        return time;
    auto [dist, denom] = solveScalers(right, up, vect, ray.point + ray.vector * time - center);
    if (dist.x() * dist.x() * (textureX_inv * textureX_inv) +
            dist.y() * dist.y() * (textureY_inv * textureX_inv) >
        (denom * denom))
        return inf;
    hitShape = this;
    return time;
}

bool Disk::getLightIntersection(const Ray& ray, double fill[3]) const {
    const double t    = ray.vector.dot(vect);
    const double norm = vect.dot(ray.point) + d;
    const double r    = -norm / t;
    if (r <= 0. || r >= 1.)
        return false;
    auto [dist, denom] = solveScalers(right, up, vect, ray.point + ray.vector * r - center);
    if (dist.x() * dist.x() * (textureX_inv * textureX_inv) +
            dist.y() * dist.y() * (textureY_inv * textureX_inv) >
        (denom * denom))
        return false;
    if (texture->opacity > 1 - 1E-6)
        return true;
    unsigned char temp[3] = {0, 0, 0};
    double        amb = 0, op = 0, ref = 0;
    texture->getColor(temp, amb, op, ref, fix(dist.x() * textureX_inv - .5),
                      fix(dist.y() * textureY_inv - .5));
    if (op > 1 - 1E-6)
        return true;
    fill[0] *= temp[0] / 255.;
    fill[1] *= temp[1] / 255.;
    fill[2] *= temp[2] / 255.;
    return false;
}