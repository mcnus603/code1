String letters = "";
color TEXTCOLOR = color(0);
PGraphics pg;
ArrayList <Particle> particles = new ArrayList <Particle>();
Particle dot;

void setup() {
  background(255);
  size(800, 800);
  rectMode(CENTER);
  pg = createGraphics(width, height);
}

void draw() {
  background(255);
  pg.beginDraw();
  float xPos = 50;
  //do I need this for loop??
  for (int i = 0; i < letters.length(); i++) {
    char c = letters.charAt(i);
    float yPos = height/2 ;
    PVector location = new PVector(xPos, yPos); 
    pg.textSize(100);
    pg.fill(TEXTCOLOR);
    pg.textSize(300);
    pg.text(c, location.x, location.y);
    pg.text(c, location.x, location.y);
    xPos += textWidth(c) * 8;
  }
  pg.endDraw();

  // creating new particles
  for (int i = 0; i < pg.width; i++) {
    for (int j = 0; j < pg.height; j++) {
      boolean insideText;
      if (pg.get(i, j) == TEXTCOLOR) {
        insideText = true;
      } else {
        insideText = false;
      }
      if (insideText == true) {
        Particle dot = new Particle(i, j);
        particles.add(dot);
      }
    }
  }

  // loop and update/draw all the particles
  for (int i = 0; i < particles.size(); i++) {
    Particle p = particles.get(i);
    p.update();
    p.display();
    if (p.life <= 0) {
      particles.remove(i);
    }
  }

}

void keyPressed() {
  if (key == BACKSPACE) {
    if (letters.length() > 0) {
      letters = letters.substring(0, letters.length()-1);
    }
  } else if (textWidth(letters + key) < width) {
    letters += key;
  }
}


//Issues getting dot.update() to run ---is it because it is in an if statement?
//Issues getting the get function of a PGraphic to get the pixels of text when it is being typed live  

//creating particles then removing them from arraylist 