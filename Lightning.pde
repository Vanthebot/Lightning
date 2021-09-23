int startX = 250;
int startY = 0;
int endX = 250;
int endY = 0;
int cpx1 = (int)(Math.random() * 501);
int cpy1 = (int)(Math.random() * 501);
int cpx2 = (int)(Math.random() * 501);
int cpy2 = (int)(Math.random() * 501);
void setup()
{
  size(500,500);
  strokeWeight(2);
  background(50, 50, 50);
  frameRate(20);
}
void draw()
{
  noFill();
  
  //color
  int r = (int)(Math.random() * 256);
  int g = (int)(Math.random() * 256);
  int b = (int)(Math.random() * 256);
stroke(r, g, b);
while(endY <= 500){
  endY = startY + (int)(Math.random() * 40) - 10;
  endX = startX + (int)(Math.random() * 20) - 10;
  cpx2 = cpx1 + (int)(Math.random() * 30);
  cpy2 = cpy1 + (int)(Math.random() * 50) - 10;
  curve(cpx1, cpy1, startX, startY, endX, endY, cpx2, cpy2);

  startX = endX;
  startY = endY;
}
}
void mousePressed()
{
startX = 250;
startY = 0;
endX = 250;
endY = 0;
}
