Walker[] bob;
void setup()
{
  size(500, 500);
  bob = new Walker[100]; //amt of walkers
  for (int i = 0; i < bob.length; i++)
  {
    bob[i] = new Walker();
  }
}
void draw()  
{
  background(0);
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].walk();
    bob[i].show();
  }
}
class Walker
{
  float myX, myY;
  float myX2, myY2;
  int colorR = (int)(Math.random()*155) + 100;
  int colorG = (int)(Math.random()*155) + 100;
  int colorB = (int)(Math.random()*155) + 100;
  int sizeOfText = (int)(Math.random()*20) + 10;
  float increaser = 0;

  Walker()
  {
    myX = myY = 250;
    myX2 = myY2 = 250;
  }
  void walk()
  {
    for (float increase = 1; increase < 2; increase = increase + 0.1)
      increaser = increaser + increase;
    myX = myX + (float)(Math.random()*increaser) - 0.5*increaser;
    myY = myY + (float)(Math.random()*increaser) - 0.5*increaser;
    myX2 = myX2 + (float)(Math.random()*increaser) - 0.5*increaser;
    myY2 = myY2 + (float)(Math.random()*increaser) - 0.5*increaser;
  }
  void show()
  {
    fill(colorR, colorG, colorB);
    textSize(sizeOfText);
    text("I", myX, myY);
    text("LIKE", myY, myX);
    text("CODING", myX2, myY2);
    text("sometimes", myY2, myX2);
  }
}
