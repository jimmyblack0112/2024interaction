// week14_02_draw_lines_loadPixels_pixels_updatePixels
void setup() {
  size(500, 500);
  background(255);
}
void draw() {
}
void mouseDragged() {
  if (mouseButton==LEFT) { //在左鍵dragged拖曳時
    line(mouseX, mouseY, pmouseX, pmouseY); //本來的線, 是灰黑色, 不是白色
    loadPixels(); //取出畫面像素
    //println(pixels[0]); //白色是-1
    for (int i=0; i < width*height; i++) { //全部的點, 都去巡一下顏色
      if (pixels[i] != -1) pixels[i] = color(random(255), random(255), random(255));
    } //如果「不是白色」就是有畫圖碰到pixels, 都變成亂數彩色
    updatePixels(); //若有修改, 要再放回去
  }
}
