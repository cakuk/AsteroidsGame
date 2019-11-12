class Spaceship extends Floater  
{   
	public Spaceship() {
		//myCenterX = myCenterY = 300;
		corners = 3;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = (int)myCenterX + 10;
		yCorners[0] = (int)myCenterY;
		xCorners[1] = (int)myCenterX - 15;
		yCorners[1] = (int)myCenterY + 10;
		xCorners[2] = (int)myCenterX - 15;
		yCorners[2] = (int)myCenterY - 10;
		myColor = color(250, 150, 250);
		myDirectionX = 5;// left / right
		myDirectionY = 5; // up / down
		myPointDirection = 0; // spaaceship angle
	}
}
