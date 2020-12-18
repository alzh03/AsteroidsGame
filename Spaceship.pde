class Spaceship extends Floater
{   
  public Spaceship()
  {
    corners = 3;
    xCorners = new int[corners];   
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myColor = color(0, 255, 0);   
    myCenterX = myCenterY = 250; //holds center coordinates   
    myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees    
  }
  public void hyperspace()
  {
    myXspeed = myYspeed = 0;
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myPointDirection = (int)(Math.random()*360);
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
}
