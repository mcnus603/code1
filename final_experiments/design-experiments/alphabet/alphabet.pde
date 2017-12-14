PImage[] letters = new PImage[26];
int moveHorizontal;
int tracking = 100;
int leading = 100;
int xPos; 
int yPos;
int moveVertical;

void setup() {
  size(800, 800);
  background(255);
  for (int i = 0; i < 26; i++) {
    letters[i] = loadImage("letter_" + (i + 97) + ".png");
  }
}

void draw() {
  xPos = moveHorizontal * tracking;
  yPos = moveVertical * leading;
}

void keyPressed() {
  for (int i = 0; i < 26; i ++) {
    if (key == (97 + i)) {
      image(letters[i], xPos, yPos); 
      moveHorizontal++;
      if (xPos > width - (tracking + 20)) {
        moveVertical++;
        moveHorizontal = 0;
      }
      if (xPos > width - (tracking + 20) && yPos > height - (leading + 20)) {
        background(255);
        moveVertical = 0;
        moveHorizontal = 0;
      }
    }
  }
}
