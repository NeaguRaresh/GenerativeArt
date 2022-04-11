int rows, cols;
int scl = 20;
int w = 1200;
int h = 1200;
float[][] terrain;

//starting offset
float flying = 0;

void setup(){
  size(600, 600, P3D);
 
 //Determine the number of colons and rows
  cols = w / scl;
  rows = h / scl;
  
  //two dimanetional array that keeps the point's z position
  terrain = new float[cols][rows];
  
  //float yoff = 0;
  
  //for(int y = 0; y < rows; y++){
  //  float xoff = 0;
  //  for(int x = 0; x < rows; x++){
    
  //    terrain[x][y] = map(noise(xoff,yoff),0,1,-80,80);
  //    xoff +=0.1;
  //  }
  //  yoff += 0.1;
  //}
}


void draw(){
  
  noStroke();
  fill(255);
  
  
  
  flying -= 0.05;
  
  float yoff = flying;
  
  for(int y = 0; y < rows; y++){
    float xoff = 0;
    for(int x = 0; x < rows; x++){
    
      terrain[x][y] = map(noise(xoff,yoff),0,1,-80,80);
      xoff +=0.1;
    }
    yoff += 0.1;
  }
  
  background(0);
  
  stroke(255);
  fill(255);
  ellipse(width/2, 50, 50, 50);
  
  noFill();
  //move origin to w/2 h/2
  translate(width/2, height/2);
  
  //rotate pi/3 degrees on x axis
  rotateX(PI/3);
  
  
  translate(-w/2, -h/2);
  for(int y = 0; y < rows-1; y++){
   beginShape(TRIANGLE_STRIP);
    for(int x = 0; x < cols; x++){
      
      vertex(x*scl, y*scl, terrain[x][y]);
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
    }
    endShape();
  }
  
}
