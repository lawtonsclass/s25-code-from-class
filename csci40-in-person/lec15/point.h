#ifndef POINT_H
#define POINT_H

// *declaration* of the point class
class Point {
  public:
    // accessible to the user
    void negate();
    Point add(const Point& o) const;
    void scale(double c);

    // getters
    double getX() const;
    double getY() const;
    // setters
    void setX(double d);
    void setY(double d);

  private:
    // cannot be accessed by the user
    double x;
    double y;
};

#endif /* end of include guard: POINT_H */
