float x = 1;
int state = 0;
float counter = 1;

void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  moveBall(counter);
  fill(0);
  if (dist(200, 500, mouseX, mouseY) < 10) {
    fill(100); 
    ellipse(200, 500, 20, 20);
  } else {
    fill(0); 
    ellipse(200, 500, 20, 20);
  }
  if (dist(400, 500, mouseX, mouseY) < 10) {
    fill(100); 
    ellipse(400, 500, 20, 20);
  } else {
    fill(0); 
    ellipse(400, 500, 20, 20);
  }

  if (dist(400, 500, mouseX, mouseY) < 10 && mousePressed == true) {
    counter = counter + .5;
  }
  if (dist(200, 500, mouseX, mouseY) < 10 && mousePressed == true) {
    counter = counter - .5;
  }

  if (counter > 20 || counter < 1) {
    counter = 1;
  }

  println(counter);
}


void moveBall(float r) {
  if (x > 600) {
    x = 0;
  }
  x = x + r;
  background(255);
  fill(200, 30, 30);
  noStroke();
  ellipse(x, width/2, 50, 50);
}