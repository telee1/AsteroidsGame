class Asteroid extends Floater
{
	private int rotSpeed;

	public Asteroid()
	{
		corners = 6;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -11;
		yCorners[0] = -8;
		xCorners[1] = 7;
		yCorners[1] = -8;
		xCorners[2] = 13;
		yCorners[2] = 0;
		xCorners[3] = 6;
		yCorners[3] = 10;
		xCorners[4] = -11;
		yCorners[4] = 8;
		xCorners[5] = -8;
		yCorners[5] = 0;

		myDirectionX = (int)(Math.random()*3)-1;
		myDirectionY = (int)(Math.random()*3)-1;

		myCenterX = (int)(Math.random()*400)-1;
		myCenterY = (int)(Math.random()*400)-1;
		myPointDirection = (int)(Math.random()*360)-1;
		
		myColor = color(201, 200);


		rotSpeed = (int)(Math.random()*5)-2;
	}

	public void move()
	{
		turn(rotSpeed);
		super.move();

	}

	public double getCenterX()
	{
		return myCenterX;
	}
	public double getCenterY()
	{
		return myCenterY;
	}

}


class SmallAsteroid extends Asteroid
{

	private int rotSpeed;
	public SmallAsteroid()
	{
		corners = 5;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -5;
		yCorners[0] = -4;
		xCorners[1] = 4;
		yCorners[1] = -4;
		xCorners[2] = 6;
		yCorners[2] = 0;
		xCorners[3] = 3;
		yCorners[3] = 5;
		xCorners[4] = -5;
		yCorners[4] = 4;
		

		myDirectionX = (int)(Math.random()*3)-1;
		myDirectionY = (int)(Math.random()*3)-1;

		myCenterX = (int)(Math.random()*400)-1;
		myCenterY = (int)(Math.random()*400)-1;
		myPointDirection = (int)(Math.random()*360)-1;
		
		myColor = color(201, 200);


		rotSpeed = (int)(Math.random()*10)-2;


	}


}