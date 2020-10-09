int diceSize = 85; 

void setup()
{
  size(650, 650); 
  noLoop();
  textAlign(CENTER, CENTER); 
  textSize(40);
}
void draw()
{
  int numDots = 0; 
  background(0); 
  for (int y = 50; y < 400; y+= 150) 
  {
    for (int x = 60; x < 600; x+= 150) {
      Die bob = new Die(x, y); 
      bob.show(); 
      bob.roll(); 
      if (bob.side == 1) {
        numDots = numDots + 1;
      } 
      if (bob.side == 2) {
        numDots = numDots + 2;
      }
      if (bob.side == 3) {
        numDots = numDots + 3;
      }
      if (bob.side == 4) {
        numDots = numDots + 4;
      }
      if (bob.side == 5) {
        numDots = numDots + 5;
      }
      if (bob.side == 6) {
        numDots = numDots + 6;
      }
      fill(255);
    }
  }  
  text("the sum = " + numDots, 325, 550);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, die, side; 

  Die(int x, int y) //constructor
  {
    myX = x; 
    myY = y; 
    side = 1;
  }
  void roll()
  {
    die = (int)(Math.random()*6)+1;
  }
  void show()
  {
    noStroke(); 
    fill((int)((Math.random()*238)+102), (int)((Math.random()*51)+191), (int)((Math.random()*139)+221)); 
    rect(myX, myY, diceSize, diceSize, diceSize/5);
    stroke(0); 
    fill(255);
    side = (int)((Math.random()*6)+1); 

    if (side == 1) {
      ellipse((myX + diceSize/2), (myY + diceSize/2), diceSize/5, diceSize/5);
    }
    if (side == 2) {
      ellipse(myX + diceSize/2, myY + 60, diceSize/5, diceSize/5); 
      ellipse(myX + diceSize/2, myY + diceSize/4, diceSize/5, diceSize/5);
    }
    if (side == 3) {
      ellipse(myX + diceSize/2, myY + diceSize/2, diceSize/5, diceSize/5); 
      ellipse(myX + 70, myY + 70, diceSize/5, diceSize/5); 
      ellipse(myX + 15, myY + diceSize/6, diceSize/5, diceSize/5);
    }
    if (side == 4) {
      ellipse(myX + diceSize/4, myY + 60, diceSize/5, diceSize/5); 
      ellipse(myX + diceSize/4, myY + diceSize/4, diceSize/5, diceSize/5); 
      ellipse(myX + 65, myY + diceSize/4, diceSize/5, diceSize/5); 
      ellipse(myX + 65, myY + 60, diceSize/5, diceSize/5);
    }
    if (side == 5) {
      ellipse(myX + diceSize/2, myY + diceSize/2, diceSize/5, diceSize/5); 
      ellipse(myX + 70, myY + 70, diceSize/5, diceSize/5); 
      ellipse(myX + 15, myY + diceSize/6, diceSize/5, diceSize/5); 
      ellipse(myX + 15, myY + 70, diceSize/5, diceSize/5); 
      ellipse(myX + 70, myY + diceSize/6, diceSize/5, diceSize/5);
    }
    if (side == 6) {
      ellipse(myX + diceSize/4, myY + 70, diceSize/5, diceSize/5); 
      ellipse(myX + diceSize/4, myY + diceSize/6, diceSize/5, diceSize/5); 
      ellipse(myX + 65, myY + diceSize/6, diceSize/5, diceSize/5); 
      ellipse(myX + 65, myY + 70, diceSize/5, diceSize/5); 
      ellipse(myX + 65, myY + 43, diceSize/5, diceSize/5); 
      ellipse(myX + diceSize/4, myY + 43, diceSize/5, diceSize/5);
    }
  }
}
