float x;
float y;

void setup() {
  size(200, 200);
  smooth();
}

void draw() {
  background(225);
  
  x = mouseX;
  y = mouseY;

  ellipse(x, y, 20, 20);
}


