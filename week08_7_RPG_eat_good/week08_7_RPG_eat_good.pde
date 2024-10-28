// week08_7_RPG_eat_good
int [][] floor = {
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 7, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 3, 4, 5, 1, 1, 1, 5, 6, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 3, 4, 5, 1, 1, 1, 5, 6, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 3, 4, 5, 1, 1, 1, 5, 6, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 7, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 3, 4, 5, 1, 1, 1, 5, 6, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 20, 1, 1, 1, 1, 1, 1, 1, 1, 19, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 7, 1, 1, 1, 1, 1}, //有20個數字
  {1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 3, 4, 5, 1, 1, 1, 5, 6, 1, 1}, //有20個數字
};
PImage img, user;
PImage [] fimg = new PImage[40];
void setup() {
  size(640, 480); //15格=480, 480/15=32 小圖
  img = loadImage("640x480.png");
  user = loadImage("18.png"); //勇者 使用者
  for (int i=1; i<=20; i++) fimg[i] = loadImage(i+".png");
}
int userI = 12, userJ = 15;
void draw() {
  // background(img);
  for (int i=0; i<floor.length; i++) { //高度 480 對應 y 座標 左手i
    for (int j=0; j<20; j++) { //寬度 640 對應 x 座標 右手j
      int now = floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
  image(user, userJ*32, userI*32);
  if (gameOver) background(0, 255, 0);
}
boolean gameOver = false;
void keyPressed() {
  int newI = userI, newJ = userJ; //新的可能的位置
  if (keyCode==RIGHT) newJ++;
  if (keyCode==LEFT) newJ--;
  if (keyCode==UP) newI--;
  if (keyCode==DOWN) newI++;
  if (floor[newI][newJ]!=3) { //不是木頭才能過
    userI = newI;
    userJ = newJ;
    if (floor[userI][userJ]==20) gameOver = true;
    floor[userI][userJ] = 6;
  }
}
