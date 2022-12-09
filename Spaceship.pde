class Spaceship extends Floater  
{   
    public Spaceship() {
    corners = 6;
    xCorners = new int[corners];
    xCorners[0] = 15;
    xCorners[1] = 7;
    xCorners[2] = -10;
    xCorners[3] = -3;
    xCorners[4] = -10;
    xCorners[5] = 7;
    yCorners = new int[corners];
    yCorners[0] = 0;
    yCorners[1] = 7;
    yCorners[2] = 7;
    yCorners[3] = 0;
    yCorners[4] = -7;
    yCorners[5] = -7;
    myColor = color(255, 255, 255);
    myCenterX = myCenterY = 250; 
    myXspeed = myYspeed = 0; 
    myPointDirection = 0;
  }
    public double getX(){
    return myCenterX;
  }
    public double getY(){
    return myCenterY;
  }
    public double getPointDirection(){
    return myPointDirection;
  }
}
