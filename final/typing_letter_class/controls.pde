void controls () {
  noStroke();
  fill(200, 50);
  rectMode(CORNER);
  rect(0, height-100, width, 100);
  r.display();
  r.update();

  if ((mouseX > r.x && mouseX < (r.x + r.w)) && (mouseY > r.y && mouseY < (r.y + r.h))) {
    println("here it is");
  }
}