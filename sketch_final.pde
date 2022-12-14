import processing.serial.*;

Serial myPort;  // Create object from Serial class
String str;     // Data received from the serial port
float press1, press2, press3, press4, press5;
float p1, p2, p3, p4, p5;
float i;

Visual1 viz1[] = new Visual1[40];
Visual2 viz2[] = new Visual2[10];
Visual3 viz3;
Visual4 viz4;
Visual5 viz5;

long lastPressTime = 0;  // Variable to track the time of the last press

void setup() {
  size(800,650);
  noCursor();
  printArray(Serial.list());
  String portName = Serial.list()[5];
  myPort = new Serial(this, portName, 9600);
  
  for (int i = 0;i < viz1.length;i++) {
    viz1[i] = new Visual1();
  }
  
  for(int i=0;i<viz2.length;i++){
    viz2[i]=new Visual2(random(width),random(height));
  }
  
  viz3 = new Visual3(250,height/2);
  viz4 = new Visual4(width/2,height/2);
  viz5 = new Visual5(500,height/2);
}
  
void draw() {
  if (myPort.available() > 0) { 
    str = myPort.readStringUntil('\n');
    if (str != null) {
      String[] splitData = split(str, ",");
      press1 = float(splitData[0]);
      press2 = float(splitData[1]);
      press3 = float(splitData[2]);
      press4 = float(splitData[3]);
      press5 = float(splitData[4]);
      
      p1 = map(press1,10,600,0,400);
      p2 = map(press2,10,600,0,400);
      p3 = map(press3,10,600,0,400);
      p4 = map(press4,30,700,0,400);
      p5 = map(press5,45,500,0,400);
      
      p1 = constrain(p1,0,400);
      p2 = constrain(p2,0,400);
      p3 = constrain(p3,0,400);
      p4 = constrain(p4,0,400);
      p5 = constrain(p5,0,400);
      
    }
  }
  background(255);
  noStroke();
  
  //1--Rectangle background
  for (Visual1 c : viz1) {
    c.display();
  }
  if (p1 > 0) {
    for (Visual1 c : viz1) {
      c.randomize(p1);
      lastPressTime = millis();  // Update the time of the last press
    }
  }
  
  //2--Circle background
  for (Visual2 c : viz2){
    c.display();
  }
  if(p2>0){
    for(Visual2 c : viz2){
      c.randomize(p2);
      lastPressTime = millis();  // Update the time of the last press
    }
  }
  
  //3--Spiral foreground
  //stroke(0);
  //noFill();
  if(p3>0){
    viz3.display();
    lastPressTime = millis();  // Update the time of the last press
  }
  
  //4--Rectangle foreground
  //noFill();
  noStroke();
  if(p4>0){
    viz4.display();
    lastPressTime = millis();  // Update the time of the last press
  }
  
  //5--Flower foreground
  if(p5>0){
    viz5.display();
    lastPressTime = millis();  // Update the time of the last press
  }
  
  // Check if 10 seconds have passed since the last press
  if (millis() - lastPressTime > 10000) {
    // Clear the screen and reset the time of the last press
    background(255);
    for (Visual1 c : viz1) {
      c.clear();
    }
    for (Visual2 c : viz2){
      c.clear();
    }
    
}
}
