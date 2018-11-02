class Spaceship extends Floater
{   
	Spaceship()
	{
		corners = 4;
		xCorners = new int[corners];
		yCorners = new int[corners];
		myColor = 0;   
		myCenterX = 400;
		myCenterY =400; //holds center coordinates   
		myDirectionX=0;
		myDirectionY=0; //holds x and y coordinates of the vector for direction of travel   
 		myPointDirection = 0;
		xCorners[0] = 6;
		yCorners[0] = 0;
		xCorners[1] = -8;
		yCorners[1] = 8;
		xCorners[2] = -8;
		yCorners[2] = -8;
		xCorners[3] = -2;
		yCorners[3] = 0;

	}
public void setX(int x){myCenterX=x;} 
public int getX(){return (int)myCenterX;}
public void setY(int y){myCenterY = y;};   
public int getY(){return (int)myCenterY;}   
public void setDirectionX(double x){myDirectionX=x;}
public double getDirectionX(){return myDirectionX;}   
public void setDirectionY(double y){myDirectionY=y;}   
public double getDirectionY(){return myDirectionY;}   
public void setPointDirection(int degrees){myPointDirection=degrees;}  
public double getPointDirection(){return myPointDirection;}
}
