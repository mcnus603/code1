void setup() {
  size(800, 800);
}

void draw() {
  drawCircle(100, 200, 50, 255, 1);
  drawCircle(300, 200, 80, 240, 5);
  drawCircle(200, 400, 200, 100, 2);
  drawCircle(500, 500, 100, 50, 10);
}

void drawCircle(float x, float y, float d, int c, int sw) {
  fill(c);
  strokeWeight(sw);
  ellipse(x, y, d, d);
}