//week01_4_if_mousePressed_mouseX_mouseY_pmouseX_pmouseY
void setup() {
  size(500, 500);
}

void draw() {
  if (mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
} //如果 mouse 按下去,就畫線 mouse 的 XY 座標到 previous mouseXY
