
class Star //note that this class does NOT extend Floater
{

private int myCol;
private int mySize;
private int myLocationX;
private int myLocationY;

Star()
{
	myCol = color((int)(Math.random()*255)+1, (int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
	mySize = ((int)(Math.random()*7)+1);
	myLocationX = ((int)(Math.random()*400)+1);
	myLocationY = ((int)(Math.random()*400)+1);

}


public void show()
{
noStroke();
fill(myCol);
ellipse (myLocationX, myLocationY, mySize, mySize );

}



}
