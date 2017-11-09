//{0, 1, 2, 3,4}
//{{0, 1, 2, 3}, {4, 5, 5,, 6}, {3, 9, 10}...
//2d array is an array of arrays --when drawing stuff on screen

final int COLS = 25;
final int ROWS = 25;

float [] [] x = new float[COLS][ROWS];
float [] [] y = new float[COLS][ROWS];

void setup() {
  size(800, 800);

  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      x[i][j] = map(i, 0, COLS, 50, width-50);
      y[i][j] = map(j, 0, ROWS, 50, height-50);
    }
  }
}

void draw() {
  background(255);
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      ellipse(x[i][j], y[i][j], 20, 20);
      x[i][j] += random(-1, 1);
      y[i][j] += random(-1, 1);
    }
  }
}