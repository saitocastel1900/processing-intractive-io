//蛍光灯をつける
public class Anime_h extends Anime{
float speed;
color bgColor;
Anime_h(){//コンストラクタ
speed=2;
bgColor=0;
}
@Override
void draw() {
background(200);

  if (frameCount / 4 % 2 == 0) 
  { 
    fill(bgColor);
  }
  else
  {
    fill(200);
  }
  
  rect(0, 0, width, height);
  if(!(bgColor==200))   bgColor+=speed*2;
  
  }
}
