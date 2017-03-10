Particle[] p;
void setup()
{
  size(600,600);
  p= new Particle[50];   
  for (int i=0; i<p.length;i++){
  p[i]=new NormalParticle(); 
}
p[0]=new OddballParticle();
p[1]=new JumboParticle();
}
void draw(){
  background(0,0,0);
for (int i=0; i<p.length;i++){  
  p[i].show();
  p[i].move();
  p[i].colorChange();
}
}
class NormalParticle implements Particle
{
  double x, y, speed, angle;
  int r, g, b;
  NormalParticle(){
  r=(int)(Math.random()*250);
  g=(int)(Math.random()*250);
  b=(int)(Math.random()*250);
  x=300;
  y=300;
  angle=Math.random()*Math.PI*2;
  speed=Math.random()+1;
  }
    void move(){
    y+=speed*Math.sin(angle);
    x+=speed*Math.cos(angle);
    angle+=.01;
    if (x==500||x==100){
      speed=speed*-1;
}
    }
    void show(){
      fill(r,g,b);
      ellipse((float)x,(float)y,20,20);
  }
  void colorChange(){
  r=(int)(Math.random()*250);
  g=(int)(Math.random()*250);
  b=(int)(Math.random()*250);
  }
}

class OddballParticle implements Particle
{
  double x, y, speed, angle;
  int r, g, b;
  OddballParticle(){
  r=(int)(Math.random()*250);
  g=(int)(Math.random()*250);
  b=(int)(Math.random()*250);
  x=300;
  y=300;
  angle=Math.random()*Math.PI*2;
  speed=.2;
  }
  void move(){
    y+=speed*Math.sin(angle);
    x+=speed*Math.cos(angle);
    angle-=.01;
     if (x==500||x==100){
      speed=speed*-1;
  }
  }
  void show(){
   fill(r,g,b);
      ellipse((float)x,(float)y,20,40);
  }
  void colorChange(){
  }
  
}
class JumboParticle extends NormalParticle
{
    void show(){
      fill(r,g,b);
      ellipse((float)x,(float)y,40,40);
  }  
}
