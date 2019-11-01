Particle[] stars = new Particle[1500];

void setup()
{
	size(800,800);
	background(0);

	for (int i=0; i<stars.length; i++){
		stars[i] = new Particle();
	}
	stars[0] = new OddballParticle();
}

void draw()
{
	background(0);
	for (int i=0; i<stars.length; i++){
		stars[i].move();
		stars[i].show();
	}
}

void mousePressed(){
	background(0);
	for (int i=0; i<stars.length; i++){
		stars[i] = new Particle();
	}
	stars[0] = new OddballParticle();
	redraw();
}


class Particle
{
	double x,y,xsize,ysize,angle,speed;
	int r,g,b;

	Particle(){
		x = y = 400;
		xsize = Math.random()*10;
		ysize = Math.random()*10;
		angle = Math.random()*2*Math.PI;
		r = (int)(Math.random()*155+100);
		g = (int)(Math.random()*155+100);
		b = (int)(Math.random()*155+100);
		speed = Math.random()*5;
		//System.out.println(angle);
	}

	void move(){
		x += Math.cos(angle)*speed;
		y += Math.sin(angle)*speed;
		angle += 0.05;
		//System.out.println(x + " " + y);
		if (y>850 || y< -50 || x>850 || x< -50) {
			y=400;
			x=400;
			//xsize += Math.random()*1;
			//ysize += Math.random()*1;
			//angle = Math.random()*2*Math.PI;
			speed = Math.random()*3;
		}
		if (x<400)
			x--;
		if (x>400)
			x++;
		if (y<400)
			y--;
		if (y>400)
			y++;
		
	}

	void show(){
		noStroke();
		fill(r,g,b);
		ellipse((float)x,(float)(y),(float)(xsize),(float)(ysize));
		//System.out.println(x + " " + y);
	}
}

class OddballParticle extends Particle//inherits from Particle
{	
	OddballParticle(){
		xsize=10;
		ysize=10;
		x = y = 400;
		r = 255; //(int)(Math.random()*155+100);
		g = 255; //(int)(Math.random()*155+100);
		b = 255; //(int)(Math.random()*155+100);
	}

	void move(){
		x+= Math.random()*10-5;
		y+= Math.random()*10-5;
		xsize+=0.01;
		ysize+=0.01;
		x += Math.cos(angle)*speed;
		y += Math.sin(angle)*speed;
		angle -=0.1;
	}

	void show(){
		noStroke();
		fill(r,g,b);
		ellipse((float)x,(float)(y),(float)(xsize),(float)(ysize));
	}
}


