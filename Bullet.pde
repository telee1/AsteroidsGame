class Bullet extends Floater
{
	public Bullet(Spaceship theship)
	{
		myCenterX = (float)(theship.getCenterX());
		myCenterY = (float)(theship.getCenterY());
		myPointDirection = (float)(theship.getPointDirection());
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + (float)(theship.getDirectionX());
		myDirectionY = 5*Math.sin(dRadians) + (float)(theship.getDirectionY());

	}

	public void show()
	{
		fill(255,255,255);
		ellipse((float)getCenterX(), (float)getCenterY(), (float)5, (float)5);

	}


public double getCenterX()
{
	return myCenterX;
}

public double getCenterY()
{
	return myCenterY;
}

public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      bob.remove(this);    
    }    
    else if (myCenterX<0)
    {     
      bob.remove(this);   
    }    
    else if (myCenterY >height)
    {    
      bob.remove(this);   
    } 
    
    else if (myCenterY < 0)
    {     
      bob.remove(this);   
    }   
  }   


}