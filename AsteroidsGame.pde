Spaceship one = new Spaceship();
Star[] dots = new Star[300];
ArrayList <Asteroid> b = new ArrayList <Asteroid>();
int length = 25;
//ArrayList <Bullet> a = new ArrayList <Bullet>();

public void setup() 
{
	size(600, 600);
	frameRate(100);
	for(int i = 0; i < dots.length; i = i + 1) {
		dots[i] = new Star();
	}
	for(int i = 0; i < length; i = i + 1) { 
		b.add(new Asteroid());
	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < dots.length; i = i + 1) {
		dots[i].show();
	}
	for(int i = 0; i < length; i = i + 1) { 
		stroke(205);
		fill(100, 100, 100, 50);
		b.get(i).move();
		b.get(i).show();
	}
	noStroke();
	fill(250, 150, 250);
	one.move();
	one.show();
	for(int i = 0; i < length; i = i + 1) { 
		if(dist((float)one.getCenterX(), (float)one.getCenterY(), (float)b.get(i).getCenterX(), (float)b.get(i).getCenterY()) < 20) {
			b.remove(i);
			i = i - 1;
			length = length - 1;
		}
	}
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
	//press 't'
	if(keyCode == 84) {
		one.setCenterX((int)(Math.random() * 600));
		one.setCenterY((int)(Math.random() * 600));
		one.setDirectionX(0);
		one.setDirectionY(0);
		one.setPointDirection((int)(Math.random() * 360));
	}
	//press space bar
	if(keyCode == 32) {
		ArrayList <Asteroid> b = new ArrayList <Asteroid>();
		for(int i = 0; i < length; i = i + 1) { 
			b.add(new Asteroid());
		}
	}
}
