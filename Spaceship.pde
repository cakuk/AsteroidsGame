class Spaceship extends Floater  
{   
	public Spaceship() {
		myCenterX = myCenterY = 300;
		corners = 3;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 10;
		yCorners[0] = 0;
		xCorners[1] = -15;
		yCorners[1] = 8;
		xCorners[2] = -15;
		yCorners[2] = -8;
		myColor = color(250, 150, 250);
		myDirectionX = 0;// left / right
		myDirectionY = 0; // up / down
		myPointDirection = 0; // spaceship angle
	}
	public void setDirectionX(int x) {
		myDirectionX = x;
	}
	public void setDirectionY(int y) {
		myDirectionY = y;
	}
	public void setPointDirection(int z) {
		myPointDirection = z;
	}
	public void setCenterX(int x) {
		myCenterX = x;
	}
	public void setCenterY(int y) {
		myCenterY = y;
	}
	public double getCenterX() {
		return myCenterX;
	}
	public double getCenterY() {
		return myCenterY;
	}
	public double getDirectionX() {
		return myDirectionX;
	}
	public double getDirectionY() {
		return myDirectionY;
	}
}
