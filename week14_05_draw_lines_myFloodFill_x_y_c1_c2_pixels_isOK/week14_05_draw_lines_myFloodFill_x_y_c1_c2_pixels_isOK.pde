// week14_05_draw_lines_myFloodFill_x_y_c1_c2_pixels_isOK
PImage img;
void setup() {
  size(500, 500);
  background(#FFFFF2); //先畫淡黃色背景
}
void draw() {
  if (mousePressed && mouseButton==LEFT) line(mouseX, mouseY, pmouseX, pmouseY);
  if (mousePressed && mouseButton==RIGHT) {
    loadPixels(); //把畫面讀入 pixels[] 陣列裡
    color c1 = pixels[mouseX+mouseY*500]; //原本的色彩
    color c2 = color(random(255), random(255), random(255)); //亂數新色彩
    if (c1 != c2) myFloodFill(mouseX, mouseY, c1, c2);
    updatePixels(); //把陣列的值, 放回畫面
  }
}
boolean isOK(int x, int y, color c1) {
  if (x<0 || y<0 || x>=500 || y>=500) return false; //超過邊界不能做哦
  if (pixels[x + y*500] != c1) return false; //色彩原本的 c1 色彩不同, 就不要變色
  return true;
}
void myFloodFill(int x, int y, color c1, color c2) {
  pixels[x + y * 500] = c2; //這1格設成新色彩
  if (isOK(x+1, y, c1)) myFloodFill(x+1, y, c1, c2); //試試右邊色彩對嗎? 對就做
  if (isOK(x-1, y, c1)) myFloodFill(x-1, y, c1, c2); //試試左邊色彩對嗎? 對就做
  if (isOK(x, y+1, c1)) myFloodFill(x, y+1, c1, c2); //試試上面色彩對嗎? 對就做
  if (isOK(x, y-1, c1)) myFloodFill(x, y-1, c1, c2); //試試下面色彩對嗎? 對就做
} //不要點太大的區域, 因為「函式呼叫函式」太多層, 會被警告出錯
