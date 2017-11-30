//String letters = "";

color TEXTCOLOR = color(0);
PGraphics pg;
ArrayList <Particle> particles = new ArrayList <Particle>();
Particle dot;

void setup() {
  background(255);
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background(255);

  //for (int i = 0; i < letters.length(); i++) {
  //  char c = letters.charAt(i);
  float xPos = width/2 - 150;
  float yPos = height/2 ;


  PVector location = new PVector(xPos, yPos);
  pg = createGraphics(width, height);
  pg.beginDraw();
  pg.textSize(100);
  pg.fill(TEXTCOLOR);
  pg.text("HELLO", location.x, location.y);


  //pg.text(c, location.x, location.y);
  //pg.endDraw();
  //xPos += textWidth(c);



  //SYSTEMATIC CIRCLES

  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      boolean insideText;
      if (pg.get(i, j) == TEXTCOLOR) {
        insideText = true;
      } else {
        insideText = false;
      }
      if (insideText == true) {
        Particle dot = new Particle(i, j);
        particles.add(dot);
        dot.display();
      }
      //dot.update();
    }
  }
}


//void keyPressed() {
//  if (key == BACKSPACE) {
//    if (letters.length() > 0) {
//      letters = letters.substring(0, letters.length()-1);
//    }
//  } else if (textWidth(letters + key) < width) {
//    letters += key;
//  }
//}


//Issues getting dot.update() to run ---is it because it is in an if statement?
//Issues getting the get function of a PGraphic to get the pixels of text when it is being typed live  