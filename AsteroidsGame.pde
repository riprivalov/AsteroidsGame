Spaceship bob = new Spaceship();
public void setup() 
{
	size(800,800);
}
public void draw() 
{
background(4,6,50);
 bob.show(); 
 bob.move();
}

public void keyPressed() {
	if (key == 'w') {
		bob.accelerate(1);
		}
	if (key == 'd') {
		bob.turn(5);
	}
	if (key == 'a') {
		bob.turn(-5);
	}
	if (key == 's') {
		bob.accelerate(-1);
	}
	if(key == '1'){
		bob.setX((int)(Math.random()*801));
		bob.setY((int)(Math.random()*801));
	}
}