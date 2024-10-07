// week05_8_pendulum_not_OK_PVector_sub_velocity
void setup() {
  size(400, 600);
}
float x = 200, y = 300;
void draw() {
  background(255);
  stroke(0); //原來是黑色的線
  line(200, 100, x, y);
  ellipse(x, y, 30, 30);
  stroke(255, 0, 0); //紅色往下線
  line(x, y, x, y+100);

  PVector d = new PVector(x-200, y-100).normalize(); //長度1
  PVector d2 = new PVector(0, 1); //長度2
  float g = PVector.dot(d, d2);
  d.mult(100*g);
  stroke(0, 255, 0); //綠色往左下線
  line(x, y, x+d.x, y+d.y);
  
  PVector N = PVector.sub(d2.mult(100), d);
  stroke(0, 0, 255); //藍色線往右下
  line(x, y, x+N.x, y+N.y);
  
  v.x += N.x / 1000;
  v.y += N.y / 1000;
  x += v.x;
  y += v.y;
}
PVector v = new PVector(); //球的速度, 一開始是0
void mouseDragged() {
  x = mouseX;
  y = mouseY;
}
