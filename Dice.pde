Die first;
void setup()
{
	noLoop();
}
void draw()
{
	background(0);
	first.Die(100,100);
	first.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX,myY,mySize,myNum;	
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX=x;
		myY=y;
		mySize=15;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255);
		rect(myX,myY,mySize,mySize);
	}
}
