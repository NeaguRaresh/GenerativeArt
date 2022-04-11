float posX, posY;
float radiusX, radiusY;
float theta1, theta2;

float[] point1 = new float[5]; // posX, posY, thetaSpeed, radiusX, radiusY
float[] point2 = new float[5]; // posX, posY, thetaSpeed, radiusX, radiusY

float red = random(0,255);
float green = random(0,255);
float blue = random(0,255);

//int col = int(random(0,255));

Line line = new Line();

void setup(){
   size(800,800);
   
   line.setPoints(height, width);
   //frameRate(20);
  
 
   
    background(0);
    
}

void draw(){
 
   //background(0);
  
   if(red > 255){
     red = 0;
   }
   if(blue > 255){
     blue = 0;
   }
   if(green > 255){
     green = 0;
   }
   
    red += 0.01;
    green += 0.02;
    blue += 0.03;
  
  
    //if(col > 255){
    //  col = 0;
    //}
    
    //col +=1;
  
    translate(width/2, height/2);
  
    
    float[] positions = line.calculateNewPosition();
    stroke(145, 12, 232);
    strokeWeight(1);
    line(positions[0], positions[1], positions[2], positions[3]);
        
    
    
    //fill(255);
    
}

/** 
 * Brownian Motion (v2.32)
 * by  Ammon.Owed (2013/Aug)
 * mod GoToLoop
 * 
 * forum.Processing.org/one/topic/controlling-the-length-of-line-
 * from-x-y-to-a-point-which-is-randomly-chosen
 *
 * forum.Processing.org/two/discussion/2829/fifo-queue-problem-with-code
 */

//import java.util.Queue;
//import java.util.ArrayDeque;

//static final int DIM = 100, MAX = 03000, DETAIL = 1000, DEPTH = 2000;
//static final int HUE = 1<<10, FPS = 60, TOLERANCE = 40, ALIASING = 2;

//static final float BOLD = 1.5, AMP = 10.0;
//static final boolean HAS_MAX_LIMIT = true;

//final Queue<PVector> points = new ArrayDeque(MAX);
//final PVector cam = new PVector(), lp = new PVector();

//float canvasRatio, zNear, zFar;

//void setup() {
//  size(1000, 700, P3D);
//  colorMode(HSB, HUE, 1, 1);

//  frameRate(FPS);
//  smooth(ALIASING);

//  strokeWeight(BOLD);
//  noFill();

//  canvasRatio = (float) width/height;

//  final float camZ = .5*height / tan(PI*FPS/360.0);
//  zNear = camZ/AMP;
//  zFar  = camZ*AMP;

//  frameRate = TOLERANCE<<1;
//}

//void draw() {
//  // local-cached & short-named variables:
//  int fc = frameCount;
//  final int fr = round(frameRate);

//  // recycled or new vector point:
//  final PVector np = 
//    HAS_MAX_LIMIT & fc > MAX | !HAS_MAX_LIMIT & fr < TOLERANCE
//    ? points.remove() : new PVector();

//  // interpolated rotating camera aimed at latest added point (tail):
//  cam.mult(.99);
//  cam.add(PVector.mult(lp, .01, np));

//  camera(cam.x + sin(fc*.01)*DETAIL, cam.y + cos(10.0 + fc*8e-3)*DETAIL, 
//  cam.z - DEPTH, cam.x, cam.y, cam.z, 0, 1, 0);

//  //perspective();
//  perspective(THIRD_PI, canvasRatio, zNear, zFar);

//  // draw colored curved lines:
//  clear();

//  beginShape();

//  for (final PVector p : points) {
//    stroke(fc++ & HUE-1, 1, 1);
//    curveVertex(p.x, p.y, p.z);
//  }

//  endShape();

//  // generate a new point at specified range:
//  PVector.random3D(np, this).mult(DIM); // pick a new random direction.
//  np.add(lp);                           // add that up from latest point.
//  lp.set(np);                           // this is now the latest point too.

//  points.add(np);                       // add new point to queue's tail.

//  frame.setTitle("Brownian Motion   FPS: " + fr +
//    "   Size: " + points.size());
//}
