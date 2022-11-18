class Star{
  int myX, myY, myColor;
  Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color ((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  public void show(){
    fill(myColor);
    stroke(255) ;
    ellipse(myX,myY,3,3);
  }
}
