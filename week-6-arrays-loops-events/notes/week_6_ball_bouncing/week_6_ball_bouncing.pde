float x = 100;
float y = 100;
float r = 40;
float dx = 2;
float dy = 2;

float boxX = 300;
float boxY = 200;
float boxW = 250;
float boxH = 80;

void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  x+= dx;
  y+= dy;

  dy = dy + 0.8;
  dy = dy * .99;
  
  fill(255);
  ellipse(x, y, r*2, r*2);

  if (x > width - r || x < r) {
    dx = -dx;
  }
  if (y > height - r || y <r) {
    dy = -dy;
  }

  //if (x > boxX - r && x < boxX + boxW + r && 
  //  y >boxY -r && x < boxY + boxH + r) {
  //  dy = -dy;
  //  dx = -dx;
  //} else {
  //}
  //rect(boxX, boxY, boxW, boxH);
}