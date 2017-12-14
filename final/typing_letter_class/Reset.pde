
void mousePressed() { //RESET
  //clear screen
  background(BACKGROUND_COLOR); 
  particles.clear();
  location.x = typeSize/2;
  location.y = typeSize;

  for (int i =0; i < letterArray.size(); i++) { //CLEAR PARTICLES
    letterArray.remove(i);
    pg.clear(); //CLEAR PGRAPHICS
  }

  for (int i = particles.size()-1; i >= 0; i--) { //CLEAR PARTICLES
    particles.remove(i);
  }



  //new pg
}