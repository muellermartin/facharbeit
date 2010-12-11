/*
  Test

  Prints out "Hello, world!" on serial port
  Enables LED if it receives H (for HIGH) on serial
  Disabled LED if it receives L (for LOW) on serial
 
  The circuit:
  * Arduino Duemilanove (Has a built-in LED on PIN 13)
  
  Created 2010-08-24
  By Martin Müller
*/

const int ledPin = 2;
char buffer[5]; // Size of string + 1 for closing char

void setup() {
  Serial.begin(9600);
  Serial.println("Serial ready.");

  pinMode(ledPin, OUTPUT);
}

void loop() {
  if(Serial.available() >= 4) { // Check if buffer from serial connection contains required chars
    for(int i = 0; i < 4; i++) {
      buffer[i] = Serial.read();
    }
    
    buffer[5] = '\0'; // Null character needed for marking the end of the string
    
    if(strcmp(buffer, "HIGH") == 0) { // Check if input matches a command
      Serial.println("LED on");
      digitalWrite(ledPin, HIGH);
    }
    
    else if(strcmp(buffer, "LOWW") == 0) { // Check if input matches a command
      Serial.println("LED off");
      digitalWrite(ledPin, LOW);
    }
    
    else {
      Serial.print("Command not found: ");
      Serial.println(buffer);
    }
  }
}

