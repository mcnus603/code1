class Man {
  float x; 
  float y;
  float r = 0;
  float angle = 1;

  Man() {
    x = 0;
    y = 0;
  }

  void display(float w, float h) {
    if (mousePressed) {
      pushMatrix();
      translate(width/2, height/2);
      rotate(radians(angle));
      angle+= 3;
      image(img, x, y, w, h);  
      popMatrix();
    } else {
      pushMatrix();
      
      translate(width/2, height/2);
      rotate(radians(angle));
      image(img, x, y, w, h);
      popMatrix();
    }
  }
}