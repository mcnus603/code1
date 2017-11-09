PImage img;
float increment = random(6, 16);
  int counter = 1;

void setup() {
  size(775, 775);
  img = loadImage("portrait.jpg");
  rectMode(CENTER);
  noFill();
}

void draw() {
  image(img, 0, 0, img.width, img.height); 
  background(255);
  counter++;
  if (counter % 5 == 1) {
      increment = random(6, 16);
  }
 
  for (int i = 0; i < img.width; i+= increment) {
    for (int j = 0; j < img.height; j+= increment) {
      color c = img. get(i, j);
      float oppBrightness = 255- brightness(c);
       noStroke();
      fill(oppBrightness * -1, 100);
      rect(i, j, map(oppBrightness, 0, 255, increment - 5, increment + 10), map(oppBrightness, 0, 255, increment - 5, increment + 10));
    }
  }
}