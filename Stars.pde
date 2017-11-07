class Stars //note that this class does NOT extend Floater
{
  private int myX, myY, mySize, myColor;
  public Stars()
  {
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    mySize = (int)(Math.random()*4);
    myColor = color(137, 124, 92);
  }

  public void show()
  {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
//your code here
}