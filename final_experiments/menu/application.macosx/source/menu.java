import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class menu extends PApplet {

SliderBar r;
float rColorValue;

float menuHeight = 100;
float menuY;

float controlBarLength = 200;
float controlBarHeight = 5;

public void setup() {
  
  menuY = height - menuHeight;
  r = new SliderBar(100, menuY + 20, controlBarLength, controlBarHeight);
  //g = new SliderBar(100, menuY + 50, controlBarLength, controlBarHeight);
  //b = new SliderBar(100, menuY + 80, controlBarLength, controlBarHeight);
}

public void draw() {
  background(255);
  controls();
}


public void controls () {
  noStroke();
  fill(0);

  rect(0, menuY, width, menuHeight);
  fill(255, 100, 20);
  r.display();
  r.update();

  if ((mouseX > r.x && mouseX < (r.x + r.w)) && (mouseY > r.y && mouseY < (r.y + r.h))) {
   println("here it is"); 
  }

}
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

  public void display() {
    fill(255, 100, 20);
    rect(x, y, w, h);
    c.display();
  }

  public void update() {
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

  public void display () {
    fill(30, 100, 255);
    ellipse(x, y, r, r);
    rColorValue = 0;
  }

  public void update(float _x, float _y, float _w ) {
    
    if (((mouseX > _x  && mouseX < (_x + _w) && (mouseY > _y - r && mouseY < (_y + r))))) {
      x = mouseX;
      rColorValue = map(x, _x, _x + _w, 0, 255);
    }
  }
}
  public void settings() {  size(800, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "menu" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
