//rectangles as background
class Visual1{
  float x,y,w,h;
  color col;
  
  void display() {
    fill(col);
    rect(x,y,w,h);
  }
  
  void randomize(float p1) {
    this.x = random(0,width);
    this.y = random(0,height);
    this.y = 0;
    this.w = p1 % 60;
    this.h = height;
    this.col = color(random(0,255),255,p1,50); //randomized
  }
  
  void clear(){ 
    this.w=0;
  }
}
