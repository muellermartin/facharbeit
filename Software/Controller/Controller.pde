/*
  Software for controlling a self-made remote head.
  
  SHARP GP1A038RCKL

  Arduino Duemilanove:

  ANALOG IN
  0
  1
  2
  3
  4
  5

  DIGITAL I/O
  0 RX
  1 TX
  2
  3
  4
  5 PWM
  6 PWM
  7
  8
  9 PWM
  10 PWM
  11 PWM
  12
  13
  
  Created 2010-08-24
  By Martin Müller
*/

#define INPUT1 7
#define INPUT2 8
#define VSS 9
#define ENABLEB 10
#define ENABLEA 11
#define INPUT4 12
#define INPUT3 13

char buffer[5]; // Size of string + 1 for trailing char

void setup() {
  Serial.begin(9600);
  Serial.println("Serial ready.");

  pinMode(INPUT1, OUTPUT);
  pinMode(INPUT2, OUTPUT);
  pinMode(INPUT3, OUTPUT);
  pinMode(INPUT4, OUTPUT);
  pinMode(ENABLEA, OUTPUT);
  pinMode(ENABLEB, OUTPUT);
  pinMode(VSS, OUTPUT);
}

void loop() {
/*  if(Serial.available() >= 4) { // Check if buffer from serial connection contains required chars
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
*/

  digitalWrite(INPUT1, HIGH);
  digitalWrite(INPUT2, LOW);
  digitalWrite(VSS, HIGH);
  analogWrite(ENABLEA, 100);
}

