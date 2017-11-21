PImage img;

void setup() {
  size(800, 800);
  img = loadImage("image.jpg");
}

void draw() {
  //image(img, 0, 0);
  background(255);
  loadPixels();
  img.loadPixels();
  for (int i = 0; i < img.width; i++) {
    for (int j = 0; j < img.height; j++) {
      int index = i + j * img.width;
      pixels[index] = img.pixels[index];
    }
  }
  updatePixels();
}