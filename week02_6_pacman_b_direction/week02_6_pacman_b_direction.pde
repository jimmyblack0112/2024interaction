//week02_6_pacman_b_direction
void setup() {
  size(400, 400);
}

void draw() {
  background(0, 0, 0);
  fill(#FFDC0F);
  float a =frameCount%180; //0...45...90...180
  float b=radians(mouseX); //根據滑鼠X座標決定小精靈的開口方向
  if (a<45) a = radians(a);
  else if (a<90) a=radians(90-a);
  else if (a<135) a=radians(a-90);
  else if (a<180) a=radians(180-a);
  arc(200, 200, 300, 300, b+0+a, b+PI*2-a, PIE);
}
