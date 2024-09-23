// week03_2_void_setup_void_draw_fill_rect
// 把網路下載的 arufa.jpg 拉到 Processing 裡面
PImage img;
void setup() {
  size(600, 400);
  img = loadImage("arufa.jpg");
}
void draw() {
  image(img, 0, 0);
  noStroke(); //不要框線
  fill(200, 200, 255, 128); //最後面的128是 "半透明"
  rect(mouseX, mouseY, 80, 55); //畫長方型
}
