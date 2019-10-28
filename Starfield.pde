Particle[] stars = new Particle[800];

void setup()
{
	size(800,800);
	background(0);

	for (int i=0; i<stars.length; i++){
		stars[i] = new Particle();
	}


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
	double x,y,size,angle,speed;
	int r,g,b;

	Particle(){
		x = y = 400;
		//y = Math.random()*800;
		size = Math.random()*10;
		angle = Math.random()*3*Math.PI;
		r = (int)(Math.random()*255);
		g = (int)(Math.random()*255);
		b = (int)(Math.random()*255);
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
		}

			

	}

	void show(){
		noStroke();
		fill(r,g,b);
		ellipse((float)x,(float)(y),(float)(size),(float)(size));
		//System.out.println(x + " " + y);
	}
}

class OddballParticle extends Particle//inherits from Particle
{
	//your code here
}


