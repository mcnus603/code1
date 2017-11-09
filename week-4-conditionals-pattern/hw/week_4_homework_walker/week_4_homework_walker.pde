float whiteX;
float whiteY;
float pinkX;
float pinkY;
float blueX;
float blueY;
float yellowY;
float yellowX;
float yellowB;
float yellowG;
float blueSize;
float purpleX;
float purpleY;
float purpleSize;


void setup() {
  size(800, 800);
  background(0);
  rectMode(CENTER);
  whiteX = width/2;
  whiteY = height/2;
  pinkX = width/2;
  pinkY = height/2;
  blueX = width/2;
  blueY = height/2;
  yellowX = width/2;
  yellowY = height/2;
  yellowB = 160;
  yellowG = 150;
  blueSize = 5;
  purpleX = width/2;
  purpleY = height/2;
  purpleSize = 4;
  noStroke();
}

void draw() {
  float w = map(mouseX, 0, width, 1, 10);
  float h = map(mouseY, 0, height, 1, 10);

  float blueR = int(random(5));
  if (blueR == 0) {
    blueX -=10;
    yellowX+=10;
    yellowB +=10;
  } else if (blueR == 1) {
    blueX +=10;
    yellowX -=10;
    yellowG +=10;
  } else if (blueR == 2) {
    blueY -=10;
    yellowY +=10;
    yellowB -=10;
  } else if (blueR == 3) {
    blueY +=10;
    yellowY-=10;
    blueSize -=1;
  } else {
    blueSize +=1;
    yellowG -=10;
  }
  float pinkR = int(random(4));
  if (pinkR == 0) {
    pinkX -=7;
    purpleX +=10;
    purpleSize +=1;
  } else if (pinkR == 1) {
    pinkX +=7;
    purpleY +=10;
  } else if (pinkR == 2) {
    pinkY -=7;
    purpleX -=10;
    purpleSize-=1;
  } else {
    pinkY +=7;
    purpleY -=10;
  }
  float whiteR = int(random(4));
  if (whiteR == 0) {
    whiteY -= 10;
  } else if (whiteR == 1) {
    whiteX += 10;
  } else if (whiteR == 2) {
    whiteY += 10;
  } else {
    whiteX -= 10;
  } 

  if (blueSize > 15) {
    blueSize = 5;
  }
  if (purpleSize > 12) {
   purpleSize = 3; 
  }
  fill(255);
  rect(whiteX, whiteY, 4, 4);
  
  fill(250, 130, 240);
  rect(pinkX, pinkY, 4, 4);
  
  fill(115, 250, 250);
  ellipse(blueX, blueY, blueSize, blueSize);
  
  fill(250, yellowG, yellowB);
  
  ellipse(yellowX, yellowY, 7, 7);
  
  fill(100, 60, 250);
  ellipse(purpleX, purpleY, purpleSize, purpleSize);
}