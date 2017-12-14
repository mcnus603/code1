int maxParticles = 1000;
String letters = "";

PGraphics pg;
ArrayList <Particle> particles = new ArrayList <Particle>();
ArrayList <Letter> letterArray = new ArrayList <Letter> ();

Particle dot;
Letter l;

float xPos;
float yPos;

color BACKGROUND_COLOR = color(255);
color TEXTCOLOR = color(0);

PVector location;
PVector returnLine;
PVector kerning;

SliderBar r;
float rColorValue;
float typeSize = 250;


void setup() {
  smooth(16);
  background(255);
  size(1200, 800);
  rectMode(CENTER);

  pg = createGraphics(width, height);

  yPos = typeSize;
  xPos = typeSize/3;

  location = new PVector (xPos, yPos);
  returnLine = new PVector(0, 100);
  kerning = new PVector (100, 0);

  
  r = new SliderBar(100, height - 100 + 20, 200, 5);
}

void draw() {
  addRemoveParticles();
  controls();

  //UPDATE AND DISPLAY
  for (int i = 0; i < particles.size(); i++) {
    Particle p = particles.get(i);
    p.update();
    p.display();
    if (p.life <= 0) {
      particles.remove(i);
    }
  }
}