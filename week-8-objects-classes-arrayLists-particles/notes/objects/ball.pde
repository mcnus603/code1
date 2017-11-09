class Ball {
  float x; 
  float y; 
  float r;
  float dx; 
  float dy; 
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
    ellipse(x, y, r *2, r * 2);
    c = color(240);
  }

  void update() {
    if (x < r || x > width - r) {
      dx *= -1;
    }
    if (y < r || x > height - r) {
      dy *= -1;
    }

    x += dx; 
    y += dy;
  }

  void checkMouseCollision() {
    if (dist(x, y, mouseX, mouseY) < r) {
      c = color (220, 100, 60);
    } else {
      c = color(240);
    }
  }

  void checkOtherCollision(Ball other) {
    if (dist(x, y, other.x, other.y) < other.r + other.r) {
      c = color(255, 0, 50);
      other.c = color(255, 0, 220);
    }
  }
}