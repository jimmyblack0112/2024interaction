class Ball {
  float x, y, r;
  float vx, vy;
  Ball(int x0, int y0, int r0) {
    x = x0;
    y = y0;
    r = r0;
    vx = random(-10, +10);
    vy = random(-10, +10);
  }
  boolean checkCollision(Ball other) {
    if (dist(x, y, other.x, other.y) < r + other.r) return true;
    //先算兩圓圓心的距離 如果兩圓心距離小於兩圓半徑相加 代表兩圓碰撞在一起
    else return false;
  }
  void update() {
    if (x+vx > 640 || x+vx < 0) vx = -vx;
    if (y+vy < 0 || y+vy > 360) vy = -vy;
    x += vx;
    y += vy;
  }
  void display() {
    ellipse(x, y, r+r, r+r);
  }
}
