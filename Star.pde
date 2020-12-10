class Star //note that this class does NOT extend Floater
{
  double myX,myY;
  int myColor;
  Star(){
    myX = Math.random()*401;
    myY = Math.random()*401;
    myColor = color(255,255,0);  
}
void show(){
  fill(myColor);
  stroke(myColor);
  ellipse((float)myX,(float)myY,5,5);
}
}
