class Bullet extends Floater
{
	public Bullet(Spaceship theship)
	{
		myCenterX = (float)(hi.getCenterX());
		myCenterY = (float)(hi.getCenterY());
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + (float)(hi.getDirectionX());
		myDirectionY = 5*Math.sin(dRadians) + (float)(hi.getDirectionY());

	}

	public void show()
	{
		fill(255,255,255);
		ellipse((float)getCenterX(), (float)getCenterY(), (float)5, (float)5);

	}

	// move()
	// {

	// }
public double getCenterX()
{
	return myCenterX;
}

public double getCenterY()
{
	return myCenterY;
}
}