void setup () {
  size(600, 600);
  rectMode(CENTER);
  background(250);
}

void draw() {

  background(250);
  for (int i = -5; i <= height; i += 10) {
    for (int j = -5; j <= width; j += 10) {
      fill(map(j, 0, width, 0, 255), 120, 120);
      strokeWeight(1);
      stroke(255);
      rect(j, i, 10,  10);
    }
  }

  for (int i = 50; i >= 10; i -= 10) {
    for (int j = 25; j <= width; j += 50) {
      for (int h = 25; h <= mouseY; h += 50) {    
        fill(255);
        strokeWeight(2);
        stroke(map(h, 0, width, 100, 255), 130, 80);
        rect(j, h, i, i);
        noStroke();
        fill((map(j, 0, width, 50, 200)), 150, 150);
        rect(j -25, h - 25, 8, 8);
      }
      
    }
  }
}