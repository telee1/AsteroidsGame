Spaceship hi = new Spaceship();
Star [] sup = new Star [100];

public void setup() 
{
  size(400, 400);
  for (int i = 0; i<sup.length; i++)
  {
  	sup[i] = new Star();
  }
}
public void draw() 
{
	background(0);
  hi.show();
  hi.move();
  for (int i =0; i<sup.length; i++)
  {
  	sup[i].show();
  }

}

public void keyPressed()
{
	if (key == 'l')
		hi.turn(-5);
	if (key == 'r')
		hi.turn(5);
	if (key == 'a')
		hi.accelerate(0.3);


	if (key == 'h')
	{
		
		hi.setCenterX(((int)(Math.random()*400)));
		hi.setCenterY(((int)(Math.random()*400)));
		hi.setDirectionX(0);
		hi.setDirectionY(0);
		hi.setPointDirection(((int)(Math.random()*360)+1));

		
		
		
	}
	

	
	

}


