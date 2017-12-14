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

public class typing_letter_class extends PApplet {

int maxParticles = 500;
String letters = "";
PGraphics pg;
ArrayList <Particle> particles = new ArrayList <Particle>();
ArrayList <Letter> letterArray = new ArrayList <Letter> ();
Particle dot;
Letter l;

int BACKGROUND_COLOR = color(255);
int TEXTCOLOR = color(0);

PVector location;
PVector returnLine;
PVector kerning;
float xPos;
float yPos;

SliderBar red;
SliderBar min;
float rColorValue;
float minLife;
float maxLife;
float typeSize = 250;


public void setup() {
  
  background(255);
  
  rectMode(CENTER);

  pg = createGraphics(width, height);

  yPos = typeSize;
  xPos = typeSize/3;

  location = new PVector (xPos, yPos);
  returnLine = new PVector(0, 100);
  kerning = new PVector (100, 0);


  red = new SliderBar(100, height - 60 + 20, 200, 5);
  min = new SliderBar(400, height - 60 + 20, 200, 5);
  
}

public void draw() {
  addRemoveParticles();
  controls();



  //UPDATE AND DISPLAY
  for (int i = 0; i < particles.size(); i++) {
    Particle p = particles.get(i);
    p.update();
    p.display();
    if (p.life <= 0) {
      particles.remove(i);
    }
  }
}
class SliderBar {
  float w;
  float h;
  float rectX;
  float rectY;
  float circleX;
  float r = 15;
  float mapedValue;
  float mapMin;
  float mapMax;


  SliderBar(float _x, float _y, float _w, float _h) {
    rectX = _x;
    rectY = _y;
    circleX = rectX - r/2;
    w = _w;
    h = _h;
  }

  public void display() {
    fill(0, 10);
    rect(rectX, rectY, w, h);
    fill(230);
    ellipse(circleX, rectY, r, r);
  }

  public void update() {
    if ((mouseX > rectX  && mouseX < (rectX + w) && (mouseY > rectY - r && mouseY < (rectY + r)))) {
      circleX = mouseX;
    }
  }
}
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

  public void removeParticles() {
    println("removed particles");
    particles.clear();
  }

  public void display() {
    pg.beginDraw();
    pg.textSize(typeSize);
    pg.fill(TEXTCOLOR);
    pg.text(c, pos.x, pos.y);
    xPos += textWidth(c) * 12;
    kerning = textWidth(c) * 18;
    wholeTextWidth += xPos;
  }
}
//FLOW FIELD PARTICLES

class Particle {
  PVector loc;
  float maxLife;
  float life;
  float lifeRate;

  Particle() {
    findIfInsideText();
    life = random(minLife, maxLife);
    lifeRate = random(3, 5);
  }

  public void update() {
    float angle = noise(loc.x * 0.01f, loc.y * .01f) * TWO_PI;
    PVector vel = PVector.fromAngle(angle);
    loc.add(vel);
    life -= lifeRate; // decrease life by the lifeRate
  }

  public void display() {
    stroke(map(life, 200, 0, 255, 0), 125); 
    float r = map(life, 200, 0, 7, 1); 

    fill(rColorValue, map(loc.x, 0, width, 255, 0), map(loc.y, 0, height, 255, 0));
    ellipse(loc.x, loc.y, r, r); // draw particle
  }

  public void findIfInsideText() {
    while (loc == null || !isInText (loc)) loc = new PVector(random(width), random(height));
  }

  // return if point is inside the text
  public boolean isInText(PVector v) {
    return pg.get(PApplet.parseInt(v.x), PApplet.parseInt(v.y)) == TEXTCOLOR;
  }
}
public void addRemoveParticles() { //REMOVE PARTICLES AND KEEP PARTICLES FLOWING
  for (int i = particles.size()-1; i >= 0; i--) {
    Particle p = particles.get(i);
    if (p.life <= 0) {
      particles.remove(i);
    }
    while (particles.size () < maxParticles) {
      particles.add(new Particle());
    }
  }
}
public void controls () {
  noStroke();
  fill(255);
  rectMode(CORNER);
  rect(0, height-100, width, 100);
  red.display();
  min.display();

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

public void mousePressed() { //RESET

  if (mouseX > width - 80 && mouseX < width - 80 + 40 && mouseY > height - 50 && mouseY < height - 50 + 20) {
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
  } else if (mouseX > width - 80 && mouseX < width - 80 + 40 && mouseY > height - 80 && mouseY < height - 50 + 20) {
    PImage excludeControls = get(0, 0, width, height - 100);
    excludeControls.save("artwork/image-" + frameRate +".png");
  }
}

public void mouseDragged() {
}
public void particlesFromPG() { //CREATE PARTICLES FROM PG FUNCTION
  for (int i = 0; i < pg.width; i+=10) {
    for (int j = 0; j < pg.height; j+=10) {
      boolean insideText;
      if (pg.get(i, j) == TEXTCOLOR) {
        insideText = true;
      } else {
        insideText = false;
      }
      if (insideText == true) {
        Particle dot = new Particle();
        particles.add(dot);
      }
    }
  }
}
//KEY PRESSED
public void keyPressed() {

    //ALL KEYS
    if ((keyCode >= 32 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) ) {
    letters += key;

    //LETTER CONTRUCTOR
    Letter l = new Letter(location, key);
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
    
  } else if ( keyCode == 10) {
    location.y += (typeSize + typeSize/10) ; 
    location.x = typeSize/2;
  }
}
  public void settings() {  size(1200, 800);  smooth(16); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "typing_letter_class" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
