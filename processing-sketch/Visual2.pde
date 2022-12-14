//circles as background
class Visual2{
  float x,y,r;
  color col;
  
  Visual2(float x, float y){
    this.x=x;
    this.y=y;
    this.r=0;
  }
  
  void display(){
    fill(col);
    circle(x,y,r);
  }
  
  void randomize(float p2){
    this.x=random(0,width);
    this.y=random(0,height);
    this.col=color(255,p2,random(100,255),90); //randomized
    this.r=p2;
  }
  
  void clear(){
    this.r=0;
  }
}
