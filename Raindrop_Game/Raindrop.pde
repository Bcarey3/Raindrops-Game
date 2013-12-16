class Raindrops {

  int d;
  color c;
  PVector loc, acc, vel;
  Raindrops() {

    d=10;
    c=color (254, 255, 18);
    loc= new PVector (random(width), 0);
    vel= new PVector(0, random (5, 15) );
  }

  void display() {
    fill (0, 58, 255);
    ellipse  (loc.x, loc.y, d, d);
  }

  void move() {
    loc.add(vel);
  }

  void wraparound() {
    if (loc.x>= width) {
      loc.x=0;
    }

    if (loc.y>= width) {
      loc.y=0;
    }

    if (loc.x< 0) {
      loc.x= width;
    }

    if (loc.y<0) {
      loc.y=height;
    }
  }
}

