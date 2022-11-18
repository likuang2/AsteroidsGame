Spaceship ship = new Spaceship();
boolean charge, forward, left, right, back = false;
int storedenergy = 0;
Star [] sky = new Star[200];
public void setup() 
{
  size(500, 500);
  background(0);
  for (int i = 0; i < sky.length; i++) {
    sky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  if (charge == true) {
    if (storedenergy < 480) {
      storedenergy+= 2;
    }
    for (int i = 0; i<storedenergy; i++) {
      fill(36, 234, 240);
      rect(10, 10, storedenergy, 30, 20 );
    }
  }
  if (right == true) {
    ship.turn(3);
  }
  if (left == true) {
    ship.turn(-3);
  }
  if (forward == true) {
    ship.accelerate(0.1);
  }
  if (back == true) {
    ship.accelerate(-0.1);
  }
  ship.move();
  ship.show();
}

public void keyPressed()
{
  if (key == 'm') {
    ship.myXspeed = ship.myYspeed = 0; 
    ship.myCenterX = (int)(random(10, 490));
    ship.myCenterY = (int)(random(20, 490));
    ship.myPointDirection = (int)(random(360));
  }
  if (keyCode == SHIFT) {
    charge = true;
  }
  if (key == 'w' || key == 'W') {
    forward = true;
  }
  if (key == 'a' || key == 'A') {
    left = true;
  }
  if (key == 'd' || key == 'D') {
    right = true;
  }
  if (key == 's' || key == 'S') {
    back = true;
  }
}

public void keyReleased()
{
  if (keyCode == SHIFT) {
    charge = false;
    ship.accelerate((storedenergy/10));
    storedenergy = 0;
  }
  if (key == 'w' || key == 'W') {
    forward = false;
  }
  if (key == 'a' || key == 'A') {
    left = false;
  }
  if (key == 'd' || key == 'S') {
    right = false;
  }
  if (key == 's' || key == 'D') {
    back = false;
  }
}
