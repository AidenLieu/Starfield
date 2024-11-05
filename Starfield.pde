//your code here
Particle[] h;
void setup()
{
  size(1000,1000);
  background(0);
  noStroke();
  h = new Particle[0];
  for(int i = 0; i < h.length; i++){
    h[i] = new Particle();
  }
}

void mousePressed(){
  h = new Particle[10000];
  for(int i = 0; i < h.length; i++){
    if ( i < 1000 ){
      h[i] = new OddballParticle();
    }else{
      h[i] = new Particle();
    }
  }
}

void draw()
{
  background(0);
  for(int i = 0; i < h.length; i++){
    h[i].move();
    h[i].show();
  }
}
class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor; 
  Particle(){
    mySpeed = Math.random()*3 + 0.1;
    myAngle = Math.PI*2 * Math.random();
    myX = mouseX;
    myY = mouseY;
    myColor = color(255,255,255);
  }
  void move(){
    myX += (Math.cos(myAngle) * mySpeed);
    myY += (Math.sin(myAngle) * mySpeed);
  }
  void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY,2,2);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
   OddballParticle(){
    mySpeed = 1;
    myAngle = Math.PI*2 * Math.random();
    myX = mouseX;
    myY = mouseY;
    myColor = color(#FFF04B);
  }
}
