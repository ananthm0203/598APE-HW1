#include "plane.h"
#include "vector.h"

Plane::Plane(const Vector& c, Texture* t, double ya, double pi, double ro, double tx, double ty)
    : Shape(c, t, ya, pi, ro), vect(c), right(c), up(c) {
    textureX = fixed_t(tx);
    textureY = fixed_t(ty);
    setAngles(yaw, pitch, roll);
    normalMap = NULL;
    mapX      = textureX;
    mapY      = textureY;
}

void Plane::setAngles(fixed_t a, fixed_t b, fixed_t c) {
    yaw     = a;
    pitch   = b;
    roll    = c;
    xcos    = cos(yaw);
    xsin    = sin(yaw);
    ycos    = cos(pitch);
    ysin    = sin(pitch);
    zcos    = cos(roll);
    zsin    = sin(roll);
    vect.x  = xsin * ycos * zcos + ysin * zsin;
    vect.y  = ysin * zcos - xsin * ycos * zsin;
    vect.z  = xcos * ycos;
    up.x    = -xsin * ysin * zcos + ycos * zsin;
    up.y    = ycos * zcos + xsin * ysin * zsin;
    up.z    = -xcos * ysin;
    right.x = xcos * zcos;
    right.y = -xcos * zsin;
    right.z = -xsin;
    d       = -vect.dot(center);
}

void Plane::setYaw(fixed_t a) {
    yaw  = fixed_t(a);
    xcos = cos(yaw);
    xsin = sin(yaw);

    vect.x  = xsin * ycos * zcos + ysin * zsin;
    vect.y  = ysin * zcos - xsin * ycos * zsin;
    vect.z  = xcos * ycos;
    up.x    = -xsin * ysin * zcos + ycos * zsin;
    up.y    = ycos * zcos + xsin * ysin * zsin;
    up.z    = -xcos * ysin;
    right.x = xcos * zcos;
    right.y = -xcos * zsin;
    right.z = -xsin;
    d       = -vect.dot(center);
}

void Plane::setPitch(fixed_t b) {
    pitch  = b;
    ycos   = cos(pitch);
    ysin   = sin(pitch);
    vect.x = xsin * ycos * zcos + ysin * zsin;
    vect.y = ysin * zcos - xsin * ycos * zsin;
    vect.z = xcos * ycos;
    up.x   = -xsin * ysin * zcos + ycos * zsin;
    up.y   = ycos * zcos + xsin * ysin * zsin;
    up.z   = -xcos * ysin;
    d      = -vect.dot(center);
}

void Plane::setRoll(fixed_t c) {
    roll   = c;
    zcos   = cos(roll);
    zsin   = sin(roll);
    vect.x = xsin * ycos * zcos + ysin * zsin;
    vect.y = ysin * zcos - xsin * ycos * zsin;
    //   vect.z = xcos*ycos;
    up.x = -xsin * ysin * zcos + ycos * zsin;
    up.y = ycos * zcos + xsin * ysin * zsin;
    // up.z = -xcos*ysin;
    right.x = xcos * zcos;
    right.y = -xcos * zsin;
    // right.z = -xsin;
    d = -vect.dot(center);
}

fixed_t Plane::getIntersection(Ray ray, Shape** hitShape) {
    const fixed_t t    = ray.vector.dot(vect);
    const fixed_t norm = vect.dot(ray.point) + d;
    const fixed_t r    = -norm / t;
    if (r > fixed_t(0)) {
        *hitShape = this;
        return r;
    }
    return fixed_t(inf);
}

bool Plane::getLightIntersection(Ray ray, fixed_t* fill) {
    const fixed_t t    = ray.vector.dot(vect);
    const fixed_t norm = vect.dot(ray.point) + d;
    const fixed_t r    = -norm / t;
    if (r <= fixed_t(0) || r >= fixed_t(1))
        return false;

    if (texture->opacity > fixed_t(1) - fixed_t(1E-6))
        return true;
    Vector        dist = solveScalers(right, up, vect, ray.point - center);
    unsigned char temp[4];
    fixed_t       amb, op, ref;

    // QUESTIONABLE AF, LAZINESS TO MODIFY TEXTURE, WILL DO IF NECESSARY
    texture->getColor(temp, &amb, &op, &ref, dist.x / textureX - fixed_t(0.5),
                      dist.y / textureY - fixed_t(0.5));
    if (op > fixed_t(1) - fixed_t(1E-6))
        return true;
    fill[0] *= temp[0] / fixed_t(255);
    fill[1] *= temp[1] / fixed_t(255);
    fill[2] *= temp[2] / fixed_t(255);
    return false;
}

void Plane::move() {
    d = -vect.dot(center);
}
void Plane::getColor(unsigned char* toFill, fixed_t* am, fixed_t* op, fixed_t* ref, Ray ray,
                     unsigned int depth) {
    Vector dist = solveScalers(right, up, vect, ray.point - center);
    texture->getColor(toFill, am, op, ref, dist.x / textureX - fixed_t(0.5),
                      dist.y / textureY - fixed_t(0.5));
}
unsigned char Plane::reversible() {
    return 1;
}

Vector Plane::getNormal(Vector point) {
    if (normalMap == NULL)
        return vect;
    else {
        Vector        dist = solveScalers(right, up, vect, point - center);
        fixed_t       am, ref, op;
        unsigned char norm[3];
        normalMap->getColor(norm, &am, &op, &ref, dist.x / mapX - fixed_t(0.5) + mapOffX,
                            dist.y / mapY - fixed_t(0.5) + mapOffY);
        Vector ret = ((norm[0] - 128) * right + (norm[1] - 128) * up + norm[2] * vect).normalize();
        return ret;
    }
}