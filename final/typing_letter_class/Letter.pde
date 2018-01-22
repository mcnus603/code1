//everytime key is pressed create new letter object 
//pass key that was pressed through the constructor 
//use string abd text width to tell position -- position in string 
//sting or array list full of the letter objects 
//this class creates a PGraphics class 

class Letter {
  //PVector position;
  float wholeTextWidth = 0;
  PVector pos;
  char c;
  float kerning;

  Letter(PVector _position, char _c) {
    pos = _position;
    c = _c;
  }

  void removeParticles() {
    println("removed particles");
    particles.clear();
  }

  void display() {
    pg.beginDraw();
    pg.textSize(typeSize);
    pg.fill(TEXTCOLOR);
    pg.text(c, pos.x, pos.y);
    xPos += textWidth(c) * 12;
    kerning = textWidth(c) * 18;
    wholeTextWidth += xPos;
  }
}


//RESET FORMAL QUALITIES AND DISPLAY ALL THE LETTERS
//refresh background, clear particles, clear PGraphic 


void displayAllLetters () {
  background(255);
  particles.clear();
  pg.clear();
  location.x = typeSize/2;
  location.y = typeSize;


  for (int i = 0; i < letters.length(); i++) {
    char c = letters.charAt(i);
    Letter l = new Letter(location, c);
    l.display();

    //RETURN AT THE END
    if (location.x > width-200) {
      location.y += (typeSize + typeSize/10); 
      location.x = typeSize/2;
    }

    //KERNING
    kerning.x = l.kerning;
    kerning.y = 0;
    location.add(kerning);

    letterArray.add(l);
    particlesFromPG(); // CREATE NEW PARTICLES
  }
}