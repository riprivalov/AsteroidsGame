class Asteroid extends Floater
{   	
	int rotatespeed;
	Asteroid()
	{
		myColor = 255;
		corners = 5;
		xCorners = new int[corners];
		yCorners = new int[corners];
		myColor = 255;   
		myCenterX = 400;
		myCenterY =400; //holds center coordinates   
		myDirectionX=0;
		myDirectionY=0; //holds x and y coordinates of the vector for direction of travel   
 		myPointDirection = 0;
		xCorners[0] = -15;
		yCorners[0] = 3;
		xCorners[1] = 0;
		yCorners[1] = 15;
		xCorners[2] = 15;
		yCorners[2] = 3;
		xCorners[3] = 12;
		yCorners[3] = -12;
		xCorners[4] = -12;
		yCorners[4] = -12;
		rotatespeed = ((int)(Math.random()*6)+1);

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
public void move() {
	turn(rotatespeed);
	super.move();
	}	
}