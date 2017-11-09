boolean myBool;
int count = 0;

void setup() {
  size(500, 500);
}

void draw() {

  //if (mouseX > width/2) {
  //  myBool = true;
  //} else {
  // myBool = false; 
  //}
  count = count + 1;
  if (count > 20) {
   myBool = true;  //<>//
   count = 0; //<>//
  } else {
   myBool = false;
  }
  
  if (myBool == true) {
    background(40, 40, 200);
  } else {
    background(220, 220, 20);
  }

}

//random(10, 100); --> between 10 and 100
//random (10); ---> less than 10 
//casting a value to another type 
//else if checking something not just 50/50
//map function convert mousex (0-600) to 0-255 5 arguements