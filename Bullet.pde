public class Bullet extends Floater
{
  private double dRadians;
  public Bullet(Spaceship ship)
  {
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myPointDirection = ship.getPointDirection();
    dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + ship.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + ship.getDirectionY();
  }

  public void show()
  {
    noStroke();
    fill(227, 124, 217);
    ellipse((int)myCenterX, (int)myCenterY, 10, 10);
  }

  public void move()
  {
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
  }

  public boolean collide(int x, int y)
  {
    if(dist((int)myCenterX, (int)myCenterY, x, y) < 10)
      return true;
    else {
      return false;
    }
  }

  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return myPointDirection;}
}