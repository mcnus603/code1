
class Ball {
  float x;
  float y;
  float dx;
  float dy;
  float r;
  color c;

  Ball(float xPos, float yPos, float radius) {
    x = xPos;
    y = yPos;
    r = radius;
    dx = random(-5, 5);
    dy = random(-5, 5);
    c = color(240);
  }

  void display() {
    fill(c);
    ellipse(x, y, r*2, r*2);
    c = color(240);
  }

  void update() {
    if (r > 0) {
      r --;
    }
    if (x < r || x > width-r) {
      dx *= -1;
    }
    if (y < r || y > height-r) {
      dy *= -1;
    }

    x += dx;
    y += dy;
  }
  
  boolean isInvisible() {
   if (r == 0) {
    return true; 
   } else {
    return false; 
   }
  }

  void checkMouseCollision() {
    if (dist(x, y, mouseX, mouseY) < r) { 
      c = color(255, 200, 0);
    } else {
      c = color(240);
    }
  }

  void checkOtherCollision(Ball other) {
    if (dist(x, y, other.x, other.y) < r + other.r) {
      changeColor(color(255, 0, 50));
      other.changeColor(color(255, 0, 220));

      changeDirection();
      other.changeDirection();
    }
  }

  void changeDirection() {
    dx *= -1;
    dy *= -1;
  }

  void changeColor(color newColor) {
    c = newColor;
  }
}