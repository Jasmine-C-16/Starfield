Particle[] stars = new Particle[800];

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

class Particle
{
	double x,y,xsize,ysize,angle,speed;
	int r,g,b;

	Particle(){
		x = y = 400;
		//y = Math.random()*800;
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
		//System.out.println(x + " " + y);
		if (y>800 || y< -800 || x>800 || x< -800) {
			y=400;
			x=400;
			//xsize += Math.random()*1;
			//ysize += Math.random()*1;
			angle = Math.random()*2*Math.PI;
			speed = Math.random()*2;
		}

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
		xsize=5;
		ysize=5;
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
	}

	void show(){
		noStroke();
		fill(r,g,b);
		ellipse((float)x,(float)(y),(float)(xsize),(float)(ysize));
	}
}


