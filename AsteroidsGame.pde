Spaceship one = new Spaceship();
Star[] dots = new Star[300];
public void setup() 
{
	size(600, 600);
	frameRate(100);
	for(int i = 0; i < dots.length; i = i + 1) {
		dots[i] = new Star();
	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < dots.length; i = i + 1) {
		dots[i].show();
	}
	one.move();
	one.show();
}
public void keyPressed() {
	// press 'w'
	if(keyCode == 87) {
		one.turn(1);
	}

	// press 's'
	if(keyCode == 83) {
		one.turn(-1);
	}

	//press 'd'
	if(keyCode == 68) {
		one.accelerate(1);
	}

	//press 'a'
	if(keyCode == 65) {
		one.accelerate(-1);
	}

	//press space bar
	if(keyCode == 32) {
		one.myCenterX = Math.random() * 600;
		one.myCenterY = Math.random() * 600;
	}
} 