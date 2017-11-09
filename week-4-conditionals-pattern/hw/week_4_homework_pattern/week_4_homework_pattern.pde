int x = 0;
int y = 0;
float horzAngle = 0;
float vertAngle = 0;
int count; 


void setup() {
  size(800, 800);
  rectMode(CENTER);
  noStroke();
  count = 2;
  background(255);
}

void draw() {
  horzAngle += 7;
  x += 10;
  float rColor = map(x, 0, width, 0, 255);
  float gColor = map(y, 0, height, 0, 255);
  float bColor = random(0, 255);
  float opacity = map(mouseY, 0, width, 30, 110);
  vertAngle = map(mouseY, 0, width, 0, 90);

  if (count % 2 == 0) {
    translate(x, y);
    rotate(radians(horzAngle));
    fill(rColor, gColor, bColor, opacity);
    rect(0, 0, mouseX, 40);
  } else {
    translate(y, x);
    rotate(radians(vertAngle));
    rect(0, 0, 20, 2);
    fill(255, 255, 255, 80);
  }
  if (x > width ) {
    x = 0;
    y += 50;
  }
  if (y > height) {
    y = 0;
    x += 100;
    count = count + 1;
  }
}