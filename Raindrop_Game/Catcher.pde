class Catcher {
  int d;
  PVector loc;

  //constructor
  Catcher() {
    d=100;
//    loc= new PVector (width/2, height/2);
  }

  void display() {
    fill (100,255,60);
    ellipse  (mouseX, height-d, d, d );
  }
}
