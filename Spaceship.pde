class Spaceship extends Floater  
{   
    public Spaceship() {
    corners = 3;
    xCorners = new int[corners];
    xCorners[0] = 16;
    xCorners[1] = -10;
    xCorners[2] = -10;
    yCorners = new int[corners];
    yCorners[0] = 0;
    yCorners[1] = 10;
    yCorners[2] = -10;
    myColor = color(255, 255, 255);
    myCenterX = myCenterY = 250; 
    myXspeed = myYspeed = 0; 
    myPointDirection = 0;
  }
}
