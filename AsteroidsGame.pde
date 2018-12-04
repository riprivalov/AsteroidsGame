Spaceship bob = new Spaceship();
Asteroid rock = new Asteroid();
Star [] shinystars;
boolean wPressed = false;
boolean dPressed = false;
boolean aPressed = false;
boolean sPressed = false;
public void setup() 
{
	size(800,800);
	shinystars = new Star[100];
	for (int i=0;i<100;i++){
		shinystars[i]=new Star();
	}	
}
public void draw() 
{
background(4,6,50);
 bob.show(); 
 bob.move();
 rock.show();
 rock.move();
 for (int i=0; i<shinystars.length; i++){
 	shinystars[i].show();
 }
 if (wPressed) {bob.accelerate(.5);}
 if (dPressed) {bob.turn(5);}
 if (aPressed) {bob.turn(-5);}
 if (sPressed) {bob.accelerate(-.5);}
}

public void keyPressed() {
	if (key == 'w') {
		wPressed = true;
		//bob.accelerate(1);
		}
	if (key == 'd') {
		dPressed = true;
	}
	if (key == 'a') {
		aPressed = true;
	}
	if (key == 's') {
		sPressed = true;
	}
	if(key == 'z'){
		bob.setX((int)(Math.random()*801));
		bob.setY((int)(Math.random()*801));
		bob.setPointDirection(0);
		bob.setDirectionY(0);
		bob.setDirectionX(0);
	}
}

public void keyReleased() {
	if (key == 'w') {
		wPressed = false;
		//bob.accelerate(1);
		}
	if (key == 'd') {
		dPressed = false;
	}
	if (key == 'a') {
		aPressed = false;
	}
	if (key == 's') {
		sPressed = false;
	}
}