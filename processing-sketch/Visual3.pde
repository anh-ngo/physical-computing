//an appearing flower spiral
class Visual3{
  float x,y;
  
  Visual3(float x, float y){
    this.x=x;
    this.y=y;
  }
  
  void display(){
    //strokeWeight(1);
    fill(255,random(30,200),p3); //magenta

    int numArms = 6;
    float numPoints = p3; //1000
    float angleIncrement = TWO_PI / numPoints;
    float radius = 100;

    for (int i = 0; i < numPoints; i++) {
      float angle = angleIncrement * i;
      float x = radius * cos(angle) + radius * cos(numArms * angle);
      float y = radius * sin(angle) + radius * sin(numArms * angle);
      rect(x+this.x, y+this.y, 8, 8);
    }
  }
}
