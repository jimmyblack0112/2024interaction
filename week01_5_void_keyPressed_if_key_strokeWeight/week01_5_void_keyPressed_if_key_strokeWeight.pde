//week01_5_void_keyPressed_if_key_strokeWeight
void setup() {
  size(500, 500);
}

void draw() {
  if (mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
} //如果 mouse 按下去,就畫線 mouse 的 XY 座標到 previous mouseXY

void keyPressed() {
  if (key=='1') strokeWeight(1);
  if (key=='2') strokeWeight(5);
  if (key=='3') strokeWeight(10);
} //如果 key 按下去,看 key 的值,決定線的粗細
