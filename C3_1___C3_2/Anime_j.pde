//曲線運動
public class Anime_j extends Anime{
float x, y;  
float A;  
float w;  
float p;  
float t;  
float intializedt;
float dt;
color _color;
Anime_j(){//コンストラクタ
A = random(100,150);    
w = random(1,5)*0.01;    
p = 0.5;   
t = 0.0;
intializedt=width-width/3*2;
dt=intializedt;
_color= color(int(random(0,200)),int(random(0,220)),int(random(0,190)));

smooth();
noStroke();
background(200);
}

@Override
void draw()
{
  fill(_color);
  //本来なら初期位相で位置を調整すべき
  for(float j=1.0;j<2.0;j+=0.1){
 for(float t = intializedt; t < width/3*2; t ++)
{
 y = -A * sin(w * t - p);
 ellipse(t, y*j + height/2, 8-7*noise(y*w)*j, 10-7*noise(y*w)*j);
}
  }
  
if(dt<width/3*2)
{
y = -A * sin(w * dt - p);
ellipse(dt, y + height/2, 20,20);
dt ++;
}

  }
}
