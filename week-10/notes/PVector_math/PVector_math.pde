void setup() {
  size(500, 300);
}


void draw() {
  background(255);
  strokeWeight(2);
  stroke(0);
  noFill();

  translate(width/2, height/2);
  ellipse(0, 0, 4, 4);

  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);

  mouse.sub(center);
  //mouse.mult(2);
   
  //mouse.normalize();
  //mouse.mult(50);
  
  mouse.setMag(50);
  
  //float m = mouse.mag();
  //rect(0, 0, m, 20);
  
 line(0, 0, mouse.x, mouse.y); 
 
}

//dot product and cross product 
//vector u * n 
//multiplication means scale 
//scale it by a scalar value single value 
//same direction but grow its length/magnitute 
//normalize is to reduce or grow it to the length of 1
//to do this mathematically -- divide it by its mag
//set mag, normalizes and multiplies in one op