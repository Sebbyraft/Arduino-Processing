import processing.serial.*;

Serial port; 
String value = "0"; 
String[] portList;
boolean selected = false;
color c_1 = color(255, 0, 0);
color c_2 = color(0, 0, 255);


void setup() {
  size(600, 600);

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
  }
 
  // Draw scene
  background(0);
  if (value.toCharArray()[0] == '1') {
    fill(c_2);
  } else if (value.toCharArray()[0] == '0') {
    fill(c_1);
  }
  rectMode(CENTER);
  rect(width/2, height/2, 200, 200);
}

void keyPressed() {
  if (selected == false) {
    int k = Integer.parseInt(""+key);
    println(k);
    if (k>= 0 && k<=portList.length) {
      port = new Serial(this, portList[k], 9600);
      selected = true;
    }
  }
}
