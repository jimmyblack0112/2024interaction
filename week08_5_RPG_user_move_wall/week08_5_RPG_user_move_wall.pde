// week08_4_RPG_2d_array_floor_map
int [][] floor = {
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 3, 4, 5, 1, 1, 1, 5, 6, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 3, 4, 5, 1, 1, 1, 5, 6, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 3, 4, 5, 1, 1, 1, 5, 6, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 3, 4, 5, 1, 1, 1, 5, 6, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 3, 4, 5, 1, 1, 1, 5, 6, 1, 1}, //有20個數字
};
PImage img;
PImage [] fimg = new PImage[40];
void setup() {
  size(640, 480); //15格=480, 480/15=32 小圖
  img = loadImage("640x480.png");
  for (int i=1; i<=20; i++) fimg[i] = loadImage(i+".png");
}
void draw() {
  // background(img);
  for (int i=0; i<floor.length; i++) { //高度 480 對應 y 座標 左手i
    for (int j=0; j<20; j++) { //寬度 640 對應 x 座標 右手j
      int now = floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
}
