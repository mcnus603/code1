class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float r;
  float maxspeed;    

  Particle(float x, float y) {

    position = new PVector(x, y);
    float angle = random(TWO_PI);
    acceleration = new PVector (0, 0);
    velocity = new PVector(cos(angle), sin(angle));
    

    r = 5;
    maxspeed = 3;
  }

  void display() {
    fill(0);
    pushMatrix();
    translate(position.x, position.y);
    ellipse(0, 0, r, r);
    popMatrix();
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(maxspeed);
    position.add(velocity);

    
  }
  
}