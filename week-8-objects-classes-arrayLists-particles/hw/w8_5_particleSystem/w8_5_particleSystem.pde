ArrayList<ParticleSystem> systems = new ArrayList<ParticleSystem>();

void setup() {
  size(800, 800);
}

void draw() {
  background(0);
  
  for (int i = 0; i < systems.size(); i++) {
    ParticleSystem t = systems.get(i);
    t.update();
  }
  
} 

void mousePressed() {
  
  for (int i = 0; i < 3; i++) {
    systems.add(new ParticleSystem(mouseX + random(-20, 20),mouseY+ random(-20, 20)));
  }
  
}