Spaceship hi = new Spaceship();
// Asteroid [] hello = new Asteroid[5];
ArrayList <Asteroid> hello = new ArrayList <Asteroid>();
Star [] sup = new Star [100];
// Bullet bob = new Bullet(hi);
ArrayList <Bullet> bob = new ArrayList <Bullet>();
ArrayList <SmallAsteroid> hey = new ArrayList <SmallAsteroid>();


public void setup() 
{
  size(400, 400);
  for (int i = 0; i<sup.length; i++)
  {
  	sup[i] = new Star();
  }
  

  for (int i = 0; i<= 10; i++)
  {
  	hello.add(new Asteroid());
  }

  for (int i =0; i<=10; i++)
  {
  	hey.add(new SmallAsteroid());
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

  for (int i =0; i<hey.size();i++)
  {
  	hey.get(i).show();
  	hey.get(i).move();
  }

for (int i =0; i<hello.size(); i++)
	{
		for (int y=0; y<bob.size(); y++)
		{
			if (dist((float)(hello.get(i).getCenterX()), (float)(hello.get(i).getCenterY()), (float)(bob.get(y).getCenterX()), (float)(bob.get(y).getCenterY()))<20)
  			{
  			hello.remove(i);
  			bob.remove(y);
  			break;
			}
		}
	}	


for (int i =0; i<hey.size(); i++)
	{
		for (int y=0; y<bob.size(); y++)
		{
			if (dist((float)(hey.get(i).getCenterX()), (float)(hey.get(i).getCenterY()), (float)(bob.get(y).getCenterX()), (float)(bob.get(y).getCenterY()))<20)
  			{
  			hey.remove(i);
  			bob.remove(y);
  			break;
			}
		}
	}	




}

public void mousePressed()
{
	bob.add(new Bullet(hi));
}


public void keyPressed()
{
	if (key == 'l')
		hi.turn(-8);
	if (key == 'r')
		hi.turn(8);
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


