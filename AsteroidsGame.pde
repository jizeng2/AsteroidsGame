Spaceship Hello;//your variable declarations here
public void setup() 
{
  background(250);
  size (600, 600);
  Hello = new Spaceship();//your code here
}
public void draw() 
{
  background(250);
  Hello.move();
  Hello.show();
}
public void keyPressed()
{
   if(keyCode == 'a')
  {
    Hello.accelerate(3.0);
  }
  else if(keyCode == DOWN)
  {
    Hello.setX((int)(Math.random()*750)+25);
    Hello.setY((int)(Math.random()*450)+25);
    Hello.setDirectionX(0);
    Hello.setDirectionY(0);
    Hello.setPointDirection((int)(Math.random()*360));
  }

  else if(keyCode == LEFT)
  {
    Hello.turn(-15);
  }
  else if (keyCode == RIGHT)
  {
    Hello.turn(15);
  }

}
