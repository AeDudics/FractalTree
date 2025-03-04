private double fractionLength = .8; 
private int smallestBranch = 1; 
private double branchAngle = .8;  
public void setup() 
{   
	size(640,480); 
	noLoop();
	frameRate(60);
} 
public void draw() 
{   
	background(0);   
	stroke(199, 245, 198);   
	line(320,480,320,380);   
	drawBranches(320,380,200,3*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	private double angle1, angle2;
	private int endX1, endY1, endX2, endY2;
	angle1 = angle + branchAngle;
	angle2 = angle - branchAngle;
	branchLength *= fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	if(branchLength > smallestBranch){
		  drawBranches(endX1,endY1,branchLength-fractionLength,angle1);
		  drawBranches(endX2,endY2,branchLength-fractionLength,angle2);
	}
} 
