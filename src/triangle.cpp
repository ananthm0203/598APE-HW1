#include "triangle.h"
#include "vector.h"

Triangle::Triangle(Vector c, Vector b, Vector a, Texture* t)
    : Plane(Vector(0, 0, 0), t, 0., 0., 0., 0., 0.) {
    center        = c;
    Vector righta = (b - c);
    textureX      = righta.mag();
    right         = righta / textureX;
    vect          = right.cross(b - a).normalize();

    xsin = -right.z;
    if (xsin < -fixed_t(1))
        xsin = -fixed_t(1);
    else if (xsin > fixed_t(1))
        xsin = fixed_t(1);
    yaw  = asin(xsin);
    xcos = sqrt(fixed_t(1) - xsin * xsin);

    zcos = right.x / xcos;
    zsin = -right.y / xcos;
    if (zsin < -fixed_t(1))
        zsin = -fixed_t(1);
    else if (zsin > fixed_t(1))
        zsin = fixed_t(1);
    if (zcos < -fixed_t(1))
        zcos = -fixed_t(1);
    else if (zcos > fixed_t(1))
        zcos = fixed_t(1);
    roll = asin(zsin);

    ycos = vect.z / xcos;
    if (ycos < -fixed_t(1))
        ycos = -fixed_t(1);
    else if (ycos > fixed_t(1))
        ycos = fixed_t(1);
    pitch = acos(ycos);
    ysin  = sqrt(fixed_t(1) - ycos * ycos);

    up.x        = -xsin * ysin * zcos + ycos * zsin;
    up.y        = ycos * zcos + xsin * ysin * zsin;
    up.z        = -xcos * ysin;
    Vector temp = vect.cross(right);
    Vector np   = solveScalers(right, up, vect, a - c);
    textureY    = np.y;
    thirdX      = np.x;

    d = -vect.dot(center);
}

fixed_t Triangle::getIntersection(Ray ray, Shape** hitShape) {
    fixed_t time = Plane::getIntersection(ray, hitShape);
    if (time == fixed_t(inf))
        return time;
    Vector        dist = solveScalers(right, up, vect, ray.point + ray.vector * time - center);
    unsigned char tmp =
        (thirdX - dist.x) * textureY + (thirdX - textureX) * (dist.y - textureY) < fixed_t(0);
    if ((tmp != (textureX * dist.y < fixed_t(0))) ||
        (tmp != (dist.x * textureY - thirdX * dist.y < fixed_t(0))))
        return fixed_t(inf);
    *hitShape = this;
    return time;
}

bool Triangle::getLightIntersection(Ray ray, fixed_t* fill) {
    const fixed_t t    = ray.vector.dot(vect);
    const fixed_t norm = vect.dot(ray.point) + d;
    const fixed_t r    = -norm / t;
    if (r <= fixed_t(0) || r >= fixed_t(1))
        return false;
    Vector dist = solveScalers(right, up, vect, ray.point + ray.vector * r - center);

    unsigned char tmp =
        (thirdX - dist.x) * textureY + (thirdX - textureX) * (dist.y - textureY) < fixed_t(0);
    if ((tmp != (textureX * dist.y < fixed_t(0))) ||
        (tmp != (dist.x * textureY - thirdX * dist.y < fixed_t(0))))
        return false;

    if (texture->opacity > fixed_t(1) - fixed_t(1E-6))
        return true;
    unsigned char temp[4];
    fixed_t       amb, op, ref;
    texture->getColor(temp, &amb, &op, &ref, fixed_t(dist.x / textureX - fixed_t(0.5)),
                      fixed_t(dist.y / textureY - fixed_t(0.5)));
    if (op > fixed_t(1) - fixed_t(1E-6))
        return true;
    fill[0] *= temp[0] / fixed_t(255);
    fill[1] *= temp[1] / fixed_t(255);
    fill[2] *= temp[2] / fixed_t(255);
    return false;
}
