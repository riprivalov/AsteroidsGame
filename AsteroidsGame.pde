Spaceship bob = new Spaceship();
public void setup() 
{
	size(800,800);
}
public void draw() 
{
 bob.show();  //your code here
}

public void keyPressed() {
	if (key == 'w') {
		bob.getY();
		}
	if (key == 'd') {
		bob.getX();
	}
	if (key == 's') {
		bob.getX();
	}
	if (key == 'a') {
		bob.getY();
	}
}