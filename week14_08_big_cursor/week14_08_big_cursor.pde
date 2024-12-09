// week14_08_big_cursor
// 希望不只用 16x16 或 32x32 要更大
PImage imgBigCute, imgBigKitty, imgCursor;
void setup() {
  size(500, 500);
  imgBigCute = loadImage("bigcute.png");
  imgBigKitty = loadImage("bigKitty.png");
  imgCursor = imgBigKitty;
}
void draw() {
  background(#FFFFF2);
  imageMode(CENTER); //畫圓的系統, 該成以正中心為座標
  image(imgCursor, mouseX, mouseY);
  imageMode(CORNER); //畫圓的系統, 改成左上角的座標
  if (frameCount%120==0) imgCursor = imgBigCute;
  if (frameCount%120==60) imgCursor = imgBigKitty;
}
