String letters = "";
float textHeight;
float xPos;
float yPos;

void setup() {
  background(0);
  size(800, 800);
  stroke(255);
  fill(255);
  rectMode(CENTER);

  textHeight = 50;
  PFont f = createFont("Helvetica", textHeight);
  textSize(textHeight);
  textFont(f);
  yPos = 50;
}

void draw() {
  background(0);
  xPos = 10;

  for (int i =0; i< letters.length(); i++) {
    char c = letters.charAt(i);
    float r = random(-2, 2);
    PVector location = new PVector(xPos, yPos);
    PVector velocity = new PVector (r, r);
    //PVector reset = new PVector(-800, 50);  

    location.add(velocity);
    text(c, location.x, location.y);
    xPos += textWidth(c);
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