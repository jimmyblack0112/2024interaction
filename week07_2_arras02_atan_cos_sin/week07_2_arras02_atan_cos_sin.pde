// week07_2_arras02_atan_cos_sin
void setup() {
  size(500, 400);
}
float x = 250, y = 200;
void draw() {
  background(245, 184, 200);
  float dx = mouseX - x, dy = mouseY - y;
  float a = atan2(dy, dx);
  strokeWeight(20); //很粗的一條線, 長度是40
  line(x, y, x+cos(a)*50, y+sin(a)*50); //cos()算出x方向, sin()算出y方向

  fill(204, 102, 156);
  stroke(125, 84, 105);
  strokeWeight(3);
  ellipse(x, y, 55, 55); //砲塔

  fill(167, 167, 175);
  stroke(110, 110, 113);
  strokeWeight(3);
  rect(240, 160, 20, 20); //砲管
}
