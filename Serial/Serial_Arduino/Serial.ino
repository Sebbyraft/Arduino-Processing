void setup() {
  // Initialize serial communication (9600 baud rate)
  Serial.begin(9600);
}

void loop() {
  // Send "Hello" over the serial port
  Serial.println("Hello");
  // Wait 100 milliseconds
  delay(100);
}
