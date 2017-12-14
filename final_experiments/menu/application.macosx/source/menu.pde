SliderBar r;
float rColorValue;

float menuHeight = 100;
float menuY;

float controlBarLength = 200;
float controlBarHeight = 5;

void setup() {
  size(800, 800);
  menuY = height - menuHeight;
  r = new SliderBar(100, menuY + 20, controlBarLength, controlBarHeight);
  //g = new SliderBar(100, menuY + 50, controlBarLength, controlBarHeight);
  //b = new SliderBar(100, menuY + 80, controlBarLength, controlBarHeight);
}

void draw() {
  background(255);
  controls();
}


void controls () {
  noStroke();
  fill(0);

  rect(0, menuY, width, menuHeight);
  fill(255, 100, 20);
  r.display();
  r.update();

  if ((mouseX > r.x && mouseX < (r.x + r.w)) && (mouseY > r.y && mouseY < (r.y + r.h))) {
   println("here it is"); 
  }

}