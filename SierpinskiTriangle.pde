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
		triangle(x,y,x+len,y,x+len/2,y-len);
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}
