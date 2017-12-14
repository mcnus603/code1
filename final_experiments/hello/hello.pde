PImage img;
int counter = 1;

void setup() {
  size(800, 800);
  img = loadImage("image.jpg");
  noStroke();
}

void draw() {
  float increment = random(2, 20);
  if (increment  < 12) {
    counter += 5;
  } else {
    counter -=5;
  }
  background(255);
  for (int i = 0; i < img.width; i+= increment) {
    for (int j = 0; j < img.height; j+= increment) {
      color c = img.get(i, j);
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      fill(r, g, b);
      ellipse(i + increment, j + counter, 4, 4);
    }
  }
  updatePixels();
}