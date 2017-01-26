	Slider bob = new Slider();
public void setup()
{
	size(960,720);
}
public void draw()
{
	background(150);
	sierpinski(40,680,640);
	bob.show();
	bob.move();
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
	fill(255,255,0);
	if(len <= 20)
	{
		System.out.println(0);
		triangle(x,y,x+len,y,x+len/2,y-len);
	}
	else
	{
		System.out.println(Math.random());
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}
class Slider
{
	int x,y;
	int boxX, boxY;
	boolean press;
	Slider()
	{
		boxX = 650;
		boxY = 150;
	}
	public void move()
	{
	if(mousePressed && (mouseX>= boxX+10 && mouseX <= boxX + 10) && (mouseY>= boxY+10 && mouseY <= boxY + 10))
	{
		boxX = mouseX;
		boxY = mouseY;
	}
	}
	public void show()
	{
		fill(0);
		rect(boxX-5, boxY-5,10,10);
	}
}	
