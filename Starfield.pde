Particle[] stars = new Particle();
OddballParticle[] ball = new OddballParticle();

void setup()
{
	size(800,800);
	background(0);

	for (int i=0; i<ball.length; i++){

	}

	for (int i=0; i<stars.length; i++){
		
	}


}

void draw()
{
	background(0);

	for (int i=0; i<ball.length; i++){

	}
	
	for (int i=0; i<stars.length; i++){
		
	}
}

class Particle
{
	double x,y,size,angle,speed;

	Particle(){
		x = Math.random()*800;
		y = Math.random()*800;
		size = Math.random()*10;
		angle = Math.random()*(TWO_PI);
	}

	void move(){

	}

	void show(){
		fill(255);
		ellipse(x,y,size,size);
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}


