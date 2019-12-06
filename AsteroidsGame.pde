Spaceship hi = new Spaceship();
// Asteroid [] hello = new Asteroid[5];
ArrayList <Asteroid> hello = new ArrayList <Asteroid>();
Star [] sup = new Star [100];
// Bullet bob = new Bullet(hi);
ArrayList <Bullet> bob = new ArrayList <Bullet>();


public void setup() 
{
  size(400, 400);
  for (int i = 0; i<sup.length; i++)
  {
  	sup[i] = new Star();
  }
  

  for (int i = 0; i<= 5; i++)
  {
  	hello.add(new Asteroid());
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

  for (int i = 0; i<hello.size(); i++)
  {
  	hello.get(i).show();
  	hello.get(i).move();

  	if(dist((float)(hello.get(i).getCenterX()), (float)(hello.get(i).getCenterY()), (float)(hi.getCenterX()), (float)(hi.getCenterY()))<20)
  		hello.remove(i);
  }

  // bob.show();
  // bob.move();
  for (int i =0; i<bob.size();i++)
  {
  	bob.get(i).show();
  	bob.get(i).move();
  }

}

public void mousePressed()
{
	bob.add(new Bullet(hi));
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


