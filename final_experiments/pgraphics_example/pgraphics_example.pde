PGraphics pg;

void setup() {
  size(600, 600);
  pg = createGraphics(100, 100);
}

void draw() {
  background(50);
  ellipse(width/2, height/2, 100, 100);
  
  //draw method of a seperate object   
  pg.beginDraw();
  pg.background(200);
  pg.ellipse(pg.width/2, pg.height/2, 50, 50);

  
  pg.endDraw();
  image(pg, mouseX, mouseY);
}


//total graphics context of processing
//rendering ellipse renders to default graphics context
//think of it as layers, background context, foreground context