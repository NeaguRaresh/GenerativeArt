

float r;
float yoff = 0;
//float xoff = 0;
int nrParticles = 629;
Particle[] particles; 

void setup(){
  size(800,800);//,P3D);
  r = 350;
  background(0);
  
  particles = new Particle[nrParticles];
  for(int i=0; i<nrParticles; i++)
  {
   particles[i] = new Particle(0,0); 
  }
}

void radialLines(){
 
 beginShape();
  
  for(float a = 0; a < TWO_PI; a+=0.1){
   float random = r * random(-15,5);
   float x =  random * cos(a) ;
   float y  = random * sin(a)  ;
   //vertex(x, y);
   ellipse(x,y,4,4);
  }
  endShape(); 
}

void draw(){
  //rec();
  background(255);
  //ellipse(x,y,r,r);
  push();
  stroke(0);
  //strokeWeight(4);
  float xoff = 0;
  translate(width/2,height/2);
  beginShape();
  //float lastx = 0;
  //float lasty = 0;
  for(float a = 0; a < TWO_PI; a+=0.0095){
    int index = 0;
    float offset = map(noise(xoff + yoff), 0, 1, -25, 25);
    float rr = r + offset;
    float x =  rr * cos(a - offset);// - offset);
    float y  = rr * sin(a + offset); //+ offset);
       
       
    vertex(x, y);
   //particles[index].update(x,y);
   //particles[index].show();
   xoff +=0.01;
   //ellipse(x,y,4,4);
  }
  endShape();
  yoff+= 0.01;
  pop();
  //yoff += 0.01;
}
