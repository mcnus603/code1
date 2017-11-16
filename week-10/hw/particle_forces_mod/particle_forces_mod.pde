ArrayList<Particle> particles = new ArrayList<Particle>();
PVector rotaterPosition;
Rotater r1;
float backgroundColor;

void setup() {
  size(1000, 600);
  background(50);
  r1 = new Rotater(0.03, 0.01);

}

void draw() {
 
  background(map(rotaterPosition.y, 0, height, 50, 200),20, 200);

  r1.display();
  r1.update();
  particles.add(new Particle(width/2, height- 50));

  for (int i = 0; i < particles.size(); i++) {


    Particle p = particles.get(i);
    p.addRepel(mouseX, mouseY, 40);
    p.addAttract(rotaterPosition.x, rotaterPosition.y, 80);
    p.update();
    p.display();

    if (p.life < 0) {
      particles.remove(i);
    }
  }
}