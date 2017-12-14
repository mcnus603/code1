class Particle {
  PVector position;
  //PVector velocity;
  //PVector acceleration;
  float r;
  float life;

  Particle(float x, float y) {
    position = new PVector(x, y);
    float angle = noise(position.x * 0.01, position.y * 0.01) * TWO_PI;
    PVector velocity = PVector.fromAngle(angle);
    life = 100;
    r = 3;
    noStroke();
    position.add(velocity);
  }

  void display() {
    fill(255, 20, 30, 125);
    ellipse(position.x, position.y, r, r);
  }

  void update() {
    life--;
    isInText(position);
    println(life);
  }

  boolean isInText(PVector v) {
    return pg.get(int(v.x), int(v.y)) == TEXTCOLOR;
  }
}