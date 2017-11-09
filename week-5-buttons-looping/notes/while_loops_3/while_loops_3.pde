//use loops to prevent yourself from repeating yourself
//and to avoid human error

void setup() {
  size(600, 600);
}

void draw() {
  for(int i = 0; i <= 10; i++) {
     for(int j = 0; j <= 10; j++) {
       float x = map(i, 0, 10, 0, 600);
       float y = map(j, 0, 10, 0, 600);
      ellipse(x, y, 50, 50); 
     }
  }
}