void setup() {
  size(800, 800);
}


void draw() {
  background(240);
  fill(255);
  drawFace(0, height/2);
  drawFace(200, height/2);
  drawFace(400, height/2);
  drawFace(600, height/2);
  drawFace(800, height/2);
  
  //ellipse(500, 500, 500, 500);
  circle(200, 200, 500);
  greyScaleCircle(mouseX, mouseY, 100, mouseX);
}

void greyScaleCircle(float x, float y, float d, float c) {
  fill(c);
  ellipse(x, y, d, d); 
}

void circle(float x, float y, float d){
  ellipse(x, y, d, d); 
}

void doSomething() {
  int x = 0;
  //println(x);
}

void drawFace(float x, float y) {
  float faceMiddleX = x;
  float faceMiddleY = y;
  float rEyeX = faceMiddleX + 50;
  float eyeY = faceMiddleY - 10;
  float lEyeX = faceMiddleX - 50;
  float faceWidth = 200;
  float faceHeight = 300;
  float eyeWidth = 40;
  float eyeHeight = 30;
  float browWidth = 40; 
  float browHeight = 5;
  float rEyebrowY = eyeY - 30;
  float lEyebrowY = eyeY - 20;
  float raisedEyebrowY = rEyebrowY + mouseY * 0.01;

  //face
  ellipse(faceMiddleX, faceMiddleY, faceWidth, faceHeight);
  //eyes
  ellipse(rEyeX, eyeY, eyeWidth, eyeHeight);
  ellipse(lEyeX, eyeY, eyeWidth, eyeHeight);
  //brows
  ellipse(rEyeX, raisedEyebrowY, browWidth, browHeight);
  ellipse(lEyeX, lEyebrowY, browWidth, browHeight);
}







//_________________ rest of face____________
////nose
//triangle(400, 375, 375, 425, 425, 425);
////mouth
//ellipse(400, 475, 100, 30);
////ears 
//ellipse(525,400, 50, 70);
//ellipse(275, 400, 50, 70);
////hair
//line(100, 250, 100, 800);

// ___________________ notes_______________
//draw face function 
//FUNCTION SCOPE--declaring var in scope, cant use it out of scope
//fresh background;
//background(240);
//supplying arguments or parameters to a function like in the ellipse function 
//we have to both declare and call functions 