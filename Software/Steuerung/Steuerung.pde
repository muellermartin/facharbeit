float x;
float y;
float drag = 30.0;

void setup() {
  size(200, 200);
  ellipse(width/2, height/2, 0.1*width, 0.1*height);
  x = width/2;
  y = width/2;
  smooth();
}

void draw() {
  float difx = mouseX - x;
  float dify = mouseY - y;

  if(abs(difx) > 1) {
    x = x + difx/drag;
    x = constrain(x, 0, width);
  }
  
    if(abs(dify) > 1) {
    y = y + dify/drag;
    y = constrain(y, 0, height);
  }
  
  ellipse(x, y, 0.1*width, 0.1*height);
}
