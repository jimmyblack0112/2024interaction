// week05_4_pendulum_mouseDragged_x_y
void setup(){
    size(400,600);
}
float x = 200, y = 300;
void draw(){
    background(255);
    line(200, 100, x, y);
    ellipse(x, y, 40, 40);
}
void mouseDragged(){
   x = mouseX;
   y = mouseY;
}
