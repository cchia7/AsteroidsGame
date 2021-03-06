class Spaceship extends Floater{
public Spaceship() {
  corners = 4;
  xCorners = new int[corners];   
  yCorners = new int[corners]; 
  xCorners[0] = -8;
  yCorners[0] = -8;
  xCorners[1] = 16;
  yCorners[1] = 0;
  xCorners[2] = -8;
  yCorners[2] = 8;
  xCorners[3] = -2;
  yCorners[3] = 0;
  myColor = 255;   
  myCenterX = 200; 
  myCenterY = 200; //holds center coordinates   
  myXspeed = 0; 
  myYspeed = 0; //holds the speed of travel in the x and y directions   
  myPointDirection = 0; //holds current direction the ship is pointing in degrees    
}
public void hyperspace(){
  myXspeed = 0;
  myYspeed = 0;
  myCenterX = Math.random()*400;
  myCenterY = Math.random()*400;
  myPointDirection = Math.random()*361;
}

public void reset(){
  myXspeed = 0;
  myYspeed = 0;
  myCenterX = 200;
  myCenterY = 200;
  myPointDirection = 0;
}

public float getX(){
  return (float)myCenterX;
}

public float getY(){
  return (float)myCenterY;
}

public double getPointDirection(){
  return myPointDirection;
}
}
