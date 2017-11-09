class Ball {
  float x;   //x position
  float y;   //y position
  float dx;  //x velocity
  float dy;  //y velocity
  float size;
  int trailNum = 7;
  float[] xTrail = new float[trailNum];
  float[] yTrail = new float[trailNum];

  Ball() {
    x = width/2;
    y = height/2;
    dx = 10;  
    dy = random(-3, 3);
    size= 20;
    
    for (int i = 0; i < trailNum; i++) {
      xTrail[i] = width/2;
      yTrail[i] = height/2;
    }
  }


  void display() {
    noStroke();
    rectMode(CENTER);
    for (int i = 0; i < trailNum -1; i++) {
      xTrail[i] = xTrail[i+1];
      yTrail[i] = yTrail[i+1];
    }

    xTrail[xTrail.length -1] = x;
    yTrail[yTrail.length -1] = y;
    
    for (int i = 0; i <trailNum; i++) {
          fill(190, 245, 25, map(i, 0, trailNum, 0, 255));
          rect(xTrail[i], yTrail[i], size- ((trailNum-i) *2), size- ((trailNum-i) *2) );
    }

  }

  void update() {
    x += dx;
    if (x < 0 || x > width) {
      if (x < 0) {
        p2Score++;
        if (size > 5) {
          size--;
        }

        if (balls.size() < 7) {
          balls.add(new Ball());
        }
      }
      if (x > width) {
        p1Score++;
        if (balls.size() < 7) {
          balls.add(new Ball());
        }
        if (size > 5) {
          size--;
        }
      }

      x = width/2;
      y = height/2;
      dx = -dx; 
      dy = random(-3, 3);
    } 
    //top border
    if (y < 0 || y > height) {
      dy *= -1;
      y += dy;
    } else { 
      y += dy;
    }
  }

  void checkCollisionWithPaddle(Paddle p) {
    if (x > p.x && x < p.x + p.w) {
      if (y > p.y && y < p.y + p.h) {
        dx = -dx;
        dy = random(-10, 10);
        fill(0, 255, 0);
      }
    }
  }
}