Die first=new Die(100,100);
void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	background(0);
	first.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX,myY,mySize,myNum;	
	Die(int x, int y)
	{
		//variable initializations here
		myX=x;
		myY=y;
		mySize=25;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255);
		rect(myX,myY,mySize,mySize);
		if(true){
			fill(0);
			ellipse((float)(myX+mySize)/2,(float)(myY+mySize)/2,(float)(mySize/10),(float)(mySize/10));
		}
	}
}
