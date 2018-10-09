Walker[] fish;
Pointer pen;
void setup()
{
  size(420,420);
  fish= new Walker[50];
  for (int i=0;i<fish.length; i++)
  {
    fish[i]=new Walker();
  }
  pen= new Pointer();
}

void draw()
{
  background(255,221,204);
  for (int i=0;i<fish.length; i++)
  {
    fish[i].show();
    fish[i].walk();
  }
  pen.pointer();
  pen.show();
}
class Walker
{
  int myX,myY;
  boolean life;
  Walker()
  {
    myX=225;
    myY=225;
    life=true;
  }
  void walk()
  {
    myX=myX+(int)(Math.random()*21)-10;    
    myY=myY+(int)(Math.random()*21)-10;
    if( dist(myX,myY,mouseX,mouseY)<50)
    {
      life=false;
    }
  }
  void show()
  {
    fill(110);
    noStroke();
    if (life==true)
    {
      ellipse(myX,myY,35,10);   
      triangle(myX-25,myY+5,myX-25,myY-5,myX-7,myY);
    }
  }
}

class Pointer
{
  int myX,myY;
  {
    myX=300;
    myY=300;
  }
  void pointer()
  {
    myX= mouseX;
    myY=mouseY;
  }
  void show()
  {
    fill(0);
    ellipse(myX,myY,100,100);
    fill(255);
    noStroke();
    ellipse(myX,myY+15,70,60);
    ellipse(myX-15,myY-15,32,32);
    ellipse(myX+15,myY-15,32,32);
    fill(0);
    ellipse(myX+15,myY-18,15,15);
    ellipse(myX-15,myY-18,15,15);
    fill(255,166,77);
    triangle(myX+2,myY+15,myX-8,myY-4,myX+8,myY-4);
  }
}