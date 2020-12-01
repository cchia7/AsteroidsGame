Star[] starfield;
Spaceship bob = new Spaceship();
ArrayList <Asteroid> asterField = new ArrayList <Asteroid>();
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
}
