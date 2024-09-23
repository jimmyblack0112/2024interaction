// week03_1_PImage_loadImage_image
// 把網路下載的 arufa.jpg 拉到 Processing 裡面
PImage img = loadImage("arufa.jpg");
size(600, 400); // 因為圖檔大小剛好是600*400
image(img, 0, 0);
