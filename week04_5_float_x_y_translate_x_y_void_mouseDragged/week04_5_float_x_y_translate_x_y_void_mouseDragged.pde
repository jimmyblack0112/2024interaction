// week04_5_float_x_y_translate_x_y_void_mouseDragged
PShape world;
void setup() {
  size(800, 400);
  world = loadShape("world.svg");
}
float s = 0.4, x=0, y=0;
void draw() {
  background(#75C0ED);
  translate(x, y); //再加上一個移動量 x, y
  scale(s); //改用變數 s 初始值是 0.4
  shape(world);
}
void mouseDragged() {
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
}
void mouseWheel(MouseEvent e) {
  if (e.getCount()<0) s *= 1.1;
  else s *= 0.9;
}
