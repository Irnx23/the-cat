#include <Servo.h>

Servo myservo; 
const int stepPin = 5; 
const int dirPin = 2; 
const int enPin = 4;
const int stepPin2 = 9; 
const int dirPin2 = 3; 
const int enPin2 = 7;

const int forward = 12;
const int backward = 11;

int nuevo= 0;

int tempo = 400;
int scale =300;

int ST1_X = 2400;
int ST1_Y =200;

int ST2_X = 3200;
int ST2_Y =400;

int ST3_X = 4300;
int ST3_Y =200;

int ST4_X = 2400;
int ST4_Y =1100;

int ST5_X = 3200;
int ST5_Y = 1100;

int ST6_X = 4300;
int ST6_Y = 1100;

int ST7_X = 2400;
int ST7_Y = 2200;

int ST8_X = 3200;
int ST8_Y = 2200;

int ST9_X = 4300;
int ST9_Y = 2200;

int dirY = LOW;
int dir_Y =HIGH;
int dirX =HIGH;
int dir_X = LOW;

int servo_ext = 20;
int servo_ret =45;
int somevalue = 0;

void setup() {
 myservo.attach(10);  
pinMode(forward,OUTPUT); 
pinMode(backward,OUTPUT); 

  pinMode(stepPin,OUTPUT); 
  pinMode(dirPin,OUTPUT);

  pinMode(stepPin2,OUTPUT); 
  pinMode(dirPin2,OUTPUT);

  pinMode(enPin,OUTPUT);
  digitalWrite(enPin,LOW);
   
  pinMode(enPin2,OUTPUT);
  digitalWrite(enPin2,LOW);
  digitalWrite(backward,HIGH);
  delay(3000);
  digitalWrite(backward,LOW);
  myservo.write(servo_ret);
}

void loop() {
  delay(9000);
  for (int somevalue=0; somevalue<10 ;somevalue++)
  switch(somevalue){
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
    case 1 :
    digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ext);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);
     
    for (int ciclo=0; ciclo<= (ST1_X) ;ciclo++)
  {
  digitalWrite(dirPin,dirX);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
//   for (int ciclo=0; ciclo<= (ST1_Y) ;ciclo++)
//  {
//  digitalWrite(dirPin2,dirY);                
//    digitalWrite(stepPin2,HIGH); 
//    delayMicroseconds(tempo);        
//    digitalWrite(stepPin2,LOW); 
//    delayMicroseconds(tempo); 
//  }
//  
   digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ret);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);

   for (int ciclo=0; ciclo<= (ST1_X) ;ciclo++)
  {
  digitalWrite(dirPin,dir_X);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
//   for (int ciclo=0; ciclo<= (ST1_Y) ;ciclo++)
//  {
//  digitalWrite(dirPin2,dir_Y);                
//    digitalWrite(stepPin2,HIGH); 
//    delayMicroseconds(tempo);        
//    digitalWrite(stepPin2,LOW); 
//    delayMicroseconds(tempo); 
//  }
//  
  break;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
    case 2 :
    digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ext);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);
     
    for (int ciclo=0; ciclo<= (ST2_X) ;ciclo++)
  {
  digitalWrite(dirPin,dirX);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
//   for (int ciclo=0; ciclo<= (ST2_Y) ;ciclo++)
//  {
//  digitalWrite(dirPin2,dirY);                
//    digitalWrite(stepPin2,HIGH); 
//    delayMicroseconds(tempo);        
//    digitalWrite(stepPin2,LOW); 
//    delayMicroseconds(tempo); 
//  }
  
   digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ret);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);

   for (int ciclo=0; ciclo<= (ST2_X) ;ciclo++)
  {
  digitalWrite(dirPin,dir_X);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
//   for (int ciclo=0; ciclo<= (ST2_Y) ;ciclo++)
//  {
//  digitalWrite(dirPin2,dir_Y);                
//    digitalWrite(stepPin2,HIGH); 
//    delayMicroseconds(tempo);        
//    digitalWrite(stepPin2,LOW); 
//    delayMicroseconds(tempo); 
//  }
  
  break;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
    case 3 :
    digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ext);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);
     
    for (int ciclo=0; ciclo<= (ST3_X) ;ciclo++)
  {
  digitalWrite(dirPin,dirX);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
//   for (int ciclo=0; ciclo<= (ST3_Y) ;ciclo++)
//  {
//  digitalWrite(dirPin2,dirY);                
//    digitalWrite(stepPin2,HIGH); 
//    delayMicroseconds(tempo);        
//    digitalWrite(stepPin2,LOW); 
//    delayMicroseconds(tempo); 
//  }
  
   digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ret);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);

   for (int ciclo=0; ciclo<= (ST3_X) ;ciclo++)
  {
  digitalWrite(dirPin,dir_X);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
//   for (int ciclo=0; ciclo<= (ST3_Y) ;ciclo++)
//  {
//  digitalWrite(dirPin2,dir_Y);                
//    digitalWrite(stepPin2,HIGH); 
//    delayMicroseconds(tempo);        
//    digitalWrite(stepPin2,LOW); 
//    delayMicroseconds(tempo); 
//  }
  
  break;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
    case 4 :
    digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ext);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);
     
    for (int ciclo=0; ciclo<= (ST4_X) ;ciclo++)
  {
  digitalWrite(dirPin,dirX);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
   for (int ciclo=0; ciclo<= (ST4_Y) ;ciclo++)
  {
  digitalWrite(dirPin2,dirY);                
    digitalWrite(stepPin2,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin2,LOW); 
    delayMicroseconds(tempo); 
  }
  
   digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ret);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);

   for (int ciclo=0; ciclo<= (ST4_X) ;ciclo++)
  {
  digitalWrite(dirPin,dir_X);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
   for (int ciclo=0; ciclo<= (ST4_Y) ;ciclo++)
  {
  digitalWrite(dirPin2,dir_Y);                
    digitalWrite(stepPin2,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin2,LOW); 
    delayMicroseconds(tempo); 
  }
  
  break;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
    case 5 :
    digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ext);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);
     
    for (int ciclo=0; ciclo<= (ST5_X) ;ciclo++)
  {
  digitalWrite(dirPin,dirX);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
   for (int ciclo=0; ciclo<= (ST5_Y) ;ciclo++)
  {
  digitalWrite(dirPin2,dirY);                
    digitalWrite(stepPin2,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin2,LOW); 
    delayMicroseconds(tempo); 
  }
  
   digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ret);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);

   for (int ciclo=0; ciclo<= (ST5_X) ;ciclo++)
  {
  digitalWrite(dirPin,dir_X);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
   for (int ciclo=0; ciclo<= (ST5_Y) ;ciclo++)
  {
  digitalWrite(dirPin2,dir_Y);                
    digitalWrite(stepPin2,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin2,LOW); 
    delayMicroseconds(tempo); 
  }
  
  break;
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
    case 6 :
    digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ext);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);
     
    for (int ciclo=0; ciclo<= (ST6_X) ;ciclo++)
  {
  digitalWrite(dirPin,dirX);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
   for (int ciclo=0; ciclo<= (ST6_Y) ;ciclo++)
  {
  digitalWrite(dirPin2,dirY);                
    digitalWrite(stepPin2,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin2,LOW); 
    delayMicroseconds(tempo); 
  }
  
   digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ret);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);

   for (int ciclo=0; ciclo<= (ST6_X) ;ciclo++)
  {
  digitalWrite(dirPin,dir_X);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
   for (int ciclo=0; ciclo<= (ST6_Y) ;ciclo++)
  {
  digitalWrite(dirPin2,dir_Y);                
    digitalWrite(stepPin2,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin2,LOW); 
    delayMicroseconds(tempo); 
  }
  
  break;

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
    case 7 :
    digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ext);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);
     
    for (int ciclo=0; ciclo<= (ST7_X) ;ciclo++)
  {
  digitalWrite(dirPin,dirX);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
   for (int ciclo=0; ciclo<= (ST7_Y) ;ciclo++)
  {
  digitalWrite(dirPin2,dirY);                
    digitalWrite(stepPin2,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin2,LOW); 
    delayMicroseconds(tempo); 
  }
  
   digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ret);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);

   for (int ciclo=0; ciclo<= (ST7_X) ;ciclo++)
  {
  digitalWrite(dirPin,dir_X);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
   for (int ciclo=0; ciclo<= (ST7_Y) ;ciclo++)
  {
  digitalWrite(dirPin2,dir_Y);                
    digitalWrite(stepPin2,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin2,LOW); 
    delayMicroseconds(tempo); 
  }
  
  break;

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
    case 8 :
    digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ext);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);
     
    for (int ciclo=0; ciclo<= (ST8_X) ;ciclo++)
  {
  digitalWrite(dirPin,dirX);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
   for (int ciclo=0; ciclo<= (ST8_Y) ;ciclo++)
  {
  digitalWrite(dirPin2,dirY);                
    digitalWrite(stepPin2,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin2,LOW); 
    delayMicroseconds(tempo); 
  }
  
   digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ret);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);

   for (int ciclo=0; ciclo<= (ST8_X) ;ciclo++)
  {
  digitalWrite(dirPin,dir_X);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
   for (int ciclo=0; ciclo<= (ST8_Y) ;ciclo++)
  {
  digitalWrite(dirPin2,dir_Y);                
    digitalWrite(stepPin2,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin2,LOW); 
    delayMicroseconds(tempo); 
  }
  
  break;

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
    case 9 :
    digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ext);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);
     
    for (int ciclo=0; ciclo<= (ST9_X) ;ciclo++)
  {
  digitalWrite(dirPin,dirX);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
   for (int ciclo=0; ciclo<= (ST9_Y) ;ciclo++)
  {
  digitalWrite(dirPin2,dirY);                
    digitalWrite(stepPin2,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin2,LOW); 
    delayMicroseconds(tempo); 
  }
  
   digitalWrite(forward,HIGH);
    delay(2000);
     digitalWrite(forward,LOW);
       myservo.write(servo_ret);
        digitalWrite(backward,HIGH);
    delay(2000);
     digitalWrite(backward,LOW);

   for (int ciclo=0; ciclo<= (ST9_X) ;ciclo++)
  {
  digitalWrite(dirPin,dir_X);                
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(tempo); 
  }
   for (int ciclo=0; ciclo<= (ST9_Y) ;ciclo++)
  {
  digitalWrite(dirPin2,dir_Y);                
    digitalWrite(stepPin2,HIGH); 
    delayMicroseconds(tempo);        
    digitalWrite(stepPin2,LOW); 
    delayMicroseconds(tempo); 
  }
  
  break;
    //////////////////////////////////////////////////////////////////////////////////////////////
  }
}
 


















