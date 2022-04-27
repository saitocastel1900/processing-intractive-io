//2023178 斎藤亮磨
//課題２－２ Example2-3を基に作成 

float rectSize;
float angle;
float easing;
float targetvalue;
String _string;
int count=0;

void setup() {
size(640,480);
frameRate(60);

rectSize= 200;
angle=0.0;
easing = 0.7;
targetvalue=0.0;
_string=" ";
 _string="キーは押されていません";
colorMode(HSB, 360, 256, 256);
textFont(createFont("x12y16pxMaruMonica.ttf", 20));
}

void draw() {
background(100);
fill(340);


rectMode(CENTER);
text(_string,width/2,height/2-20,170,100);
translate(width/2,height/2);



noStroke();
fill(340);
if(keyPressed) {
  angle+=angle+0.001;
fill(340-angle);
} 

if(keyPressed == false){
angle=(targetvalue-angle) * easing;
}

rotate(angle);
for(int i=0;i<5;i++)
{
rect(0,0,rectSize/4+angle*0.1, rectSize/4+angle*0.1);
}
  
  
  
}

void keyPressed()
{
   _string="キーが押されています";
   
   
   //スクショ
   if(key == ' '){
    
    save("sample" + count + ".png");
    
    count++;
 }
}

void keyReleased()
{
 _string="キーは押されていません";
}
