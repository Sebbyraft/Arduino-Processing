#define BUTTON_PIN_1 6
#define BUTTON_PIN_2 7

void setup() {
  // Initialize serial communication (9600 baud rate)
  Serial.begin(9600);
  // Set the BUTTON_PIN_1 to input
  pinMode(BUTTON_PIN_1, INPUT);
  // Set the BUTTON_PIN_2 to input
  pinMode(BUTTON_PIN_2, INPUT);
}

void loop() {
  if(digitalRead(BUTTON_PIN_1) == 1){
    Serial.println('0');
  }

  if(digitalRead(BUTTON_PIN_2) == 1){
    Serial.println('1');
  }
  // Wait 100 milliseconds
  delay(100);
}
