//simple way to set up simple array
//int myInt;
//int[] myIntArray = {0, 100, 90, -10, 5};
//boolean[] myboolean = {true, false, true};
//String [] myString = {"hi", "hellow", "bye"};
//float [] myFloat = {1.1, 0.9, 10000.3, 29272};

//this array is 100 positions long, dont know what is in it 
int[] myArray = new int[100];




void setup() {
  //could state each number for a position of the array
  //myArray[0] = 100;
  //myArray[50] = 99;
  
  size(800, 800);
  for (int i = 0; i < myArray.length; i++) {
    //casting to an int
    myArray[i] = int(random(800));
  }
}

void draw() {
  background(255);
  for (int i = 0; i < myArray.length; i++) {
      line(myArray[i], 0, myArray[i], height);
       myArray[i]++;
       
       if(myArray[i] > width) {
        myArray[i] = 0; 
       }
  }

  
}