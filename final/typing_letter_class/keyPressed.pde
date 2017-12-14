//KEY PRESSED
void keyPressed() {
  //BACKSPACE

  if (key == BACKSPACE) {
    if (letterArray.size() > 0) {
      int letterPosition = letterArray.size()-1;
      Letter lettterToRemove = letterArray.get(letterPosition);
      lettterToRemove.removeParticles();
      letterArray.remove(letterPosition);
      background(255);
    }
    //OTHER KEYS
  } else if ((keyCode >= 32 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) ) {
    letters += key;

    //LETTER CONTRUCTOR
    Letter l = new Letter(location, key);
    l.display();

    //RETURN AT THE END
    if (location.x > width-200) {
      location.y += typeSize; 
      location.x = typeSize/2;
    }

    //KERNING
    kerning.x = l.kerning;
    kerning.y = 0;
    location.add(kerning);


    letterArray.add(l);
    particlesFromPG(); // CREATE NEW PARTICLES
  } else if ( keyCode == 10) {
    println ("return");
    location.y += 200; 
    location.x = 50;
  }
}