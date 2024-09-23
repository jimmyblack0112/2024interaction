// week03_9_arufa_array_for
int []boardX = {0, -35, +35, +70, 0, -70, -105, -35, +35, +105, +70, 0, -70, -35, +35, 0};
int []boardY = {-80, -40, -40, 0, 0, 0, +40, +40, +40, +40, 80, 80, 80, 120, 120, 160};
PImage img;
void setup() {
  size(600, 400);
  img = loadImage("arufa.jpg");
}
void draw() {
  image(img, 0, 0);
  noCursor(); //不要有滑鼠游標
  noStroke(); //不要框線
  fill(200, 200, 255, 128); //最後面的128是 "半透明"

  for (int i=0; i<16; i++) {
    rect(mouseX+boardX[i], mouseY+boardY[i], 80, 55);
  }
}
