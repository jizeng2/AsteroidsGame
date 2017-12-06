Spaceship Hello;
Stars[] universe;
ArrayList<Asteroid>stones;
ArrayList <Bullet> myBullets;//your variable declarations here
public void setup() 
{
  background(250);
  size (600, 600);
  Hello = new Spaceship();
  universe = new Stars[50];
  for (int i=0; i < universe.length; i++)
  {
     universe[i]=new Stars(); 
  }
  stones = new ArrayList <Asteroid>();
  for (int i=0; i < 20; i++)
  {
     stones.add(i, new Asteroid());
  }
   myBullets = new ArrayList <Bullet>();
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
  for (int i=0; i < stones.size(); i++)
  {
     stones.get(i).show();
     stones.get(i).move();
  }
  for(int i = 0; i < myBullets.size(); i++)
  {
    myBullets.get(i).show();
    myBullets.get(i).move();
    for(int j = 0; j < stones.size(); j++)
    {
      if(myBullets.get(i).collide(stones.get(j).getX(),stones.get(j).getY()) == true)
      {
        myBullets.remove(i);
        stones.remove(j);
        break;
      }
    }
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
  if(key == ' ')
  {
    myBullets.add(new Bullet(Hello));
  }
}