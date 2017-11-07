Spaceship Hello;
Stars[] universe;//your variable declarations here
public void setup() 
{
  background(250);
  size (600, 600);
  Hello = new Spaceship();
  universe = new Stars[50];
  for (int i=0; i < universe.length; i++)
  {
     universe[i]=new Stars(); 
  }//your code here
}
public void draw() 
{
  background(250);
  Hello.show();
  Hello.move();
  for (int i=0; i < universe.length; i++)
  {
     universe[i].show();
  }
}
public void keyPressed()
{
   if(keyCode == UP)
  {
    Hello.accelerate(1.0);
  }
  else if(keyCode == DOWN)
  {
    Hello.setX((int)(Math.random()*600));
    Hello.setY((int)(Math.random()*600));
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