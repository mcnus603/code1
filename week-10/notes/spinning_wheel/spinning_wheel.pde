void setup() {
  size(600, 600);
}

void draw() {
  //background(255);
  float r = random(TWO_PI);
  line(width/2, height/2, width/2 + cos(r) * 100, height/2 + sin(r) *100);
}