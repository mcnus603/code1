int r = 150; 
int g = 255; 
int b = 150;

//color Object
//color data type different from color function 
//void-empty-returns nothing
//essentially 2 kinds of fuucntion behavior :
//1 - side effects
//2 - return values (pure function) functions doing pure math for us

color c = color(r, g, b);

void doSomething() {
 println("hi"); 
}

float multByTwo(float x) {
 return x * 2;  
}

String setToHello() {
 return "Hello"; 
}

//color color(int r, int g, int b) {
// color something;
// return something;
//}


//specify a return type of a funct
int setToOne() {
 return 1; 
}


void setup() {
 int test= setToOne();
 size(600, 600); 
 println(test);
 float n = multByTwo(123123);
 println(n);
}

void draw() {
 fill(c); 
 
 
 rect(100, 100, width-200, height-200);
}








//String myText = "helloooooooo";
//String upperText = myText.toUpperCase();
//println(upperText);

//Mario Object
// lives = 3;
//isBig false
//run()
//shootFireball();

//dot operator--how we acess the things and actions of an Object