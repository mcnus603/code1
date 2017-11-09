class Paddle {
  float x;
  float y;
  float w; 
  float h;

  Paddle(float _x, float _y) {
    x = _x;
    y = _y;
    w = 5;
    h= 100;
  }


  void display() {
    fill(0);
    rect(x, y, w, h);
  }
  
void moveUp () {
  y -= 20;
  
}

void moveDown() {
  y += 20;
  
}
}