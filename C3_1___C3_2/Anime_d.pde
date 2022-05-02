public class Anime_d extends Anime{
float speed=-2;
color bgColor=255;
Anime_d(){//コンストラクタ
}
@Override
void draw(){
noStroke();
fill(bgColor);

bgColor+=speed;

    if(!(bgColor<200))
    {
      rect(0,0,width,height);
    }
    else
    {
      background(200);
    }
    
  }
}
