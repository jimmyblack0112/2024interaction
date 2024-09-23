// week03_3_arufa_rect_rect_rect
// 把網路下載的 arufa.jpg 拉到 Processing 裡面
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
  
  rect(mouseX, mouseY-80, 80, 55);
  
  rect(mouseX-35, mouseY-40, 80, 55);
  rect(mouseX+35, mouseY-40, 80, 55);
  
  rect(mouseX+70, mouseY, 80, 55);
  rect(mouseX, mouseY, 80, 55);
  rect(mouseX-70, mouseY, 80, 55);
  
  rect(mouseX-105, mouseY+40, 80, 55);
  rect(mouseX-35, mouseY+40, 80, 55);
  rect(mouseX+35, mouseY+40, 80, 55);
  rect(mouseX+105, mouseY+40, 80, 55);
  
  rect(mouseX+70, mouseY+80, 80, 55);
  rect(mouseX, mouseY+80, 80, 55); //畫長方型
  rect(mouseX-70, mouseY+80, 80, 55);
  
  rect(mouseX-35, mouseY+120, 80, 55);
  rect(mouseX+35, mouseY+120, 80, 55);
  
  rect(mouseX, mouseY+160, 80, 55);
}
