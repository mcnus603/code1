class Particle {
  float x; 
  float y;
  float dx;
  float dy;
  int r;
  int g;
  int b;
  int a;
  float s;
  float life;

  //constructor
  Particle(float _x, float _y) {
    x = _x + random(-1, 1);
    y = _y;
    dy = random(-6);
    dx = random(-2, 2);
    r = 255;
    g = 20;
    b = 20;
    a = 100;
    s = 30;
    life = 100;
  }

  void display() {
    noStroke();
    fill(r, g, b, a);
    ellipse(x, y, s, s);
  }

  void update() {
    s-= .5;
    life--;
    a -= 2;
    r --;
    b--;
    g += 4;
    x += dx;
    y += dy;
  }

  void setSize(float siz) {
    s = siz;
  }
}