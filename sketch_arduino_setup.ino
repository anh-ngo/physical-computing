int press1, press2, press3, press4, press5;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(A0,INPUT);
  pinMode(A1,INPUT);
  pinMode(A2,INPUT);
  pinMode(A3,INPUT);
  pinMode(A4,INPUT);
}

void loop() {
  press1 = analogRead(A0);
  press2 = analogRead(A1);
  press3 = analogRead(A2);
  press4 = analogRead(A3);
  press5 = analogRead(A4);
  Serial.print(press1);
  Serial.print(",");
  Serial.print(press2);
  Serial.print(",");
  Serial.print(press3);
  Serial.print(",");
  Serial.print(press4);
  Serial.print(",");
  Serial.println(press5);
  delay(100);
}
