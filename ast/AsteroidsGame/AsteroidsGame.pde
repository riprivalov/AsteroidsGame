Spaceship bob = new Spaceship();
ArrayList <Asteroid> rocks;
ArrayList <Bullet> bullets;
Star [] shinystars;
boolean wPressed = false;
boolean dPressed = false;
boolean aPressed = false;
boolean sPressed = false;
boolean fPressed = false;
public void setup() 
{
	size(800,800);
	shinystars = new Star[100];
	for (int i=0;i<100;i++){
		shinystars[i]=new Star();
	}	
	rocks = new ArrayList <Asteroid>();
	for (int i=0;i<50;i++){
		rocks.add(new Asteroid());
	}
	bullets = new ArrayList <Bullet>();
	
}  
public void draw() 
{
background(4,6,50);
 bob.show(); 
 bob.move();
 for (int i=0; i<rocks.size(); i++){
 	rocks.get(i).move();
 	rocks.get(i).show();
 }
 for (int i=0; i<shinystars.length; i++){
 	shinystars[i].show();
 }
 if (wPressed) {bob.accelerate(.5);}
 if (dPressed) {bob.turn(5);}
 if (aPressed) {bob.turn(-5);}
 if (sPressed) {bob.accelerate(-.5);}
 for (int i=0; i<bullets.size(); i++){
 	bullets.get(i).move();
 	bullets.get(i).show(bob);
 }
 if (fPressed == true){
		bullets.add(new Bullet(bob));
	}
  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();
    if (dist(bob.getX(), bob.getY(), rocks.get(i).getX(), rocks.get(i).getY()) < 20) {
      rocks.remove(i);
      break;
    }
  }

  bob.show();
  bob.move();
  for(int i = 0; i < bullets.size(); i++) {
    for(int z = 0; z < rocks.size(); z++) {
      if(dist(bullets.get(i).getX(), bullets.get(i).getY(), rocks.get(z).getX(), rocks.get(z).getY()) < 10) {
          rocks.remove(z);
          break;
      }
    }
  }
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
	if (key == 'f'){
		fPressed = true;
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
	if (key == 'f') {
		fPressed = false;
	}
}
