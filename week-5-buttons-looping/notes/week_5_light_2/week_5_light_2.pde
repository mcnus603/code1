
void setup() {
  size (600, 600);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(220);

  if (getDistance(width/2, height/2, mouseX, mouseY) < 75) {
    fill(255);
  } else {
    fill(0);
  }
  
  ellipse(width/2, height/2, 150, 150);
}

float getDistance (float x1, float y1, float x2, float y2) {
  float value;
  float dx = abs(x1 - x2);
  float dy = abs(y1 - y2);
  float dx2 = pow(dx, 2);
  float dy2 = pow(dy, 2);
  value = sqrt(dx2 + dy2);
  return value;
}