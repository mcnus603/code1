//SLIDERBAR CLASS

class SliderBar {
  float w, h, rectX, rectY, circleX, mapedValue, mapMin, mapMax;
  float r = 15;

  SliderBar(float _x, float _y, float _w, float _h) {
    rectX = _x;
    rectY = _y;
    circleX = rectX - r/2;
    w = _w;
    h = _h;
  }

  void display() {
    fill(0, 10);
    rect(rectX, rectY, w, h);
    fill(230);
    ellipse(circleX, rectY, r, r);
  }

  void update() {
    if ((mouseX > rectX  && mouseX < (rectX + w) && (mouseY > rectY - r && mouseY < (rectY + r)))) {
      circleX = mouseX;
      displayAllLetters();
    }
  }
}


void controls () {
  noStroke();
  fill(255);
  rectMode(CORNER);
  rect(0, height-100, width, 100);
  red.display();
  min.display();
  
//IF HOLDING MOUSE/SLIDING BAR
  if (mousePressed==true) {
    red.update(); 
    min.update();

    rColorValue = map(red.circleX, red.rectX, red.rectX + red.w, 0, 255);
    minLife = map(min.circleX, min.rectX, min.rectX + min.w, 50, 300);
    maxLife = map(min.circleX, min.rectX, min.rectX + min.w, 20, 400);
  }
  fill(0);

  textSize(15);
  fill(100);
  rectMode(CORNER);
  text("reset", width - 80, height - 50, 40, 20);
  text("save", width - 80, height - 80, 40, 20);
}

void mousePressed() { //RESET

  if (mouseX > width - 80 && mouseX < width - 80 + 40 && mouseY > height - 50 && mouseY < height - 50 + 20) {
    //clear screen
    background(BACKGROUND_COLOR); 
    particles.clear();
    location.x = typeSize/2;
    location.y = typeSize;
    letters ="";

    for (int i =0; i < letterArray.size(); i++) { //CLEAR PARTICLES
      letterArray.remove(i);
      pg.clear(); //CLEAR PGRAPHICS
    }

    for (int i = particles.size()-1; i >= 0; i--) { //CLEAR PARTICLES
      particles.remove(i);
    }
    //SAVE IMAGE
  } else if (mouseX > width - 80 && mouseX < width - 80 + 40 && mouseY > height - 80 && mouseY < height - 50 + 20) {
    PImage excludeControls = get(0, 0, width, height - 100);
    excludeControls.save("artwork/image-" + frameRate +".png");
  }
}