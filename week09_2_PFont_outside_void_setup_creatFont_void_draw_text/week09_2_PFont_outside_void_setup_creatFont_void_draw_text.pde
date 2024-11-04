// week09_2_PFont_outside_void_setup_creatFont_void_draw_text
PFont font0, font, font2; //3種字型：英文、中文、精靈文（外面宣告, 兩個函式都看的到）
void setup(){
   size(500, 500); //大視窗
   font0 = createFont("Times New Roman", 50);
   font = createFont("標楷體", 50);
   font2 = createFont("elffont-rock.otf", 50); //字型檔, 也要拉進來
}
void draw(){
   background(0); //黑色背景
   textSize(50);
   textFont(font0);
   text("Hello", 50, 50);
   
   textFont(font);
   text("中文看到了", 50, 150);
   
   textFont(font2);
   text("ㄇㄉㄈㄎ", 50, 250);
   
}
