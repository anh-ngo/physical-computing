//An expanding flower
class Visual5{
  int r,a;
  int x,y;
  
  Visual5(int x, int y){ //constructor
    this.x=x;
    this.y=y;
  }
  
  void display(){
  fill(random(50,200),random(100,255),p5); //blue-green
  for(int r=0;r<p5;r+=20){
    for(int a=0;a<360;a+=20){
      pushMatrix();
      translate(this.x,this.y);
      rotate(radians(a));
      ellipse(r,0,15,15);
      popMatrix();
      }
    }
  }
}
