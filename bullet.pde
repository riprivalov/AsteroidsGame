class Bullet extends Floater
{   	
	int rotatespeed;
	double dRadians;
	Bullet(Spaceship theShip)
	{
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();//holds center coordinates   
		myDirectionX=5 * Math.cos(dRadians) + theShip.getDirectionX();
		myDirectionY=5 * Math.cos(dRadians) + theShip.getDirectionY();//holds x and y coordinates of the vector for direction of travel   
 		myPointDirection = theShip.getPointDirection();
 		dRadians = 	myPointDirection*(Math.PI/180);

	}
	public void show(){
		fill(17,221,221);
		rect((int)myCenterX,(int)myCenterY,20,5,5);
	}
public void setX(int x){myCenterX=x;} 
public int getX(){return (int)myCenterX;}
public void setY(int y){myCenterY = y;}   
public int getY(){return (int)myCenterY;}   
public void setDirectionX(double x){myDirectionX=x;}
public double getDirectionX(){return myDirectionX;}   
public void setDirectionY(double y){myDirectionY=y;}   
public double getDirectionY(){return myDirectionY;}   
public void setPointDirection(int degrees){myPointDirection=degrees;}  
public double getPointDirection(){return myPointDirection;}
}