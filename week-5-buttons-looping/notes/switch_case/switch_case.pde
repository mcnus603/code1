int state = 0; 

void setup() {
  size(600, 600);
}

void draw() {
  //switch to avoid a bunch of else if's but for simple 
  //thing w/ a lot of outcomes

  switch(state) {
  case 0:
    background(0);
    break;
  case 1:
    background(70);
    break;
  case 2:
    background(140);
    break;
  case 3:
    background(210);
    break;
  case 4:
    background(255);
    break;
  default: 
    println("there was an error");
    break;
  }
}

void mousePressed() {
  if (state < 5 ) {
    state++;
  } else {
    state = 0;
  }
}