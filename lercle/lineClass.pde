class Line{
  
  float[] point1 = new float[5]; // posX, posY, thetaSpeed, radiusX, radiusY
  float[] point2 = new float[5]; // posX, posY, thetaSpeed, radiusX, radiusY
  
  float[] prevLine = new float[4];
  
  float theta1;
  float theta2;
  
  
  void setPoints(float height, float width){
     point1[0] = random(width);
     point1[1] = random(height);
     point1[2] = 0.028;
     point1[3] = 200;
     point1[4] = 200;
     
     point2[0] = random(100, width-100) - 300;
     point2[1] = random(100, height-100) - 300;
     point2[2] = 0.072;
     point2[3] = 400;
     point2[4] = 300;
  }
  
  float[] calculateNewPosition(){
    
    float[] positions = new float[4]; // 
    positions[0] = point1[3] * cos(theta1) ;
    positions[1] = point1[4] * sin(theta1) ;
    
    positions[2] = point2[3] * cos(theta2) ;
    positions[3] = point2[3] * sin(theta2) ;
    
    theta1 += point1[2];
    theta2 += point2[2];
    
    return positions;
  }
  
  void updatePosition(){
     
    prevLine[0] = point1[0];
    prevLine[1] = point1[1];
    
    prevLine[2] = point2[0];
    prevLine[3] = point2[1];
  }
  
}
