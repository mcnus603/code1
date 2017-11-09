class Paddle {
  float x;
  float y;
  float w;
  float h;
  int playerNum;
  color c;

  Paddle(int whichPlayer) {
    playerNum = whichPlayer;
    if (whichPlayer == 0) {
      c = color(255, 20, 30);
      x = 30;
      y = height/2;
      w = 20;
      h = 150;
    } else if (whichPlayer == 1) {
       c = color(30, 20, 255);
      y = height/2;
      w = 20;
      h = 150;
      x = width-30-w;
    
    }
  }
    void update() {
    if (playerNum == 0) {
      if (p1Up) {
        y-=10;
      } 
      if (p1Down) {
        y+=10;
      }
    }
    if (playerNum == 1) {
      if (p2Up) {
        y-=10;
      } 
      if (p2Down) {
        y+=10;
      }
    }
    

  }


  void display() {
    rectMode(CORNER);
    fill(c);
    rect(x, y, w, h);
  }
}