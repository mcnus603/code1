float angle = 0;
float x = 0;

void setup() {
  size(800, 800);
}

//when we translate we move the cooridnate system

void draw() {
  translate(x, height/2);
  x = x +1;
  scale(0.1);
  rotate(radians(angle));
  angle = angle - 1; 
  rect(0, 0, 200, 200);
  
  ellipse(-400, -400, 200, 200);
  
  rect(-800, -800, 200, 200);
}