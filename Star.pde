class Star //note that this class does NOT extend Floater
{
	protected int myX, myY, myColor;
	public Star() {
		myX = (int)(Math.random() * 600);
		myY = (int)(Math.random() * 600);
		myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	}
	public void show() {
		noStroke();
		fill(myColor);
		ellipse(myX, myY, 2, 2);
	}
}
