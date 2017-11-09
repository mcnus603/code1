
PImage img;

void setup() {
  size(775, 775);
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
      float oppBrightness = 255 - brightness(c);
      noStroke();
      fill(r, g, b, b);
      rect(i, j, map(oppBrightness, 0, 255, 6, 50), map(oppBrightness, 0, 255, 6, 50));
    }
  }

}