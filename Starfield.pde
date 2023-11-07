Tomato[] bob = new Tomato[300];

void setup()
{
  size(700, 700);
  background(0);
  noStroke();
  for (int i = 40; i<bob.length; i++) {
    for (int j = 0; j<40; j++) {
    bob[j] = new OddballParticle();
  }
  bob[i] = new Tomato();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i<bob.length; i++) {
    bob[i].move();
    bob[i].show();
  }
}
class Tomato
{
  double myX, myY, mySpeed, myAngle, myRotationAngle;
  int myColor;

  Tomato() {
    myX = myY = 350;
    mySpeed = Math.random()*10-5;
    myAngle = Math.random()*Math.PI;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }

  void move() {
    myX = myX + (Math.cos(myAngle)*mySpeed);
    myY = myY + (Math.sin(myAngle)*mySpeed);

  }

  void show() {
   
    fill(227, 11, 11);
    ellipse(30 + (float)myX, 30+(float)myY, 30, 27);
    fill(13, 71, 19);
    rect(30+(float)myX, 15+(float)myY, 5, 8);
    beginShape();
    curveVertex(30+(float)myX, 10+(float)myY);
    curveVertex(30+(float)myX, 15+(float)myY);
    curveVertex(25+(float)myX, 20+(float)myY);
    curveVertex(25+(float)myX, 30+(float)myY);
    curveVertex(22+(float)myX, 40+(float)myY);
    curveVertex(30+(float)myX, 20+(float)myY);
    curveVertex(30+(float)myX, 10+(float)myY);
    endShape();
  }
}


class OddballParticle extends Tomato //inherits from Particle
{
  OddballParticle() {
    
  }
  void move() {
      myX = myX + (Math.cos(myAngle)*mySpeed);
    myY = myY + (Math.sin(myAngle)*mySpeed);
  }
  void show() {
      fill(227, 11, 11);
      textSize(90); 
      text("GET UP", 80+(float)myX, 100+(float)myY);
  }
}
