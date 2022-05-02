//蛍光灯を消す
public class Anime_g extends Anime{
float speed;
color bgColor;
Anime_g(){//コンストラクタ
speed=2;
bgColor=0;
}
@Override
void draw(){
noStroke();
fill(bgColor);

  if(!(bgColor>200))
  {
    rect(0,0,width,height);
  }
  else
  { 
    background(200);
  }

bgColor+=speed;
  }
}
