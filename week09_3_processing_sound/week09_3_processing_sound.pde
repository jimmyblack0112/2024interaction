// week09_3_processing_sound 聲音相關 使用相關音樂的Library函式庫
// Sketch-Library-Manager Libraries 找 sound 可找到 Sound 函式庫（Processing 基金會製作）, 安裝！
// File-Example, 選 Libraries核心函式庫, 剛剛裝的 Sound 的 Soundfile 的 SimplePlayback 或 JumbleSound
// 我們自己寫「最精簡的版本」
import processing.sound.*;
SoundFile sound;

void setup(){
   size(500, 500);
   sound = new SoundFile(this, "In Game Music.mp3");
   //sound.play(); //播放1次
   sound.loop(); //一直迴圈播放
}
void draw(){
    
}
