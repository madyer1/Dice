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
		mySize=50;
		roll();
	}
	void roll()
	{
		myNum = (int)(Math.random()*2+1);
	}
	void show()
	{
		fill(255);
		rect(myX,myY,mySize,mySize);
		fill(0);
		if(myNum==1){
			ellipse(myX+(float)(mySize)/2,myY+(float)(mySize)/2,(float)(mySize/10),(float)(mySize/10));
		}
		else if(myNum==2){
			ellipse(myX+(float)(mySize)/3,myY+(float)(mySize)/3,(float)(mySize/10),(float)(mySize/10));
			ellipse(myX+(float)(mySize)/3*2,myY+(float)(mySize)/3*2,(float)(mySize/10),(float)(mySize/10));
		}
	}
}
