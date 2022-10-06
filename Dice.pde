 void setup()
  {
      size(800,1000);
      noLoop();
  }
  void draw()
  {
      background(0);
      int count = 0;
      for (int y = 5; y<= 810; y = y + 80) {
        for (int x = 5; x <= 810; x = x + 80) {
          Die bob = new Die(x , y);
          bob.roll();
          bob.show();
          count = count + bob.numRoll;
        }
      }
      fill(255);
      textSize(50);
      text("Total:", 300, 950);
      text(count, 450, 950);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int count;
      int myX;
      int myY;
      int numRoll;
      
      Die(int x, int y) //constructor
      {
          myX=x;
          myY=y;
      }
      void roll()
      {
          numRoll = (int)(Math.random()*6)+1;
      }
      void show()
      {
        noStroke();
        fill((int)(Math.random()*150)+100,(int)(Math.random()*150)+100,(int)(Math.random()*150)+100);
       
        rect(myX, myY, 75, 75, 28);
        fill(0);
        if (numRoll == 1)
        {
           ellipse(myX+37.5, myY+37.5, 15,15);
        } else if (numRoll == 2)
        {
           ellipse(myX+25, myY+37.5, 15,15);
           ellipse(myX+50, myY+37.5, 15,15);
        } else if (numRoll ==3) 
        {        
           ellipse(myX+18.75, myY+15, 15,15);
           ellipse(myX+37.5, myY+37.5, 15,15);
           ellipse(myX+56.25, myY+60, 15,15); 
        } else if (numRoll == 4)
        {
           ellipse(myX+25, myY+25, 15,15);
           ellipse(myX+50, myY+25, 15,15);
           ellipse(myX+50, myY+50, 15,15);
           ellipse(myX+25, myY+50, 15,15);
        }  else if (numRoll ==5)
        {
           ellipse(myX+25, myY+25, 15,15);
           ellipse(myX+50, myY+25, 15,15);
           ellipse(myX+25, myY+50, 15,15);
           ellipse(myX+50, myY+50, 15,15);
           ellipse(myX+37.5, myY+37.5, 15,15);
        } else
        {      
           ellipse(myX+12.5, myY+25, 15,15);
           ellipse(myX+37.5, myY+25, 15,15);
           ellipse(myX+62.5, myY+25, 15,15);
           ellipse(myX+12.5, myY+50, 15,15);
           ellipse(myX+37.5, myY+50, 15,15);
           ellipse(myX+62.5, myY+50, 15,15);
      } 
      }
  }

