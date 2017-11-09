int counter = 0;

void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  background(255);
  fill(0);
  textSize(60);
  text(counter, 100, 100);
  counter ++;
  if (mouseX > width/2 || counter > 200) {
    if (mouseX > width/2) {
      fill(0, 0, 255);
    } else if (counter > 200) {
      fill(0, 255, 0);
    }
   ellipse(width/2, height/2, 200, 200); 
  }
}
void mousePressed() {
 //anything in here happens when mouse button is pushed
 counter = 0;
}