class Asteroid extends Floater{
  private double rotateSpeed;
  public Asteroid(){
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 10;
    yCorners[0] = 4;
    xCorners[1] = 4;
    yCorners[1] = 7;
    xCorners[2] = -5;
    yCorners[2] = 0;
    xCorners[3] = 1;
    yCorners[3] = -5;
    xCorners[4] = 7;
    yCorners[4] = -4;
    myColor = color(192, 192, 192);
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myXspeed = Math.random()*4 - 1;
    myYspeed = Math.random()*4 - 1;
    myPointDirection = 0;
    rotateSpeed = (int)Math.random()*4 - 1;
  }
  public void move(){
    turn(rotateSpeed);
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
    
    
