class Asteroid extends Floater {
	
	protected int myRotation;
	public Asteroid() {
		myCenterX = (int)(Math.random() * 600);
		myCenterY = (int)(Math.random() * 600);
		corners = 6;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -14;
		yCorners[0] = -11;
		xCorners[1] = 10;
		yCorners[1] = -11;
		xCorners[2] = 16;
		yCorners[2] = 3;
		xCorners[3] = 8;
		yCorners[3] = 13;
		xCorners[4] = -14;
		yCorners[4] = 11;
		xCorners[5] = -7;
		yCorners[5] = 3;
		myColor = color(155);
		myDirectionX = (Math.random() * 3) - 1;// left / right
		myDirectionY = (Math.random() * 3) - 1; // up / down
		myPointDirection = 0; // spaceship angle
		myRotation = (int)(Math.random() * 3) - 1;
	}
	public void move() {
		turn(myRotation);
		super.move();
	}
	public double getCenterX() {
		return myCenterX;
	}
	public double getCenterY() {
		return myCenterY;
	}
}