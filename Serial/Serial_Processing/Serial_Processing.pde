import processing.serial.*;

Serial port; 
String value; 
String[] portList;
boolean selected = false;


void setup() {
  portList = Serial.list();
  for (int i=0; i<portList.length; i++) {
    println("Port["+i+"]: " + portList[i]);
  }
  print("Select port by pressing the corrispettive number: ...");
}


void draw() {
  if (selected == true) {
    if (port.available() > 0) {
      value = port.readStringUntil('\n');
    }
    println(value);
  }
}

void keyPressed() {
  int k = Integer.parseInt(""+key);
  println(k);
  if (selected == false) {

    if (k>= 0 && k<=portList.length) {
      port = new Serial(this, portList[k], 9600);
      selected = true;
    }
  }
}
