color TEXTCOLOR = color(0);
PGraphics pg;
String letters = "";

void setup() {
  background(0);
  size(800, 800);
  noStroke();

}

void draw() {


    PVector location = new PVector(150, 450);

    pg = createGraphics(width, height);
    pg.beginDraw();
    pg.textSize(200);
    pg.fill(TEXTCOLOR);
    pg.text("Hello", location.x, location.y);
    pg.endDraw();

    //xPos += textWidth(c);
  

 //RANDOM
  for (int i = 0; i < 200; i++) {
    int x = (int) random(width);
    int y = (int) random(height);

    boolean insideText;
    if (pg.get(x, y) == TEXTCOLOR) {
      insideText = true;
    } else {
      insideText = false;
    }
    if (insideText == true) {
      pushMatrix();
      translate(x, y);
      fill(random(0, 255), random(0,255), random(0, 255), 50);
      ellipse(0, 0, 3, 3);
      popMatrix();
    }
  }


  //RANDOM CIRCLES
  //for (int i = 0; i < 200; i++) {
  //  int x = (int) random(width);
  //  int y = (int) random(height);

  //  boolean insideText;
  //  if (pg.get(x, y) == TEXTCOLOR) {
  //    insideText = true;
  //  } else {
  //    insideText = false;
  //  }

  //  if (insideText == true) {
  //    pushMatrix();
  //    translate(x, y);
  //    fill(100);
  //    ellipse(0, 0, 10, 10);
  //    popMatrix();
  //  }
  //}
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