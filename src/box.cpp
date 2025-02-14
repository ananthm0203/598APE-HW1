#include "box.h"

Box::Box(const Vector& c, Texture* t, double ya, double pi, double ro, double tx, double ty)
    : Plane(c, t, ya, pi, ro, tx, ty) {
}
Box::Box(const Vector& c, Texture* t, double ya, double pi, double ro, double tx)
    : Plane(c, t, ya, pi, ro, tx, tx) {
}

double Box::getIntersection(const Ray& ray, const Shape** hitShape) const {
    double time = Plane::getIntersection(ray, hitShape);
    if (time == inf)
        return time;
    auto [dist, denom] = solveScalers(right, up, vect, ray.point + ray.vector * time - center);
    if (fabs(dist.x) > ((textureX / 2) * fabs(denom)) ||
        (fabs(dist.y) > ((textureY / 2) * fabs(denom))))
        return inf;
    *hitShape = this;
    return time;
}

bool Box::getLightIntersection(const Ray& ray, double* fill) const {
    const double t    = ray.vector.dot(vect);
    const double norm = vect.dot(ray.point) + d;
    const double r    = -norm / t;
    if (r <= 0. || r >= 1.)
        return false;
    auto [dist, denom] = solveScalers(right, up, vect, ray.point + ray.vector * r - center);
    if (fabs(dist.x) > ((textureX / 2) * fabs(denom)) ||
        (fabs(dist.y) > ((textureY / 2) * fabs(denom))))
        return false;

    if (texture->opacity > 1 - 1E-6)
        return true;
    unsigned char temp[4];
    double        amb, op, ref;
    texture->getColor(temp, &amb, &op, &ref, fix(dist.x * textureX_inv - .5),
                      fix(dist.y * textureY_inv - .5));
    if (op > 1 - 1E-6)
        return true;
    fill[0] *= temp[0] / 255.;
    fill[1] *= temp[1] / 255.;
    fill[2] *= temp[2] / 255.;
    return false;
}