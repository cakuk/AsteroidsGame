Spaceship one = new Spaceship();
Star[] dots = new Star[300];
ArrayList <Asteroid> b = new ArrayList <Asteroid>();
ArrayList <Bullet> c = new ArrayList <Bullet>();
int length = 30;

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

		//fix dist & bullet angles



		if(dist((float)one.getCenterX(), (float)one.getCenterY(), (float)b.get(i).getCenterX(), (float)b.get(i).getCenterY()) < 20) {
			b.remove(i);
			i = i - 1;
			length = length - 1;
		}
	}
	for(int i = 0; i < c.size(); i = i + 1) {
		c.get(i).show();
		c.get(i).move();
		System.out.println(c.size());
		if(dist((float)c.get(i).getCenterX(), (float)c.get(i).getCenterY(), (float)b.get(i).getCenterX(), (float)b.get(i).getCenterY()) < 20) {
			c.remove(i);
			i = i - 1; // also remove the asteroid
		}
	}
}
public void keyPressed() {
	// press 'w'
	if(keyCode == 87) {
		one.turn(5);
	}
	// press 's'
	if(keyCode == 83) {
		one.turn(-5);
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
	if(keyCode == 32) {
		c.add(new Bullet(one));
	}
}
