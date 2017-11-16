PVector location;
PVector speed;

//float x = 100;
//float y = 100;
//float xspeed = 1;
//float yspeed = 3.3;

void setup() {
  size(200, 200);
  smooth();
  background(255);

  location = new PVector(100, 100);
  speed = new PVector(1, 3.3);
}

void draw() {
  noStroke();
  fill(255, 10);
  rect(0, 0, width, height);

  // Add the current speed to the location.
  location = location.add(speed);

  // Check for bouncing
  if ((location.x > width) || (location.x < 0)) {
    speed.x = speed.x *-1;
  }
  if ((location.y > height) || (location.y < 0)) {
    speed.y = speed.y * -1;
  }

  // Display at x,y location
  stroke(0);
  fill(175);
  ellipse(location.x, location.y, 16, 16);
}