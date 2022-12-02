class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid() {
    corners = 5;
    xCorners = new int[corners];
    xCorners[0] = -10 + (int)(Math.random()*9)-3;
    xCorners[1] = 7 + (int)(Math.random()*9)-3;
    xCorners[2] = 15 + (int)(Math.random()*9)-3;
    xCorners[3] = 10 + (int)(Math.random()*9)-3;
    xCorners[4] = -10 + (int)(Math.random()*9)-3;
    yCorners = new int[corners];
    yCorners[0] = -7 + (int)(Math.random()*9)-3;
    yCorners[1] = -7 + (int)(Math.random()*9)-3;
    yCorners[2] = 0 + (int)(Math.random()*9)-3;
    yCorners[3] = 15 + (int)(Math.random()*9)-3;
    yCorners[4] = 7 + (int)(Math.random()*9)-3;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*5)-3;
    myYspeed = (int)(Math.random()*5)-3;
    myColor = color(128,128,128);
    myPointDirection = 0;
    rotSpeed = (int)(Math.random()*8)+1;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
