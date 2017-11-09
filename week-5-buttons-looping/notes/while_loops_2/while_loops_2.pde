float angle; 

void setup() {
  size(600, 600);

  //variable to track ; condition to check; increment
  //i = iterator 
  for (int i = 0; i < 10; i++) {
  }
}

void draw() {
  background(255);
  angle++;
  stroke(0, 100);
  
  for (int i = 0; i < 150; i++) {
    pushMatrix();
    float x = map(i, 0, 150, 0, 600);
    translate(x, 300);
    rotate(radians(angle + i*2));
    line(0, -100, 0, i * 4);
    popMatrix();
  }
}