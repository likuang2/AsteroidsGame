Spaceship ship = new Spaceship();
boolean forward, left, right, back, trigger = false;
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> gun = new ArrayList <Bullet> ();
Star [] sky = new Star[200];
public void setup() 
{
  size(500, 500);
  background(0);
  frameRate(144);//i wanted just to speed everything up and this was the easiest way lol
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
  if (trigger){
   gun.add(new Bullet(ship));
    }
    
    for(int i = gun.size() -1; i > 0; i--){
    gun.get(i).show();
    gun.get(i).move();
  }
    
   
  for (int i = rock.size() -1; i > 0; i--) {
  float j = dist((float)ship.getX(),(float)ship.getY(),(float)rock.get(i).getX(),(float)rock.get(i).getY());
    if (j < 10){
  rock.remove(i);
    } else {
  rock.get(i).show();
  rock.get(i).move();
    }
    if (gun.size() >= 1){
      for (int d = gun.size() -1; d > 0; d--){
        for (int k = rock.size() -1; k > 0; k--) {
          if (dist((float)gun.get(d).getX(),(float)gun.get(d).getY(),(float)rock.get(k).getX(),(float)rock.get(k).getY()) < 10) {
            rock.remove(k);
            gun.remove(d);
            break;
          }
        }
      }
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
   if (key == ' ') {
    trigger = true;
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
  if (key == 'd' || key == 'D') {
    right = false;
  }
  if (key == 's' || key == 'S') {
    back = false;
  }
  if (key == ' ') {
    trigger = false;
  }
}
