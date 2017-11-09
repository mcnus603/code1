PImage img;
Man m;

void setup() {
  imageMode(CENTER);
 size(800, 800);
 m = new Man();
 img = loadImage("stickman.png");
}

void draw() {
  background(255);
  m.display(map(mouseX, 0, width, 200, 800), map(mouseY, 0, width, 200, 800));
}