Raindrops[]drizzle= new Raindrops[60];
Catcher vac;
int score;
int sd;
int index=1;
boolean start= false;
boolean end= false;
int bgchange=0;
int sec=0;
int oldtime=0;
int cake=1000;



void setup() {

  size (600, 600);

  for (int i=0;i<drizzle.length;i++) {
    drizzle[i]=new Raindrops();
  }
  vac= new Catcher();
}




void draw() {
  background (0);

  bgchange=sec-oldtime;
  if (millis()-oldtime>=cake) {
    oldtime=millis();
    index+=1;
  }
  //    text(millis()/1000, width/2, height/2);




  if (millis() > 60000) {
    end = true;
  }
  if (start==false) {
    textSize(50);
    text("Play the Game", width/4, height/2);
    textSize (20);
    text ("Manuever the mouse around the screen to catch raindrops", width/15, height/2+ 50);
    text ("falling  at high intensity speeds", width/3-20, height/2+ 80);
    text ("Press ANY key to begin", width/3-20, height-20 );
  }

  if ( start==true && end==false) {
    background (104, 180, 240);
    text(millis()/1000, width/2, height-10);

    //
    textSize(50);
    text("Score:  "+ score, sd, 50);
    for (int i=0;i<index;i++) {
      drizzle[i].display();
      drizzle[i].move();

      vac.catchDrop(drizzle[i]);
    }
    vac.display();

    ////HELP : timer not stopping
    if (millis()/1000>=60) {
      background (0);
      textSize (50);
      text("Score:  "+ score, width/2, height/2);
    }
  }

  if (end==true) {
    background (0);
    textSize(100);
    text("Game Over", width/4-100, height/2);
    fill (random (255), random (255), random(255)); 
    textSize(50);
    text("Score:" + score, width/2, height/2+100);
  }
}

void keyPressed() {
  start= true;
  background (0);
}

