//2023178 斎藤亮磨
//課題２－１ ジョイ・ディヴィジョン『Unknown Pleasures』を基に作成

float dt= 0.01;
int count= 0;

void setup() {
  size(600,600);
  background(0);
  smooth();
}
 
void draw() {
  float t=0;
  
  background(0,0,0,100);
  noFill();
  stroke(255,255,255,30);
  strokeWeight(1.5);
  
  beginShape();
  for(int j=0;j<5;j++)
  {
    for (int i = 0; i < width-200; i++) 
      {
    float y = noise(t+mouseX)*height;
    t += dt;
   
 vertex(i+100,y);
       }
       stroke(255,255,255,250-random(0,30*j));
  }
  endShape();
  
}

 //スクショ
 void keyPressed(){
  
  if(key == ' '){
    
    save("sample" + count + ".png");
    
    count++;
  }
 }
