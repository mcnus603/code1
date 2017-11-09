float angle = 0;
float x = 0;

void setup() {
  size(800, 800);
  rectMode(CENTER);
}

//when we translate we move the cooridnate system

void draw() {
  //save the starting coord system 
  background(200);
  
  translate(mouseX, mouseY);
  scale(0.8);
  rotate(radians(angle));
  angle = angle - 1; 
  fill(150);
  rect(0, 0, 300, 200);
  //go back to saved starting coord syst
  
  pushMatrix();
  translate(50, 50);
  rotate(radians(angle * 9));
  fill(50);
  rect(0, 0, 80, 80);
  
  pushMatrix();
  translate(80, 80);
  rotate(radians(angle * .1));
  fill(250);
  rect(0, 0, 40, 40);
  
  popMatrix();
  
  popMatrix();
  
  
}


//go back to an earlier translation
//save and go back to earlier translation
//pushMatrix()
//popMatrix()