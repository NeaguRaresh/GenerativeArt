class Particle {

  float x;
  float y;
  int trailLength = 100;
  PVector[] history = new PVector[trailLength];
  int index = 0;
  
  Particle(){
    
    return;
  }
  Particle(float xx, float yy){
    
    this.x = xx;
    this.y = yy;
  }
  
  void update(float x, float y){
    this.x = x;
    this.y = y;
    
    
    
    if(index == trailLength-1)
    {
      for(int i = 1;i < index-2; i++)
      {
         history[i] = history[i+1];
      }
      
     history[index] = new PVector(this.x, this.y); 
      
    }
    else
    {
     history[index] = new PVector(this.x, this.y); 
     index++;
    }
     
     
    
  }
  
  void show(){
    noStroke();
    fill(0);
    ellipse(this.x,this.y, 6, 6);
    
    for(int i=0;i<index;i++)
    {
      ellipse(history[i].x, history[i].y, 4,4);
    }
    
  }
}
