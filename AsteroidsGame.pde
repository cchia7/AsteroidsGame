Star[] starfield;
Spaceship bob = new Spaceship();
public void setup() 
{
  size(400,400);
  background(0);
  starfield = new Star[100];
  for(int i = 0; i < starfield.length; i++){
    starfield[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < starfield.length; i++){
    starfield[i].show();
  }
  bob.move();
  bob.show();
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
  else if(key == 'w'){
    bob.accelerate(0.3);
  }
}
