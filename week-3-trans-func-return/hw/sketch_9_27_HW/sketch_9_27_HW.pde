float y = 0;
float angle = 100; 
float xPoint = 400;
float yPoint = 300; 
PImage kiteImage;
PImage cloud1;
PImage cloud2;
color sky = color(150, 234, 232);

void setup() {
  size(800, 500);
  rectMode(CENTER);
  drawGrass();
  drawSky();
  kiteImage = loadImage("kite.png");
  cloud1 = loadImage("cloud1.png");
  cloud2 = loadImage("cloud2.png");
}

void draw() {
  y = y + 0.3;
  drawGrass();
  drawSky();
  pushMatrix();
  angle = angle + 2;
  translate(100, 100);
  rotate(radians(angle * 2));
  drawSun();
  popMatrix();
  drawClouds(y, 200, 200);
  drawClouds(-300 + y, 150, 200);
  drawClouds(400 + y, 100, 100);
  drawClouds(-700 + y, 75, 230);
  drawKite();
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
  fill(sky);
  float skyX = 400;
  float skyY = 200;
  float skyWidth = 800;
  float skyHeight = 400;
  rect(skyX, skyY, skyWidth, skyHeight);
}

void drawSun() {
  float sunX = 0;
  float sunY = 0;
  float sunD = 90;
  stroke(250, 200, 20);
  strokeWeight(4);
  line(sunX, sunY, sunX + 75, sunY + 75);
  line(sunX, sunY, sunX - 75, sunY - 75);
  line(sunX, sunY, sunX + 75, sunY - 75);
  line(sunX, sunY, sunX - 75, sunY + 75);
  line(sunX, sunY, sunX + 50, sunY + 100);
  line(sunX, sunY, sunX - 50, sunY - 100);
  line(sunX, sunY, sunX + 100, sunY - 50);
  line(sunX, sunY, sunX - 100, sunY + 50);
  line(sunX, sunY, sunX + 20, sunY + 120);
  line(sunX, sunY, sunX - 20, sunY - 120);
  line(sunX, sunY, sunX + 120, sunY - 20);
  line(sunX, sunY, sunX - 120, sunY + 20);
  noStroke();
  fill(250, 240, 25);
  ellipse(sunX, sunY, sunD, sunD);
}


void drawClouds(float x, float y, float opacity) {
  float firstCloudX = x;
  float firstCloudY = y;
  float firstCloudWidth = 300;
  float firstCloudHeight = 120;
  image(cloud1, x, y, firstCloudWidth, firstCloudHeight);
  image(cloud2, x - 300, y - 100, firstCloudWidth, firstCloudHeight);
}

void drawKite() {
  float kiteX = mouseX + 80;
  float kiteY = 80 + mouseY/3;
  float kiteTop = kiteY - 70;
  float kiteBottom = kiteY + 70;
  float kiteRight = kiteX + 50; 
  float kiteLeft = kiteX - 50;
  float kiteWidth = 120; 

  float kiteHeight = 160;
  stroke(250);
  strokeWeight(2);
  translate(50, 50);
  float stringX = mouseX; 
  float stringY = 500;
  line(stringX, stringY, kiteX, kiteBottom);
  image(kiteImage, kiteX - 50, kiteY - 60, kiteWidth, kiteHeight);
}