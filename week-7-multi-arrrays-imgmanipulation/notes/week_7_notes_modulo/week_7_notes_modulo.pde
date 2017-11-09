float x [] = new float[25];
float y [] = new float[25];

void setup() {
  size(800, 800);

//modulo % 

//10/0 = 0, remainer 10
// 10/10 = 1, remainder 0
//5/3 = 1, remainder 2
//0/5 = r0
//1/5 = r1
//2/5 = r2
//3/5 = r3
//4/5 = r4
//5/5 =r0
//6/5 = r1
//7/5 =r2
//8/5 = r3

  for (int i =0; i < 25; i++) {
    x[i] = (i % 5) * 50 + 100;
    y[i] = (i / 5) * 50 + 100;
  }
}

void draw() {
  for (int i =0; i < 25; i++) {
   ellipse(x[i], y[i], 50, 50);
  }
  }