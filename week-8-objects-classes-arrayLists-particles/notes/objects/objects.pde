//OBJECTS
//PImages--width, height, pixels[], methods: get(), make, save()
//color 
//strings--characters in the string, methods: toLowerCase()
//vairables, properties, fields, whats the stuff of the obj
//actions, functions, or methods(technical term for objcts)

//circle class
//x, y, width, dx, dy, color
//draw(), update
int numBalls = 20;
Ball[] b = new Ball[numBalls];
//objecr oriented programing 

void setup() {
  size(800, 800);
  for (int i = 0; i < numBalls; i++) {
    b[i] = new Ball(random(100, 700), random(100, 700), random(10, 30));
  }
  // function automatically set up when created new class
  //CONSTRUCTOR
  //but we want to create our own construckor function
}


void draw() {
  background(255);
  for (int i = 0; i < numBalls; i++) {
    for (int j = i + 0; j < b.length - 1; j++) {
      b[i].checkOtherCollision(b[j]);
    
    }
    b[i].update();
    b[i].display();
    
  }
}