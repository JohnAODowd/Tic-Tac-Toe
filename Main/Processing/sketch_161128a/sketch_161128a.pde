import processing.serial.*;

Serial myPort;
String val;
final static int COM_PORT = 0;
void setup(){
  // Serial.list()[0] opens COM1 on windows;
  // Change COM_PORT to the one that arduino
  // is connected to.
  size(200,200);
  background(255);
  ellipse(20,20,0,0);
  String portName = Serial.list()[COM_PORT];
  myPort = new Serial(this,portName,9600);
}
void draw(){
  if(myPort.available() > 0){
    val = myPort.readStringUntil('\n');
    println(val);
  }
}