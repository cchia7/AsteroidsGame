Star[] starfield;
Spaceship bob = new Spaceship();
ArrayList <Asteroid> asterField = new ArrayList <Asteroid>();
ArrayList <Bullet> ammo = new ArrayList <Bullet>();
int checker = 0;
public void setup() 
{
  size(400,400);
  background(0);
  starfield = new Star[100];
  for(int i = 0; i < starfield.length; i++){
    starfield[i] = new Star();
  }
  for(int j = 0; j < 21; j++){
    asterField.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < starfield.length; i++){
    starfield[i].show();
  }
  bob.show();
  bob.move();
  for(int h = 0; h < asterField.size(); h++){
    asterField.get(h).show();
    asterField.get(h).move();
    if(dist(asterField.get(h).getX(),asterField.get(h).getY(),bob.getX(),bob.getY()) < 20){
      asterField.remove(h);
    }
  }
  for(int m = 0; m < ammo.size(); m++){
    ammo.get(m).show();
    ammo.get(m).move();
    for(int k = 0; k < asterField.size(); k++){
    for(int l = 0; l < ammo.size(); l++){
    if(dist(asterField.get(k).getX(),asterField.get(k).getY(),ammo.get(l).getX(),ammo.get(l).getY()) < 10){
      asterField.remove(k);
      ammo.remove(l);
      break;
    }
    }
  }
  }
}

public void mousePressed(){
  ammo.add(new Bullet(bob));
}

public void keyPressed(){ //hyperspace
  if(key == ' '){
    bob.hyperspace();
  }
  else if(key == 'd'){ //turn right 10 degrees
    bob.turn(20);
  }
  else if(key == 'a'){ //turn left 10 degrees
    bob.turn(-20);
  }
  else if(key == 'w'){ //accelerate
    bob.accelerate(0.3);
  }
  else if(key == 'r'){ //reset the game
  
  for(int n = 0; n < asterField.size(); n++){
    asterField.remove(n);
  }
  
  for(int o = 0; o < 21; o++){
    asterField.add(new Asteroid());
  }
  bob.reset();
}
}
