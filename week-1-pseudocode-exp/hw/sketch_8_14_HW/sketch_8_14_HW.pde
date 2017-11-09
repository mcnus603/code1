float y = 200;

void setup() {
  size(800, 500);
  rectMode(CENTER);
  drawGrass();
  drawSky();
}

void draw() {
  y = y + 0.3;
  drawGrass();
  drawSky();
  drawClouds(y, 200, 100);
  drawClouds(-300 + y, 300, 200);
  drawClouds(400 + y, 300, 100);
  drawClouds(-700 + y, 300, 230);
  drawKite();
  
  //rect(200, 200, 50, 70);
  //rotate(radians(45));
}


void drawGrass() {
  noStroke();
  fill(150, 234, 188);
  float grassX = 400;
  float grassY = 450;
  float grassWidth = 800;
  float grassHeight = 100;  
  rect(grassX, grassY, grassWidth, grassHeight);
}

void drawSky() {
  noStroke();
  fill(150, 234, 232);
  float skyX = 400;
  float skyY = 200;
  float skyWidth = 800;
  float skyHeight = 400;
  rect(skyX, skyY, skyWidth, skyHeight);
}


void drawClouds(float x, float y, float opacity) {
  float firstCloudX = x;
  float firstCloudY = y;
  float firstCloudWidth = 100;
  float firstCloudHeight = 120;


  fill(255, 255, 255, opacity);
  ellipse(firstCloudX, firstCloudY, firstCloudWidth, firstCloudHeight);
  ellipse(firstCloudX - 30, firstCloudY - 80, firstCloudWidth, firstCloudHeight);
  ellipse(firstCloudX + 60, firstCloudY - 40, firstCloudWidth + 20, firstCloudHeight + 20);
  ellipse(firstCloudX - 60, firstCloudY - 20, firstCloudWidth - 30, firstCloudHeight - 30);
}

void drawKite() {

  //top of kite
  float kiteX = mouseX + 80;
  float kiteY = 150 + mouseY/3;
  float kiteTop = kiteY - 70;
  float kiteBottom = kiteY + 70;
  float kiteRight = kiteX + 50; 
  float kiteLeft = kiteX - 50;
  float stringX = mouseX; 
  float stringY = 500;
  float kiteWidth = 50; 
  float kiteHeight = 70;
  

  fill(252, 84, 84);
  triangle(kiteX, kiteY, kiteX, kiteTop, kiteLeft, kiteY);
  fill(109, 134, 226);
  triangle(kiteX, kiteY, kiteX, kiteTop, kiteRight, kiteY);
  fill(109, 226, 148);
  triangle(kiteX, kiteY, kiteX, kiteBottom, kiteRight, kiteY);
  fill(234, 237, 119);
  triangle(kiteX, kiteY, kiteX, kiteBottom, kiteLeft, kiteY); 
  //kitestring
  stroke(250);
  line(stringX, stringY, kiteX, kiteBottom);
  //rotate(radians(40));
}