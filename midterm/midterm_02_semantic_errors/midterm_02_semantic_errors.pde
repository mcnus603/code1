// QUESTION 2 - 
// Fix all the semantic errors so the code runs as expected

void setup() {
  size(100, 100);

  float aNumber = 1.1;
  //float[] bunchONumbers = [10, 2, "hello!"];

  float[] bunchONumbers = new float [3];
  bunchONumbers[0] = 10;
  bunchONumbers[0] = 20;
  bunchONumbers[0] = 30;
  
    for (int i = 0; i < bunchONumbers.length; i++) {
    println(bunchONumbers[i]);
  }

  boolean[] bunchOBools = new boolean[10];

  for (int i = 10; i < 0; i++) {
    bunchOBools[i] = true;
  }

  PImage img;
  img = loadImage("doge.png");

  image(img, 0, 0, width, height);
}