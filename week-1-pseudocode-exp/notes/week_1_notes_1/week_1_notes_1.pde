float angle = 0;
float x = 0;
float w = 100; 
float h = 100; 

void setup() {
  size(500, 500);
  rectMode(CENTER); //<>//
}

void draw() {
  //background(240);
  angle = angle + 1;
  translate(x + 1, height/2);
  rotate(radians(angle));
  x = x + 1;
  w = w - 1;
  h = h +1;
  fill(x, w, h);
  stroke(0);
  strokeWeight(0.5);
  rect(0, 0, w, h);
  fill(122, mouseY, mouseX, 50);
  stroke(255);
  strokeWeight(2);
  ellipse(0, 0, 50, 50);
}

//translate(250, 250);
//ellipse(0, 0, 100, 100);
//translate(-250, -250);
//ellipse(0, 0, 100, 100);
//line(0, 0, 0, height);
//line(0, 0, width, 0);
//ellipse(100, 100, 40, 40);