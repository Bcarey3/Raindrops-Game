//variables

color c;

int bgchange=0;
int sec=0;
int oldtime=0;
int cake=2000;
void setup() {
  size (600, 600);
  textSize(100);
}

void draw() {

  background(c);
  sec=millis();
  bgchange=sec-oldtime;
  if (bgchange>=cake) {

    c= color (random(255), random(255), random(255));
    oldtime=sec;
  }
  text(millis()/1000, width/2, height/2);


  println(bgchange=sec-oldtime);
}

