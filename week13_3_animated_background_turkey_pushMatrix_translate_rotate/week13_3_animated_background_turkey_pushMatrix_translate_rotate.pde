// week13_3_animated_background_turkey_pushMatrix_translate_rotate
PImage img;
void setup() {
  size(500, 300);
  img = loadImage("turkey.png");
  imageMode(CENTER);
}
void turky(int x, int y) {
  pushMatrix();
  translate(mouseX, mouseY);
  rotate(radians(frameCount));
  image(img, 0, 0);
  popMatrix();
}
void draw() {
  background(255);
  turky(mouseX, mouseY); //會跟著mouse動
  turky(100, 100); //左上角
  turky(400, 100); //右上角
  turky(100, 200); //左下角
  turky(400, 200); //右下角
}
