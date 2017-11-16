float angle;
PImage pg;
float incr = 3;

void setup() {
  size(600, 600);
  angle =0;
  pg = get(0, 0, 600, 600);
}

void draw() {
  image(pg, 1, 0);
  angle += incr;
  float sinResult = sin(radians(angle * 2));
  float cosResult = cos(radians(angle));
  float y =  map(sinResult, -1, 1, height/2 -100, height/2 +100);
  float x =  map(cosResult, -1, 1, height/2 -100, height/2 +100);
  
  
  
  ellipse(x, y, 20, 20);
  pg = get(0, 0, 600, 600);
}




//sin example review
//PGraphics object --