class Bullet extends Floater {

	public Bullet(Spaceship theShip) {
		myCenterX = theShip.getCenterX();
		myCenterY = theShip.getCenterY();
		myPointDirection = theShip.getPointDirection();
		myDirectionX = theShip.getDirectionX() + (5 * Math.cos(myPointDirection*(Math.PI/180)));
		myDirectionY = theShip.getDirectionY() + (5 * Math.cos(myPointDirection*(Math.PI/180)));
	}

	public void show() {
		fill(255, 0, 0);
		ellipse((float)myCenterX + 10, (float)myCenterY, 5, 5);
	}

}