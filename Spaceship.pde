class Spaceship //extends Floater  
{   
	Spaceship()
	{
		corners 4;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 6;
		yCorners[0] = 0;
		xCorners[1] = -8;
		yCorners[1] = 8;
		xCorners[2] = -8;
		yCorners[2] = -8;
		xCorners[3] = -2;
		yCorners[3] = 0;

	}
public void setX(int x){x = myCenterX;} 
public int getX(){return (int)myCenterX;}
public void setY(int y){y=myCenterY;};   
public int getY(){return (int)myCenterY;}   
public void setDirectionX(double x){x=myDirectionX;}
public double getDirectionX(){return myDirectionX;}   
public void setDirectionY(double y){y=myDirectionY;}   
public double getDirectionY(){return myDirectionY;}   
public void setPointDirection(int degrees){degrees=myPointDirection;}  
public double getPointDirection(){return myPointDirection;}
}
