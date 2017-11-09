import processing.pdf.*;
PImage img;

void setup() {
  size(775, 775, PDF, "export.pdf");
  img = loadImage("portrait.jpg");
  rectMode(CENTER);
  noFill();
}

void draw() {
  image(img, 0, 0, img.width, img.height); 
  background(255);
  for (int i = 0; i < img.width; i+= 10) {
    for (int j = 0; j < img.height; j+= 10) {
      color c = img. get(i, j);
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      noStroke();
      fill(r +map(i, 0, width, -200, 200), g, b + map(i, 0, width, -100, 100), 100);
      ellipse(i, j, 20, 20);
    }
  }
  exit();
}