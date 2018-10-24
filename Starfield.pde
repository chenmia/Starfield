Particle[] avocado;
void setup() {
  size(600, 600);
  background(255, 237, 237);
  avocado = new Particle[100];
  for (int i = 0; i<avocado.length; i++) {
    avocado[i] = new NormalParticle();
  }
  avocado[99] = new JumboParticle();
  avocado[1] = new OddballParticle();
  avocado[2] = new OddballParticle();
  avocado[3] = new OddballParticle();
  avocado[4] = new OddballParticle();
  avocado[5] = new OddballParticle();
}

void draw() {
  background(255, 237, 237);
  for (int i = 0; i<avocado.length; i++) {
    avocado[i].move();
    avocado[i].show();
  }
}

interface Particle {
  public void move();
  public void show();
}

class NormalParticle implements Particle {
  double normalX, normalY, normalAngle, normalSpeed, normalColor;
  NormalParticle() {
    normalX = 300;
    normalY = 300;
    normalSpeed = (Math.random()*6);
    normalAngle = Math.random()*2*PI;
  }

  public void move() {
    normalX = normalX+(normalSpeed*Math.cos(normalAngle));
    normalY = normalY+(normalSpeed*Math.sin(normalAngle));
  }

  public void show() {
    noStroke();
    fill(37, 165, 33);
    ellipse((float)normalX, (float)normalY-20, 48, 53);
    ellipse((float)normalX, (float)normalY, 58, 58);
    fill(216, 226, 154);
    ellipse((float)normalX, (float)normalY, 50, 50);
    ellipse((float)normalX, (float)normalY-20, 40, 45);
    fill(119, 84, 19);
    ellipse((float)normalX, (float)normalY, 20, 20);
  }
}

class JumboParticle extends NormalParticle {
  public void show() {
    fill(37, 165, 33);
    ellipse((float)normalX, (float)normalY-20, 78, 83);
    ellipse((float)normalX, (float)normalY, 88, 88);
    fill(216, 226, 154);
    ellipse((float)normalX, (float)normalY, 80, 80);
    ellipse((float)normalX, (float)normalY-20, 70, 75);
    fill(119, 84, 19);
    ellipse((float)normalX, (float)normalY, 40, 40);
  }
}

class OddballParticle implements Particle {
  float oddX, oddY;
  OddballParticle() {
    oddX=(float)Math.random()*601;
    oddY=(float)Math.random()*601;
  }
  public void move() {
    oddX = oddX + (float)(Math.random()*10)-5;
    oddY = oddY + (float)(Math.random()*10)-5;
  }
  public void show() {
    fill(198, 122, 23);
    rect(oddX-2.5, oddY-2.5, 55, 55, 10);
    ellipse(oddX+15, oddY+5, 35, 35);
    ellipse(oddX+35, oddY+5, 35, 35);
    fill(237, 184, 116);
    rect(oddX, oddY, 50, 50, 10);
    ellipse(oddX+15, oddY+5, 30, 30);
    ellipse(oddX+35, oddY+5, 30, 30);
  }
}
