boolean switchState = false; 

void setup() {
  size(600, 600);
}

void draw() {
    if (mousePressed == true) {
     if(dist(mouseX, mouseY, width/2, height/2) < 50) {
       switchState = true;
     }
    }
    
  if (switchState == true) {
    background(255);
  } else {
    background(0);
  }

  ellipse(width/2, height/2, 100, 100);
  
  switchState = false;
  
  
}

//void mousePressed() {
//  if (dist(mouseX, mouseY, width/2, height/2) < 50) {
//    switchState = !switchState;
//  }
//}