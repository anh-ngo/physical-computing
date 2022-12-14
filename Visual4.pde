//A rotating rectangle flower
class Visual4{
  int a;
  float x,y;
  
  Visual4(float x, float y){ //constructor
    this.x=x;
    this.y=y;
  }
  
  void display(){
  for(int a=0;a<p4;a+=30){
    pushMatrix();
    translate(width/2,height/2);
    rotate(radians(a));
    fill(p4,255,random(100,255)); //yellow-green
    rect(0,0,200,200);
    popMatrix();
    }
  }
}
