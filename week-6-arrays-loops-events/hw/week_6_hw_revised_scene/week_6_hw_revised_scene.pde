int state = 0;
int buttonSize = 20;
int leftButtonX = 250;
int leftButtonY = 500;
int rightButtonX = 350;
int rightButtonY = 500;
int topButtonX = 300;
int topButtonY = 450;
int bottomButtonX = 300;
int bottomButtonY = 550;

int numBalls = 50; 
float y [] = new float[numBalls];
float x[] = new float[numBalls];
float changeHeight [] = new float[numBalls];
float speed [] = new float[numBalls];
int ballSize [] = new int[numBalls];
int r [] = new int[numBalls];
int g [] = new int[numBalls];
int b [] = new int[numBalls];


void setup() {
  size(600, 600);
  background(255);

  for (int i = 0; i < numBalls; i ++) {
    x[i] = random(width);
    y[i] = random(height);
    speed[i] = random(1, 8);
    changeHeight[i] = 0;
    ballSize[i] = int(random(15, 50));
    r[i] = int(random(255));
    g[i] = int(random(100, 250)); 
    b[i] = int(random(100, 250));
  }
}

void draw() {
  background(255);
  noStroke();

  for ( int i = 0; i < numBalls; i++) {
    if (x[i] > 600 + ballSize[i]/2) {
      x[i] = -ballSize[i]/2;
    }
    x[i] += speed[i];
    y[i] += changeHeight[i];
    fill(r[i], g[i], b[i]);
    ellipse(x[i], y[i], ballSize[i], ballSize[i]);

    if (dist(leftButtonX, leftButtonY, mouseX, mouseY) < buttonSize/2 && mousePressed == true) {
      speed[i] -= .5;
    }
    if (dist(rightButtonX, rightButtonY, mouseX, mouseY) < buttonSize/2 && mousePressed == true) {
      speed[i] += .5;
    }
    if (dist(topButtonX, topButtonY, mouseX, mouseY) < buttonSize/2 && mousePressed == true) {
      changeHeight[i] -= 2;
    } else if (dist(bottomButtonX, bottomButtonY, mouseX, mouseY) < buttonSize/2 && mousePressed == true) {
      changeHeight[i] += 2;
    } else {
      changeHeight[i] =0;
    }
    if (speed[i] > 20 || speed[i] < 1) {
      speed[i] = 1;
    }
  }

  fill(0);
  buttonHoverEffect(leftButtonX, leftButtonY, buttonSize);
  buttonHoverEffect(rightButtonX, rightButtonY, buttonSize);
  buttonHoverEffect(topButtonX, topButtonY, buttonSize);
  buttonHoverEffect(bottomButtonX, bottomButtonY, buttonSize);
}

void buttonHoverEffect(int xVal, int yVal, int buttonVal) {
  if (dist(xVal, yVal, mouseX, mouseY) < buttonVal/2) {
    fill(100); 
    ellipse(xVal, yVal, buttonVal, buttonVal);
  } else {
    fill(0); 
    ellipse(xVal, yVal, buttonVal, buttonVal);
  }
}