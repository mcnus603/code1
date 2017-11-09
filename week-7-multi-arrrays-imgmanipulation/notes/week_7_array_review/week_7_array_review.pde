//Why do I need an array?
//Do I need a lot of stuff?
// What are the values important to an array
//ie bouncing balls I would need x, y, dx, dy
//you would need an array for all of these
//what are the parameters involved?
//how do i want to fill those values?--loops
//what do I want to do with those values?--do it with loops 

float [] nums = new float[100];
void setup() {
  size(800, 800);
  for (int i = 0; i < 100; i++) {
    //nums[i] = int(map(i, 0, 100, 0, width));
    nums[i] = i * i;
    //println(nums[i]);
   
  }
}

void draw() {
  background(255);
  
  for(int i = 0; i <100; i++) {
   ellipse(nums[i], height/2, 5, i * 5);
  }
  
  for (int i = 0; i < 0; i++) {
   nums[i]+=i; 
  }
  
}