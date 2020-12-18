class Star
{
  private int myColor;
  private int myX;
  private int myY;
  private int mySize;
  public Star()
  {
    myColor = color(255, 255, 255);
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    mySize = 5;
  }
  public void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}
