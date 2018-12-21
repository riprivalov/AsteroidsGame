
class Star 
{
	private int myX, myY;
	Star(){
		myX= (int)(Math.random()*800);
		myY= (int)(Math.random()*800);
	}
	public void show(){
		noStroke();
		fill(255,255,255);
		ellipse(myX, myY, 5, 5);
	}
}
