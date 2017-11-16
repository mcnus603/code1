class Mover {
 PVector location;
 PVector velocity;
 PVector acceleration;
 
 Mover() {
  location = new PVector(width/2, height/2);
  velocity = new PVector(0, 2);
  acceleration = new PVector(.01, 0);
 }
  
  void update() {
    velocity.add(acceleration);
   location.add(velocity); 
  }
  
  void edges() {
   if (location.x > width) location.x = 0;
   if(location.x < 0) location.x = width;
   if (location.y > height) location.y = 0;
   if (location.y <0 ) location.y = height;
  }
  
  void display() {
    fill(100);
   ellipse(location.x, location.y, 50, 50); 
    
  }
  
}

//location changes by velocity over time
//velocity changes by acceleration over time
//acceleration is any change in velocity