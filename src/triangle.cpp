#include "triangle.h"

Triangle::Triangle(Vector c, Vector b, Vector a, Texture* t)
    : Plane(Vector(0, 0, 0), t, 0., 0., 0., 0., 0.) {
    center        = c;
    Vector righta = (b - c);
    textureX      = righta.mag();
    right         = righta / textureX;
    vect          = right.cross(b - a).normalize();

    xsin = -right.z;
    if (xsin < -1.)
        xsin = -1;
    else if (xsin > 1.)
        xsin = 1.;
    yaw  = asin(xsin);
    xcos = sqrt(1. - xsin * xsin);

    zcos = right.x / xcos;
    zsin = -right.y / xcos;
    if (zsin < -1.)
        zsin = -1;
    else if (zsin > 1.)
        zsin = 1.;
    if (zcos < -1.)
        zcos = -1;
    else if (zcos > 1.)
        zcos = 1.;
    roll = asin(zsin);

    ycos = vect.z / xcos;
    if (ycos < -1.)
        ycos = -1;
    else if (ycos > 1.)
        ycos = 1.;
    pitch = acos(ycos);
    ysin  = sqrt(1 - ycos * ycos);

    up.x        = -xsin * ysin * zcos + ycos * zsin;
    up.y        = ycos * zcos + xsin * ysin * zsin;
    up.z        = -xcos * ysin;
    Vector temp = vect.cross(right);
    auto [np, denom]   = solveScalers(right, up, vect, a - c);
    textureY    = np.y / denom;
    thirdX      = np.x / denom;

    d = -vect.dot(center);
}

double Triangle::getIntersection(const Ray& ray, const Shape** hitShape) const {
    double time = Plane::getIntersection(ray, hitShape);
    if (time == inf)
        return time;
    auto [dist, denom] = solveScalers(right, up, vect, ray.point + ray.vector * time - center);
    dist.x /= denom;
    dist.y /= denom;
    unsigned char tmp =
        (thirdX - dist.x) * textureY + (thirdX - textureX) * (dist.y - textureY) < 0.0;
    if ((tmp != (textureX * dist.y < 0.0)) || (tmp != (dist.x * textureY - thirdX * dist.y < 0.0)))
        return inf;
    *hitShape = this;
    return time;
}

bool Triangle::getLightIntersection(const Ray& ray, double* fill) const {
    const double t    = ray.vector.dot(vect);
    const double norm = vect.dot(ray.point) + d;
    const double r    = -norm / t;
    if (r <= 0. || r >= 1.)
        return false;
    auto [dist, denom] = solveScalers(right, up, vect, ray.point + ray.vector * r - center);
    dist.x /= denom;
    dist.y /= denom;

    unsigned char tmp =
        (thirdX - dist.x) * textureY + (thirdX - textureX) * (dist.y - textureY) < 0.0;
    if ((tmp != (textureX * dist.y < 0.0)) || (tmp != (dist.x * textureY - thirdX * dist.y < 0.0)))
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
