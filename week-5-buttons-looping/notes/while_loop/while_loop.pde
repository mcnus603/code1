void setup() {
  size(600, 600);
  noStroke();
}


void draw() {
  background(255);
  //do this thing 10 times and change the value based ont he numer of times i've looped

  int x = 50;
  int y = 50;
  while (x < 600) { 
    while (y < 600) {
      float d = dist(x, y, mouseX, mouseY);
      fill(map( x, 0, 600, 0, 255), map(y, 0, 600, 0, 255), 150);
      ellipse(x, y, 10, d);
      y += 50;
    }
    y = 20;
    x += 20;
  }
}