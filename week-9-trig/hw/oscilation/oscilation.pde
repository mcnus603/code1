float angle;
float rate;
float amplitude;
float startingSize;
float oscillateSize;
float oscillateBackground;
float oscillateOpacity;


void setup() {
  rectMode(CENTER);
  size(600, 600);

  angle = 0;
  amplitude = 30;
  rate = 0.05;
  startingSize = 40;
}

void draw() {
  background(0);
  noStroke();
  fill(oscillateBackground, 150, 100, oscillateOpacity);
  angle += rate;
  oscillateSize = startingSize + sin(angle) * amplitude;
  oscillateBackground = map(sin(angle), -1, 1, 0, 255);
  oscillateOpacity = map(sin(angle), -1, 1, 255, 20);
  for (int i = 0; i < 23; i++) {
    for (int j = 0; j < 23; j++) {
      pushMatrix();
      translate(oscillateSize, oscillateSize);
      rect((i * 30)-80, (j * 30)-80, oscillateSize, oscillateSize);
      popMatrix();
    }
  }
}