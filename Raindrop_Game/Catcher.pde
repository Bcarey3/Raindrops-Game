
class Catcher {
  int d;
  PVector loc;
  Catcher() {
    d=60;
    loc= new PVector (width/2, height/2);
  }

  void display() {
    fill (100, 255, 60);
    loc.set(mouseX, mouseY);
    ellipse  (mouseX, mouseY, d, d );
  }


  void catchDrop(Raindrops drizzle) {
    if (loc.dist (drizzle.loc)<d/2+drizzle.d/2) {
      drizzle.loc.y=0;
      drizzle.loc.x = width*5;
      drizzle.vel.x = 0;
      drizzle.vel.y = 0;
      score+=3;
    }
    if (drizzle.loc.y>= height) {
      score-=5;
      drizzle.loc.y=0;
      drizzle.loc.x = width*5;
      drizzle.vel.x = 0;
      drizzle.vel.y = 0;
    }
  }
}

