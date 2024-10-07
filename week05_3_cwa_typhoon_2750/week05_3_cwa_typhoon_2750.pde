// week05_3_cwa_typhoon_2750
// 整合上週 & 今天的程式
PImage img;
void setup() {
  size(500, 500); //小視窗,大圖片
  img = loadImage("LCC_VIS_TRGB_2750-2024-10-02-07-40.jpg");
}
float s = 1.0, x=0, y=0;
float realX = 0, realY = 0;
void draw() {
  background(0); //白背景
  translate(x, y);
  scale(s);
  image(img, 0, 0);
}
void mouseDragged() {
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
}
void mouseWheel(MouseEvent e) {
  // 中心 + 真實座標*s == mouseX,mouseY
  // 真實座標 == ((mouseX,mouseY) - 中心) / s

  // 如果有 s 縮放, 把新的中心算出來
  // 舊中心 + 真實座標*舊s == 新中心 + 真實座標*新s

  realX = (mouseX - x) / s; //地圖上真的座標
  realY = (mouseY - y) / s; //地圖上真的座標
  float oldS = s;
  if (e.getCount()<0) s *= 1.1;
  else s *= 0.9;
  x = x + realX*oldS - realX*s;
  y = y + realY*oldS - realY*s;
}
