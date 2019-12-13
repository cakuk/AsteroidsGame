class Bullet extends Floater {

	protected double dRadians; 

	public Bullet() {
		
	}

	public Bullet(Spaceship theShip) {
		dRadians = myPointDirection * (Math.PI/180);
		myCenterX = theShip.getCenterX();
		myCenterY = theShip.getCenterY();
		myPointDirection = theShip.getPointDirection();
		myDirectionX = theShip.getDirectionX() + 5 * Math.cos(dRadians);
		myDirectionY = theShip.getDirectionY() + 5 * Math.sin(dRadians);
	}
	public void show() {
		fill(255, 0, 0);
		ellipse((float)myCenterX + 10, (float)myCenterY, 5, 5);
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
	public double getCenterX() {
		return myCenterX;
	}
	public double getCenterY() {
		return myCenterY;
	}
}