//all caps variables in code = varriable is not gonna change
//final variable—constant

final int NUM_WALKERS = 5;
float [] x = new float [NUM_WALKERS];
float [] y = new float [NUM_WALKERS];


void setup() {
  size(800, 800);
  for (int i = 0; i < NUM_WALKERS; i++) {
    x[i] = width/2;
    y[i] = height/2;
  }
  //noStroke();
}

void draw () {
  background(255);
  for (int i = 0; i < NUM_WALKERS; i ++) {
    int r = int(random(4));
    switch (r) {
    case 0: 
      x[i] += map(i, 0, NUM_WALKERS, 1, 25);
      break;
    case 1:
      x[i] -= map(i, 0, NUM_WALKERS, 1, 25);
      break;
    case 2:
      y[i] += map(i, 0, NUM_WALKERS, 1, 25);
      break;
    case 3:
      y[i] -= map(i, 0, NUM_WALKERS, 1, 25);
      break;
    default: 
      break;
    }
   
    fill(map(i, 0, NUM_WALKERS, 0, 255));
    ellipse(x[i], y[i], 15, 15);
  }
}