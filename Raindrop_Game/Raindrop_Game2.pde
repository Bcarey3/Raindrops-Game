Raindrops[]drizzle= new Raindrops[20];
Catcher bucket;

void setup() {

  size (600, 600);
  //  b=new Star();
  for (int i=0;i<drizzle.length;i++) {
    drizzle[i]=new Raindrops();
    
  }
  bucket= new Catcher();
}

void draw() {

  background (255);

  for (int i=0;i<drizzle.length;i++) {
    drizzle[i].display();
    drizzle[i].move();
    drizzle[i].wraparound();
  }
  bucket.display();
}


//create class


