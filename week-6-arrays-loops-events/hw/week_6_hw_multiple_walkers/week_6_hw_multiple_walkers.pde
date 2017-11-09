//make it so they fade after 20

int number = 200;
int margin = 70;
int frames = 0;

float x []= new float[number];
float y [] = new float[number];
float size [] = new float[number];
float movementX[] = new float[number];
float movementY[] = new float[number];
color c[] = new color[number]; 
int posOrNeg[] = {-1, 1, -1, 1};
int r []= new int [number];
int g []= new int [number];
int b []= new int [number];
int a []= new int [number];

void setup() {
  size(800, 800);
  background(0);
  rectMode(CENTER);
  noStroke();

  for ( int i =0; i < number; i++) {
    r[i]= int(random(50, 100));
    g[i]= int(random(200, 240));
    b[i]= int(random(150, 250));
    a[i]= int(random(3, 10));
    x[i] = random(margin, width - margin); 
    y[i] = random(390, 410);
    size[i] = random(1, 2);
    movementX[i] = random(5, 10);
    movementY[i] = random(5, 20);
  }
}


void draw() {
  //frames ++;
  //if (frames > 100) {
  //  background(0); 
  //  frames = 0;
  //} 


  for (int i = 0; i < number; i++) {
    fill(r[i], g[i], b[i], a[i]);
    ellipse(x[i], y[i], size[i], size[i]);
    x[i] += movementX[i] * posOrNeg[(int)random(0, 4)];
    y[i] += movementY[i] * posOrNeg[(int)random(0, 4)];

    if (x[i] < margin + size[i]/2 || x[i] > width - (margin + size[i]/2)) {
      x[i] = random(390, 410); 
      size[i] +=10;
      r[i] += 40;
      ;
    }
    if (y[i] < margin + size[i]/2|| y[i] > height - (margin + size[i]/2)) {
      y[i] = random(390, 410);
      size[i] +=10;
      r[i] += 80;
      a[i] -= 1;
    }
    if (size[i] > 50) {
      size[i] = 2;
    } 
    if (r[i] > 255) {
      r[i] = int(random(50, 100));
    }
  }
}


//change in fill variable
//change in size variable
//different ranges for different variables to change behaviors