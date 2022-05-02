//対数螺旋
public class Anime_i extends Anime{
float x, y;
float A = 5.0;  
float R;  
float k = 0.11;  
float t = 0.0;  
float rad = 0.05;    
Anime_i(){//コンストラクタ
noStroke();
println(exp(3));
background(200);
smooth();
 }
@Override
void draw(){

  
   for(int j=0;j<60;j++)
  {
 for(int i=0;i<10;i++)
{
 R= A*exp(k*t);
 x = R*cos(t);       // Ｘ座標の計算
 y = -R*sin(t);       // Ｙ座標の計算
 
 fill(255-t*2,20,20+t*2);
 ellipse(x+width/2,y+height/2, 2+noise(R+rad*cos(t)*0.01,R+rad*sin(t)*0.01)*20, 2+noise(R+rad*sin(t)*0.01,R+rad*cos(t)*0.01)*20);  
}
  t += rad/60+noise(rad/60*cos(t*1.0),rad/60*sin(y))*0.01;    
   }
    
  
  }
}
