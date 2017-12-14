
class Particle {
  PVector loc;
  float maxLife;
  float life;
  float lifeRate;

  Particle() {
    findIfInsideText();
    maxLife = 200;
    life = random(100, 150);
    lifeRate = random(1, 5);
  }

  void update() {
    // the velocity/direction of each Particle is based on a flowfield using Processing's () method
    float angle = noise(loc.x * 0.01, loc.y * 0.01, loc.x * .02) * TWO_PI;
    PVector vel = PVector.fromAngle(angle);
    loc.add(vel);
    life -= lifeRate; // decrease life by the lifeRate
  }

  void display() {
    stroke(map(life, 200, 0, 255, 0), 125); 
    float r = map(life, 200, 0, 7, 1);
    fill(map(r, 7, 1, 255, 0));
    ellipse(loc.x, loc.y, 1, 1); // draw ellipse
  }

  void findIfInsideText() {
    while (loc == null || !isInText (loc)) loc = new PVector(random(width), random(height));
  }

  // return if point is inside the text
  boolean isInText(PVector v) {
    return pg.get(int(v.x), int(v.y)) == PGRAPHICS_COLOR;
  }
}