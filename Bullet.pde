class Bullet extends Floater{
  private double dRadians;
  public Bullet(Spaceship theShip){
    double dRadians = theShip.myPointDirection*(Math.PI/180); 
    myColor = color(255,0,255);
    myCenterX = theShip.myCenterX;
    myCenterY = theShip.myCenterY;
    myXspeed = theShip.myXspeed + (6.0 * Math.cos(dRadians));
    myYspeed = theShip.myYspeed + (6.0 * Math.sin(dRadians));
    myPointDirection = theShip.myPointDirection;
  }
  public void show(){
    fill(myColor);
    stroke(myColor);
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
  public void move(){
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public float getX(){
    return (float) myCenterX;
  }
  public float getY(){
    return (float) myCenterY;
  }
}
