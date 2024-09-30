// week04_6_better_scale
PShape world;
void setup() {
  size(800, 400);
  world = loadShape("world.svg");
}
float s = 0.4, x=0, y=0;
float realX = 0, realY = 0; //地圖上真的座標
void draw() {
  background(#75C0ED);
  translate(x, y); //再加上一個移動量 x, y
  scale(s); //改用變數 s 初始值是 0.4
  shape(world);
  ellipse(realX, realY, 10, 10);
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
