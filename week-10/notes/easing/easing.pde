//easing motion
//everyframe we move 10% of the way to the new point or whatever the percentage is


float xPos, yPos;
float targetX, targetY;

void setup() {
  size(700, 700);
}

void draw() {
  targetX = mouseX;
  targetY = mouseY;
  background(255);
  ellipse(xPos, yPos, 80, 80);

  xPos += (targetX - xPos) * 0.1;
  yPos += (targetY - yPos) * 0.1;
}