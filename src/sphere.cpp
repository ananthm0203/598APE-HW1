#include "sphere.h"
#include "vector.h"

Sphere::Sphere(const Vector& c, Texture* t, double ya, double pi, double ro, double rad)
    : Shape(c, t, ya, pi, ro) {
    textureX = textureY = fixed_t(1);
    normalMap           = NULL;
    radius              = fixed_t(rad);
}
bool Sphere::getLightIntersection(Ray ray, fixed_t* fill) {
    const fixed_t A            = ray.vector.mag2();
    const fixed_t B            = 2 * ray.vector.dot(ray.point - center);
    const fixed_t C            = (ray.point - center).mag2() - radius * radius;
    const fixed_t descriminant = B * B - 4 * A * C;
    if (descriminant < fixed_t(0) || descriminant < B * ((B >= fixed_t(0)) ? B : -B))
        return false;

    const fixed_t desc  = sqrt(descriminant);
    const fixed_t root1 = (-B - desc) / (2 * A);
    const fixed_t root2 = (-B + desc) / (2 * A);
    const fixed_t time  = (root1 > fixed_t(0)) ? root1 : root2;
    if (time >= fixed_t(1))
        return false;
    Vector        point = ray.point + ray.vector * time;
    fixed_t       data2 = (center.y - point.y + radius) / (2 * radius);
    fixed_t       data3 = atan2(point.z - center.z, point.x - center.x);
    unsigned char temp[4];
    fixed_t       amb, op, ref;
    texture->getColor(temp, &amb, &op, &ref, fix((yaw + data2) / fixed_t::two_pi() / textureX),
                      fix((pitch / fixed_t::two_pi() - (data3))) / textureY);
    if (op > fixed_t(1) - fixed_t(1E-6))
        return true;
    fill[0] *= temp[0] / fixed_t(255);
    fill[1] *= temp[1] / fixed_t(255);
    fill[2] *= temp[2] / fixed_t(255);
    return false;
}
fixed_t Sphere::getIntersection(Ray ray, Shape** hitShape) {
    const fixed_t A            = ray.vector.mag2();
    const fixed_t B            = 2 * ray.vector.dot(ray.point - center);
    const fixed_t C            = (ray.point - center).mag2() - radius * radius;
    const fixed_t descriminant = B * B - 4 * A * C;
    if (descriminant < fixed_t(0))
        return fixed_t(inf);
    else {
        const fixed_t desc  = sqrt(descriminant);
        const fixed_t root1 = (-B - desc) / (2 * A);
        const fixed_t root2 = (-B + desc) / (2 * A);
        fixed_t       time =
            (root1 > fixed_t(0)) ? (root1) : ((root2 > fixed_t(0)) ? root2 : fixed_t(inf));
        if (time != fixed_t(inf)) {
            *hitShape = this;
        }
        return time;
    }
}
void Sphere::move() {
    return;
}
unsigned char Sphere::reversible() {
    return 0;
}

void Sphere::getColor(unsigned char* toFill, fixed_t* amb, fixed_t* op, fixed_t* ref, Ray ray,
                      unsigned int depth) {
    fixed_t data3 = (center.y - ray.point.y + radius) / (2 * radius);
    fixed_t data2 = atan2(ray.point.z - center.z, ray.point.x - center.x);
    texture->getColor(toFill, amb, op, ref, fix((yaw + data2) / fixed_t::two_pi() / textureX),
                      fix((pitch / fixed_t::two_pi() - (data3)) / textureY));
}
Vector Sphere::getNormal(Vector point) {
    Vector vect = point - center;
    /*   A x B = <x, y, z>
    <ay bz- az by,  bz ax - az bx, ax by - bx ay>
    az = 0

    <ay bz,  bz ax, ax by - bx ay >

    bx = 0

    <ay bz,  bz ax, ax by >

    ax = 1

    <ay bz,  bz , by >

    B: <0, z, -y>
    A <-1,x/y,0>
    */
    if (normalMap == NULL)
        return vect;
    fixed_t data3        = (center.y - point.y + radius) / (2 * radius);
    fixed_t data2        = atan2(point.z - center.z, point.x - center.x);
    vect                = vect.normalize();
    Vector        right = Vector(vect.x, vect.z, -vect.y);
    Vector        up    = Vector(vect.z, vect.y, -vect.x);
    fixed_t       am, ref, op;
    unsigned char norm[3];
    normalMap->getColor(norm, &am, &op, &ref, fix(((mapOffX + mapOffX) + data2) / fixed_t::two_pi() /
                                                    mapX),
                        fix(((mapOffY + mapOffY) / fixed_t::two_pi() - data3) / mapY));
    return ((norm[0] - 128) * right + (norm[1] - 128) * up + norm[2] * vect).normalize();
}

void Sphere::setAngles(fixed_t a, fixed_t b, fixed_t c) {
    yaw   = a;
    pitch = b;
    roll  = c;
    xcos  = cos(yaw);
    xsin  = sin(yaw);
    ycos  = cos(pitch);
    ysin  = sin(pitch);
    zcos  = cos(roll);
    zsin  = sin(roll);
}

void Sphere::setYaw(fixed_t a) {
    yaw  = a;
    xcos = cos(yaw);
    xsin = sin(yaw);
}

void Sphere::setPitch(fixed_t b) {
    pitch = b;
    ycos  = cos(pitch);
    ysin  = sin(pitch);
}

void Sphere::setRoll(fixed_t c) {
    roll = c;
    zcos = cos(roll);
    zsin = sin(roll);
}