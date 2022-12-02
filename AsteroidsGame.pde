Spaceship ship = new Spaceship();
boolean forward, left, right, back = false;
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
Star [] sky = new Star[200];
public void setup() 
{
  size(500, 500);
  background(0);
  for (int i = 0; i < sky.length; i++) {
    sky[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
    rock.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < sky.length; i++) {
    sky[i].show();
  }
  for (int i = rock.size() -1; i > 0; i--) {
  float j = dist((float)ship.getX(),(float)ship.getY(),(float)rock.get(i).getX(),(float)rock.get(i).getY());
    if (j < 10){
  rock.remove(i);
    } else {
  rock.get(i).show();
  rock.get(i).move();
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
    for(int i = 0; i < 10; i++){
  
  }
}

public void keyPressed()
{
  if (key == 'm') {
    ship.myXspeed = ship.myYspeed = 0; 
    ship.myCenterX = (int)(random(10, 490));
    ship.myCenterY = (int)(random(20, 490));
    ship.myPointDirection = (int)(random(360));
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
