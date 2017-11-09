
//after every point, a new ball is created 

int p1Score;
int p2Score;
color backgroundColor;
boolean p1Up = false;
boolean p1Down = false;
boolean p2Up = false;
boolean p2Down = false;
float increment;
ArrayList <Ball> balls = new ArrayList <Ball> ();

Ball b;
Paddle p1;
Paddle p2;

void setup() {
  size(1000, 700);
  b = new Ball();
  p1 = new Paddle(0);
  p2 = new Paddle(1);
  backgroundColor = color(0, 0, 0);
  increment = 2; 
  balls.add(new Ball());
}

void draw() {
  background(backgroundColor);
  fill(255);
  rect(width/2 - 1, 0, 2, height);
  for (int i = 0; i < balls.size(); i++) {
    Ball b = balls.get(i);
    b.checkCollisionWithPaddle(p1);
    b.checkCollisionWithPaddle(p2);
    b.update();
    b.display();
  }

  p1.update();
  p1.display();
  p2.update();
  p2.display();

  textSize(36);
  textAlign(CENTER, CENTER);
  fill(255, 20, 50);
  text(p1Score, width/2 - 100, 50);
  fill(50, 20, 255);
  text(p2Score, width/2 + 100, 50);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      p2Up = true;
    }
    if (keyCode == DOWN) {
      p2Down = true;
    }
  } else {
    if (key == 'w') {
      p1Up = true;
    }
    if (key == 's') {
      p1Down = true;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      p2Up = false;
    }
    if (keyCode == DOWN) {
      p2Down = false;
    }
  } else {
    if (key == 'w') {
      p1Up = false;
    }
    if (key == 's') {
      p1Down = false;
    }
  }
}