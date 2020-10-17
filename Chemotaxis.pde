int myX, myY;
Bacteria[] colony; 

void setup()   
{     
  noFill();
  size(500, 500);
  background(0,255,255);
  colony = new Bacteria[25];
  for (int i =0; i<colony.length; i++) {
    colony[i] = new Bacteria();
  }
  //initialize bacteria variables here
}   
void draw()   
{    
  for (int k=0; k<colony.length; k++) {
    colony[k].show();
    colony[k].move();
    //move and show the bacteria
  }
}


class Bacteria  
{    
  int myX, myY;
  Bacteria() 
  {
    myX = myY = 250;
    color (0, 250, 0);
  }
  void show() {
    ellipse(myX, myY, 15, 15);
  }
  void move() {
    int extraX =0;
    int extraY =0;

    if( mouseX > myX) {
      extraX = 1;
    } else if(mouseX < myX) {
      extraX = -1;
    } else  {
      extraX = 0;
    }
     if(mouseY > myY) {
      extraY = 1;
    } else if (mouseY < myY){
      extraY = -1;
    } else {
      extraY = 0;
    }
    
    
    
    
    if (((int)Math.random()*2)+1 == 1) {
      myX = myX + extraX +(int)(Math.random()*7)-3;
    } else {
      myX = myX + extraX +(int)(Math.random()*7)+3;
    }
    if (((int)Math.random()*2)+1 == 1) {
      myY = myY + extraY+ (int)(Math.random()*7)-3;
    } else {
      myY = myY + extraY + (int)(Math.random()*7)+3;
    }
  }//lots of java!
}    
void mouseClicked() {
  background(0,255,255);
}
/*
  void move() {
    if (((int)Math.random()*2)+1 == 1) {
      myX = myX + (int)(Math.random()*7)-3;
    } else {
      myX = myX + (int)(Math.random()*7)+3;
    }
    if (((int)Math.random()*2)+1 == 1) {
      myY = myY + (int)(Math.random()*7)-3;
    } else {
      myY = myY + (int)(Math.random()*7)+3;
    }
    
*/

