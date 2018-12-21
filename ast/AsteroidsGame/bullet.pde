class Bullet extends Floater
{   	
	int rotatespeed;
	Bullet(Spaceship theShip)
	{
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();//holds center coordinates   
		myPointDirection = theShip.getPointDirection();
 		
 		double dRadians = 	myPointDirection*(Math.PI/180);
 		myDirectionX=5*Math.cos(dRadians) + theShip.getDirectionX();
		myDirectionY=5*Math.sin(dRadians) + theShip.getDirectionY();//holds x and y coordinates of the vector for direction of travel   
 		
	}
	public void show(Spaceship theShip){
		fill(17,221,221);
		ellipse((int)myCenterX,(int)myCenterY,15,15);
		/*
		fill(17,221,221);     
	    
	    //translate the (x,y) center of the ship to the correct position
	    translate((float)theShip.getX(), (float)theShip.getY());

	    //convert degrees to radians for rotate()     
	    float dRadians = (float)(myPointDirection*(Math.PI/180));
	    
	    //rotate so that the polygon will be drawn in the correct direction
	    rotate(dRadians);
	    
	    //draw the polygon
	    beginShape();
	    rect((int)myCenterX,(int)myCenterY,20,5,5);
	    endShape(CLOSE);

		
		rotate(-1*dRadians);
    	translate(-1*(float)myCenterX, -1*(float)myCenterY);
    	*/
		
	}
	public void move ()   //move the floater in the current direction of travel
	  {      
	    //change the x and y coordinates by myDirectionX and myDirectionY       
	    myCenterX += myDirectionX;    
	    myCenterY += myDirectionY;     

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
