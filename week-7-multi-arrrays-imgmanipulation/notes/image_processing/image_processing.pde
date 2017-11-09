//Image processing, can save image data as arrays and store it

PImage img;


void setup() {
  size(800, 450);
  img = loadImage("small_dog.jpg");
  noStroke();
}

void draw() {
  image(img, 0, 0, img.width, img.height);
  //int x = random(0, 640)

  //color c = img.get(mouseX, mouseY);
  //fill(c);
  //ellipse(mouseX, mouseY, 50, 50);
  background(255);
  for (int i = 0; i < img.width; i+= 5) {
    for (int j = 0; j < img.height; j+= 5) {
      pushMatrix();
      translate(i - 10, j - 10);
      rotate(radians(frameCount + i +j ));
      color c = img. get(i, j);
      float brightness = brightness(c);
      fill(c); 
      rect(0, 0, 80, 10);
      popMatrix();

      //fill(c);
      //ellipse(i, j, 15, 15);
    }
  }
}