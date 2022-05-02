//振動する円
public class Anime_e extends Anime{
float x, y;  
float R; 
float theta;  
float circleSize;
float rad;
Anime_e(){//コンストラクタ
smooth();
R=120;
theta=0.0;
rad = TWO_PI/36.0;
circleSize=4;
}

@Override
void draw(){
noStroke();
fill(0);

  for (float i = 0.0; i < TWO_PI; i += rad*2) {
    //円を描く座標
    x = R*cos(i);
    y = -R*sin(i);    
    ellipse(x +x*noise(cos(theta))*0.9*cos(theta)+width/2, y +y*noise(sin(theta))*0.9*sin(theta)+height/2, circleSize, circleSize);
  }
 
  x = R*cos(theta);
  y = -R*sin(theta);
 
  ellipse(x + cos(theta)*noise(x+cos(theta)*0.02)+width/2, y + sin(theta)*noise(y+sin(theta)*0.02)+height/2, circleSize+10, circleSize+10);
  
  theta += rad;
  
  //原点に戻った際に
  if (theta >= TWO_PI)
  {
    theta = 0.0;
  }
 
 }
}
