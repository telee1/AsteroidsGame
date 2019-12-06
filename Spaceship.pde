class Spaceship extends Floater
  {
      public  Spaceship()
      {
        corners = 4;
        xCorners = new int [corners];
        yCorners = new int [corners];
        xCorners[0] = -8;
        yCorners[0] = -8;
        xCorners[1] = 16;
        yCorners[1] = 0;
        xCorners[2] = -8;
        yCorners[2] = 8;
        xCorners[3] = -2;
        yCorners[3] = 0;

        myColor = color(255, 255, 255);
        myCenterX = 200;
        myCenterY = 200;
        myDirectionX = 0;
        myDirectionY = 0;
        myPointDirection = 0;
      }


 public void setDirectionX(int x)
  {
    myDirectionX = x;
  }
   public void setDirectionY(int x)
  {
    myDirectionY = x;
  }
   public void setCenterX(int x)
  {
    myCenterX = x;
  }
   public void setCenterY(int x)
  {
    myDirectionY = x;
  }
   public void setPointDirection(int x)
  {
    myPointDirection = x;
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