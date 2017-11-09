float angle = 0;
float x = 0;

void setup() {
  size(800, 800);
  rectMode(CENTER);
}


void draw() {
  
  noStroke();
  fill(255, 10);
  rect(0, 0, width * 2, height *2);
 
  
  pushMatrix();
  translate(width/2, height/2);
  scale(0.8);
  rotate(radians(angle));
  angle = angle - 1; 
  fill(255);
  //rect(0, 0, 200, 200);
  //go back to saved starting coord syst

  pushMatrix();
  translate(150, 150);
  rotate(radians(-angle * 2.2));
  rect(0, 0, 80, 80);

  pushMatrix();
  translate(80, 80);
  rotate(radians(angle * 3));
  //rect(0, 0, 40, 40);

  popMatrix();
  popMatrix();
  popMatrix();
}


//go back to an earlier translation
//save and go back to earlier translation
//pushMatrix()
//popMatrix()