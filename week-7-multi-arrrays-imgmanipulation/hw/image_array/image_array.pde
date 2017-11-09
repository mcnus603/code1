int imageNumber = 4;
int angle = 1;
PImage [] radial = new PImage[imageNumber];
int [] speed = new int[imageNumber];

void setup() {
  imageMode(CENTER);
  size(800, 800);
  for (int i = 0; i < radial.length; i++) {
    radial[i] = loadImage("radial" + i +".png");
    speed[i] = int(random(2, 5));
  }
}

void draw() {
  background(250, 200, 160);
  for (int i = 0; i < (2); i++) {
    for (int j = 0; j < (2); j++) {
      int index = (int)sqrt(imageNumber) * j + i;
      pushMatrix();
      translate(200 + i * 400, 200 + j * 400);
      rotate(radians(angle));
      angle += speed[index];
      speed[index] += int(random(-2, 2));
      image(radial[index], 0, 0, 300, 300);
      popMatrix();
    }
  }
}