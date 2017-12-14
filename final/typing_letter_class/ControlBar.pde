class SliderBar {
  float w;
  float h;
  float x;
  float y;
  circleButton c;


  SliderBar(float _x, float _y, float _w, float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    c = new circleButton(x, y);
  }

  void display() {
    fill(255, 200);
    rect(x, y, w, h);
    c.display();
  }

  void update() {
    c.update(x, y, w);
  }
}

class circleButton {
  float x;
  float y;
  float r = 20;

  circleButton(float _x, float _y) {
    x = _x;
    y = _y;
  }

  void display () {
    fill(255);
    ellipse(x, y, r, r);
    rColorValue = 0;
  }

  void update(float _x, float _y, float _w ) {

    if (((mouseX > _x  && mouseX < (_x + _w) && (mouseY > _y - r && mouseY < (_y + r))))) {
      x = mouseX;
      rColorValue = map(x, _x, _x + _w, 0, 255);
    }
  }
}