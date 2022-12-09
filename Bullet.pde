class Bullet extends Floater  
{   
    public Bullet(Spaceship ship) {
    corners = 4;
    xCorners = new int[corners];
    xCorners[0] = -5;
    xCorners[1] = 0;
    xCorners[2] = 5;
    xCorners[3] = 0;
    yCorners = new int[corners];
    yCorners[0] = 0;
    yCorners[1] = 7;
    yCorners[2] = 7;
    yCorners[3] = 0;
    myColor = color(255, 0, 0);
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myPointDirection = ship.getPointDirection();
    accelerate(5);
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
