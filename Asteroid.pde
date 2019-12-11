class Asteroid extends Floater {
	
	protected int myRotation;
	public Asteroid() {
		myCenterX = (int)(Math.random() * 600);
		myCenterY = (int)(Math.random() * 600);
		corners = 6;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -13;
		yCorners[0] = -10;
		xCorners[1] = 9;
		yCorners[1] = -10;
		xCorners[2] = 15;
		yCorners[2] = 2;
		xCorners[3] = 9;
		yCorners[3] = 12;
		xCorners[4] = -13;
		yCorners[4] = 10;
		xCorners[5] = -6;
		yCorners[5] = 2;
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