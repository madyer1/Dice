Die first=new Die(100,100);
void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	background(0);
	int sum =0;
	for(int y=0;y<450;y+=first.mySize){
		for(int x=0;x<500;x+=first.mySize){
			Die first=new Die(x,y);
			first.roll();
			first.show();
			sum+=first.myNum;
		}
	}
	System.out.println(sum);
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
		mySize=20;
		roll();
	}
	void roll()
	{
		myNum = (int)(Math.random()*6+1);
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
		else if(myNum==3){
			ellipse(myX+(float)(mySize)/2,myY+(float)(mySize)/2,(float)(mySize/10),(float)(mySize/10));
			ellipse(myX+(float)(mySize)/3,myY+(float)(mySize)/3,(float)(mySize/10),(float)(mySize/10));
			ellipse(myX+(float)(mySize)/3*2,myY+(float)(mySize)/3*2,(float)(mySize/10),(float)(mySize/10));
		}
		else if(myNum==4){
			ellipse(myX+(float)(mySize)/3,myY+(float)(mySize)/3,(float)(mySize/10),(float)(mySize/10));
			ellipse(myX+mySize-(float)(mySize)/3,myY+(float)(mySize)/3,(float)(mySize/10),(float)(mySize/10));
			ellipse(myX+(float)(mySize)/3*2,myY+(float)(mySize)/3*2,(float)(mySize/10),(float)(mySize/10));
			ellipse(myX+(float)(mySize)/3,myY+mySize-(float)(mySize)/3,(float)(mySize/10),(float)(mySize/10));
		}
		else if(myNum==5){
			ellipse(myX+(float)(mySize)/3,myY+(float)(mySize)/3,(float)(mySize/10),(float)(mySize/10));
			ellipse(myX+mySize-(float)(mySize)/3,myY+(float)(mySize)/3,(float)(mySize/10),(float)(mySize/10));
			ellipse(myX+(float)(mySize)/3*2,myY+(float)(mySize)/3*2,(float)(mySize/10),(float)(mySize/10));
			ellipse(myX+(float)(mySize)/3,myY+mySize-(float)(mySize)/3,(float)(mySize/10),(float)(mySize/10));
			ellipse(myX+(float)(mySize)/2,myY+(float)(mySize)/2,(float)(mySize/10),(float)(mySize/10));
		}
		else if(myNum==6){
			ellipse(myX+(float)(mySize)/3,myY+(float)(mySize)/3,(float)(mySize/10),(float)(mySize/10));
			ellipse(myX+mySize-(float)(mySize)/3,myY+(float)(mySize)/3,(float)(mySize/10),(float)(mySize/10));
			ellipse(myX+(float)(mySize)/3*2,myY+(float)(mySize)/3*2,(float)(mySize/10),(float)(mySize/10));
			ellipse(myX+(float)(mySize)/3,myY+mySize-(float)(mySize)/3,(float)(mySize/10),(float)(mySize/10));
			ellipse(myX+(float)(mySize)/3,myY+(float)(mySize)/2,(float)(mySize/10),(float)(mySize/10));
			ellipse(myX+(float)(mySize)/3*2,myY+(float)(mySize)/2,(float)(mySize/10),(float)(mySize/10));
		}
	}
}
