void setup() {
  size(600, 600);
  background(255);
  rectMode(CENTER);
}


void draw() {
  noStroke();
  fill(250, 40, 170);
  for (int i = 20; i < 100; i+= 8) {
    ellipse(width - i, 20, 5, 5);
  }

  for (int i= 0; i < 200; i+=20) {
    strokeWeight(1);
    stroke(20, 20, 20);
    line(i, 600, i, width/2 + 10 );
  }

  for (int i = 25; i < 625; i+=60) {
    fill(200 - i/3, 20, 120);
    stroke(255);
    rect( i, i, 50, 50);
  }
}

//INFINITE WHILE LOOP
//int i = 0;
//while (i < 10) { 
//  ellipse(i, 20, 10, 10);
//  i --;
//}

//INFINITE FOR LOOP

//for (int i = 20; i > 10; i++) {
//  ellipse(i, 20, 10, 10);
//}



//