Particle[] particles = new Particle[100];
void setup()
{
  size(500, 500);
  for(int i = 0; i < particles.length; i++){
    particles[i] = new Particle();
  }
  particles[0] = new OddballParticle();
}
void draw()
{
  fill(0, 0, 0, 50);
  noStroke();
  rect(0, 0, width, height);
  for(int i = 0; i < particles.length; i++){
    particles[i].move();
    particles[i].show();
  }
  noFill();
  
}
class Particle
{
  double X, Y, Angle, Speed;
  int Color, alpha;
  
  Particle(){
    X = width/2;
    Y = height/2;
    Angle = Math.random()*(2*Math.PI);
    alpha = 250;
    Color = color((int)(Math.random()*236)+100,(int)(Math.random()*256)+150,(int)(Math.random()*256)+100, alpha);
    Speed = Math.random()*5+1;
    
  }
  void move(){
    X += Math.cos(Angle) * Speed;
    Y += Math.sin(Angle) * Speed;
    alpha -= 5;
    if(X > width || X < 0 || Y > width || Y < 0){
      X = width/2;
      Y = width/2;
      Angle = Math.random()*(2*Math.PI);
      alpha = 200;
    }
 
  }
  void show(){
    fill(Color);
    noStroke();
    ellipse((float)X, (float)Y, 30, 30);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle(){
    X = width/2;
    Y = height/2;
    Angle = Math.random()*(2*Math.PI);
    alpha = 200;
    Color = color((int)(Math.random()*256)+100,(int)(Math.random()*256)+100,(int)(Math.random()*256)+100, alpha);
    Speed = Math.random()*10;
  }
  void move(){
    X += Math.cos(Angle) * Speed;
    Y += Math.sin(Angle) * Speed;
    alpha -= 50;
    if(X > width || X < 0 || Y > width || Y < 0){
      X = width/2;
      Y = width/2;
      Angle = Math.random()*(2*Math.PI);
      alpha = 300;
    }
 
  }
  void show(){
    fill(Color);
    noStroke();
    ellipse((float)X, (float)Y, 30, 30);
  }
}


