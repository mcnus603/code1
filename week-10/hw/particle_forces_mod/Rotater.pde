class Rotater {
  float x;
  float y;
  float xAngle;
  float yAngle;
  float xAmplitude;
  float yAmplitude;
  float xRate;
  float yRate;

  Rotater(float _xRate, float _yRate) {
    rotaterPosition = new PVector(x, y);
    xRate = _xRate;
    yRate = _yRate;
    xAngle = 0;
    yAngle = 0;
    xAmplitude = 300;
    yAmplitude = 300;
  }

  void display () {
    noStroke();
    fill(150, 150, 255);
    ellipse(rotaterPosition.x, rotaterPosition.y, 20, 20);
  }

  void update() {
    xAngle += xRate;
    yAngle += yRate;
    rotaterPosition.x = width/2 + sin((xAngle)) * xAmplitude;
    rotaterPosition.y = height/2 + cos((yAngle )) * yAmplitude;
  }
}