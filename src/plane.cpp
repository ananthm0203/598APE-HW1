#include "plane.h"

Plane::Plane(const Vector& c, std::shared_ptr<Texture> t, double ya, double pi, double ro,
             double tx, double ty)
    : Shape(c, t, ya, pi, ro), vect(c), right(c), up(c) {
    textureX     = tx;
    textureY     = ty;
    textureX_inv = 1 / textureX;
    textureY_inv = 1 / textureY;
    setAngles(yaw, pitch, roll);
    normalMap = NULL;
    mapX      = textureX;
    mapY      = textureY;
    mapX_inv  = 1 / mapX;
    mapY_inv  = 1 / mapY;
}

void Plane::setAngles(double a, double b, double c) {
    yaw       = a;
    pitch     = b;
    roll      = c;
    xcos      = cos(yaw);
    xsin      = sin(yaw);
    ycos      = cos(pitch);
    ysin      = sin(pitch);
    zcos      = cos(roll);
    zsin      = sin(roll);
    vect.x()  = xsin * ycos * zcos + ysin * zsin;
    vect.y()  = ysin * zcos - xsin * ycos * zsin;
    vect.z()  = xcos * ycos;
    up.x()    = -xsin * ysin * zcos + ycos * zsin;
    up.y()    = ycos * zcos + xsin * ysin * zsin;
    up.z()    = -xcos * ysin;
    right.x() = xcos * zcos;
    right.y() = -xcos * zsin;
    right.z() = -xsin;
    d         = -vect.dot(center);
}

void Plane::setYaw(double a) {
    yaw  = a;
    xcos = cos(yaw);
    xsin = sin(yaw);

    vect.x()  = xsin * ycos * zcos + ysin * zsin;
    vect.y()  = ysin * zcos - xsin * ycos * zsin;
    vect.z()  = xcos * ycos;
    up.x()    = -xsin * ysin * zcos + ycos * zsin;
    up.y()    = ycos * zcos + xsin * ysin * zsin;
    up.z()    = -xcos * ysin;
    right.x() = xcos * zcos;
    right.y() = -xcos * zsin;
    right.z() = -xsin;
    d         = -vect.dot(center);
}

void Plane::setPitch(double b) {
    pitch    = b;
    ycos     = cos(pitch);
    ysin     = sin(pitch);
    vect.x() = xsin * ycos * zcos + ysin * zsin;
    vect.y() = ysin * zcos - xsin * ycos * zsin;
    vect.z() = xcos * ycos;
    up.x()   = -xsin * ysin * zcos + ycos * zsin;
    up.y()   = ycos * zcos + xsin * ysin * zsin;
    up.z()   = -xcos * ysin;
    d        = -vect.dot(center);
}

void Plane::setRoll(double c) {
    roll     = c;
    zcos     = cos(roll);
    zsin     = sin(roll);
    vect.x() = xsin * ycos * zcos + ysin * zsin;
    vect.y() = ysin * zcos - xsin * ycos * zsin;
    //   vect.z = xcos*ycos;
    up.x() = -xsin * ysin * zcos + ycos * zsin;
    up.y() = ycos * zcos + xsin * ysin * zsin;
    // up.z = -xcos*ysin;
    right.x() = xcos * zcos;
    right.y() = -xcos * zsin;
    // right.z = -xsin;
    d = -vect.dot(center);
}

double Plane::getIntersection(const Ray& ray, const Shape*& hitShape) const {
    const double t    = ray.vector.dot(vect);
    const double norm = vect.dot(ray.point) + d;
    const double r    = -norm / t;

    if (r > 0) {
        hitShape = this;
        return r;
    }
    return inf;
}

bool Plane::getLightIntersection(const Ray& ray, double fill[3]) const {
    const double t    = ray.vector.dot(vect);
    const double norm = vect.dot(ray.point) + d;
    const double r    = -norm / t;
    if (r <= 0. || r >= 1.)
        return false;

    if (texture->opacity > 1 - 1E-6)
        return true;
    auto [dist, denom]    = solveScalers(right, up, vect, ray.point - center);
    unsigned char temp[3] = {0, 0, 0};
    double        amb = 0, op = 0, ref = 0;
    texture->getColor(temp, amb, op, ref, fix(dist.x() / (textureX * denom) - .5),
                      fix(dist.y() / (textureY * denom) - .5));
    if (op > 1 - 1E-6)
        return true;
    fill[0] *= temp[0] / 255.;
    fill[1] *= temp[1] / 255.;
    fill[2] *= temp[2] / 255.;
    return false;
}

void Plane::move() {
    d = -vect.dot(center);
}
void Plane::getColor(unsigned char toFill[3], double& am, double& op, double& ref, const Ray& ray,
                     unsigned int depth) const {
    auto [dist, denom] = solveScalers(right, up, vect, ray.point - center);
    texture->getColor(toFill, am, op, ref, fix(dist.x() / (textureX * denom) - .5),
                      fix(dist.y() / (textureY * denom) - .5));
}
unsigned char Plane::reversible() const {
    return 1;
}

Vector Plane::getNormal(const Vector& point) const {
    if (normalMap == NULL)
        return vect;
    else {
        auto [dist, denom] = solveScalers(right, up, vect, point - center);
        double        am = 0, ref = 0, op = 0;
        unsigned char norm[3] = {0, 0, 0};
        normalMap->getColor(norm, am, op, ref, fix(dist.x() / (mapX * denom) - .5 + mapOffX),
                            fix(dist.y() / (mapY * denom) - .5 + mapOffY));
        Vector ret = ((norm[0] - 128) * right + (norm[1] - 128) * up + norm[2] * vect).normalize();
        return ret;
    }
}