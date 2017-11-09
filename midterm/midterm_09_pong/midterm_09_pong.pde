// QUESTION 9 - 
// put together a skeleton Pong game.

// create a bouncing ball that starts in the middle of the screen 
// either use a class or independent variables, it doesn't matter
// make it bounce only on the top and bottom walls
// create two paddles. this can also be a class or not
// have key presses control the up and down movement of the paddles independently
// make the ball reverse x direction when it touches the paddles
// return the ball to the middle of the screen with a random position when it goes off screen
// keep score for the two players
Ball b;
Paddle pL;
Paddle pR;


void setup() {
  size(600, 600);
  background(255);
  noStroke();
  b = new Ball();
  pL = new Paddle(10, height/2 - 75 );
  pR = new Paddle(width - 10, height/2 - 75 );
}

void draw() {
  background(255);
  b.display();
  b.update();
  pL.display();
  pR.display();
  //p1.update();
  //p2.update();
  
  if (dist(pL.x, pL.y + 50, b.x, b.y) < 25) {
   b.changeDirection(); 
  }
  
  if (dist(pR.x, pR.y + 50, b.x, b.y) < 25) {
   b.changeDirection(); 
  } 
  
  
}

void keyPressed() {
 if  (keyCode == UP && b.x < width/2 ){
   pL.moveUp();
 }
 if  (keyCode == UP && b.x > width/2 ){
   pR.moveUp();
 } 
 
 if (keyCode == DOWN && b.x < width/2) {
   pL.moveDown();
 }
 
  if  (keyCode == DOWN && b.x > width/2 ){
   pR.moveDown();
 } 

}