//拡大する四角系
public class Anime_f extends Anime{
float x=width/2;
float y=height/2;
float rectSize=0;
float speed=10;
color cont_color;
color cont_color2;
Anime_f(){//コンストラクタ
cont_color= color(int(random(0,255)),int(random(0,255)),int(random(0,255)));
}
@Override
void draw(){
  
background(200); 
noFill();
stroke(cont_color);
rectMode(CENTER);

strokeWeight(rectSize/10);
rect(x, y, rectSize+5,rectSize+5);
rectSize += this.speed*2;

cont_color= color(int(random(0,255)),int(random(0,255)),int(random(0,255)));
stroke(cont_color);
strokeWeight(4);
rect(x, y, rectSize-rectSize/2,rectSize-rectSize/2);

rectMode(CORNER);

  }
}
