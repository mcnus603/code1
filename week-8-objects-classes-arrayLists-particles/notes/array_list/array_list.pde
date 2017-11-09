//arrayList --data structure

ArrayList<Ball>b = new ArrayList <Ball>();

void setup() {
  size(600, 600);
}

void draw() {
  background(250);
  for (int i = 0; i < b.size(); i++) {
    Ball newBall = b.get(i);
    newBall.update();
    newBall.display();
      if (newBall.isInvisible() == true) {
       b.remove(i); 
      }
  }
  
  if(mousePressed) {
    b.add(new Ball(mouseX, mouseY, 30));
  }
}

void mousePressed() {
  
}