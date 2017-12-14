int maxParticles = 1000; // the maximum number of active particles
ArrayList <Particle> particles = new ArrayList <Particle> (); // the list of particles
color BACKGROUND_COLOR = color(255);
color PGRAPHICS_COLOR = color(0);
float frames;
PGraphics pg;

void setup() {
  size(1200, 800);
  pg = createGraphics(width, height);
  pg.beginDraw();
  pg.textSize(400);
  pg.textAlign(CENTER, CENTER);
  pg.fill(PGRAPHICS_COLOR);
  pg.text("hello", pg.width/2, pg.height/2); 
  pg.endDraw();
  background(BACKGROUND_COLOR);
}

void draw() {
  frames = frameCount * 0.01;
  addRemoveParticles();
  for (Particle p : particles) {
    p.update();
    p.display();
  }
}

void mousePressed() {
  //clear screen
  background(BACKGROUND_COLOR); 
  //remove particles
  particles.clear();
}

void addRemoveParticles() {
  // remove particles with no life left
  for (int i = particles.size()-1; i >= 0; i--) {
    Particle p = particles.get(i);
    if (p.life <= 0) {
      particles.remove(i);
    }
  } 

  while (particles.size () < maxParticles) {
    particles.add(new Particle());
  }
}