#include <LiquidCrystal_I2C.h> // Control LCD
#include <Servo.h> // Control Servomotor
#include <SPI.h>
#include <MFRC522.h>

// Pines del módulo RFID
#define SS_PIN 53
#define RST_PIN 49

MFRC522 mfrc522(SS_PIN, RST_PIN);   // Create MFRC522 instance

// Define pin connections
const int pin_1 = 2; // FPGA servo 1 connected to pin 2
const int pin_2 = 3; // FPGA servo 2 connected to pin 3
const int servo1Pin = 4;  // Servo 1 connected to pin 4
const int servo2Pin = 5;  // Servo 2 connected to pin 5
const int front_sens = 6; // Sensor front connected to pin 6
const int back_sens = 7;  // Sensor back connected to pin 7
const int senal_front = 8; // Estado con retardo de front sensor
const int senal_back = 9;  // Estado con retardo de lectura back sensor
const int CAT1=22;
const int CAT2=23;
const int ID1=24;
const int ID2=25;
const int ID3=26;
const int lectura=27;    //bit para iniciar la comparación de la categoría

int intentos=3;    //contador de intentos para la categoria 00
const int time_int=700;  //tiempo de duración del pulso "boton intentos" en el FPGA

// Define servo angles

const int CLOSED_ANGLE = 0; // Closed position angle
const int OPEN_ANGLE = 90;  // Open position angle

// Initialize LCD and servos

LiquidCrystal_I2C lcd(0x27, 20, 4); // Si no te sale con esta direccion  puedes usar (0x3f,16,2) || (0x27,16,2)  ||(0x20,16,2) 
Servo servo1;
Servo servo2;

void setup() {

    Serial.begin(9600);
    // LCD
    lcd.init();
    lcd.backlight();
    lcd.clear();

    // Set pin modes
    pinMode(pin_1, INPUT);
    pinMode(pin_2, INPUT);
    pinMode(front_sens, INPUT);
    pinMode(back_sens, INPUT);
    pinMode(senal_front, OUTPUT);
    pinMode(senal_back, OUTPUT);
    for (int i = 22; i < 28; i++) {
    pinMode(i, OUTPUT); // Pines identificadores
  }    
    // Attach servos to pins
    servo1.attach(servo1Pin);
    servo2.attach(servo2Pin);
    
    // Initialize servos to closed position
    servo1.write(CLOSED_ANGLE);
    servo2.write(CLOSED_ANGLE);

    SPI.begin();                                          // Init SPI bus
    mfrc522.PCD_Init();                                   // Init MFRC522 card

    // Mensaje de bienvenida
    lcd.setCursor(0,0);
    lcd.print("     BIENVENIDO     ");
    lcd.setCursor(0,1);
    lcd.print("                    ");
    lcd.setCursor(0,2);
    lcd.print("     ACERQUE SU     ");
    lcd.setCursor(0,3);
    lcd.print("   IDENTIFICACION   ");
}

void loop() {
    // Read button states
    int FPGA1 = digitalRead(pin_1);
    int FPGA2 = digitalRead(pin_2);
    int sens_front = digitalRead(front_sens);
    int sens_back = digitalRead(back_sens);
    
    // Control servo 1 based on button 1 state
    if (FPGA1 == HIGH) {
        servo1.write(CLOSED_ANGLE);
    } else {
        servo1.write(OPEN_ANGLE);
    }
    
    // Control servo 2 based on button 2 state
    if (FPGA2 == HIGH) {
        servo2.write(OPEN_ANGLE);
    } else {
        servo2.write(CLOSED_ANGLE);
    }

    // Detección con retardo de front sensor
    if(sens_front==LOW){
      delay(200);
      digitalWrite(senal_front, HIGH);
    }else{
      digitalWrite(senal_front, LOW);
    }

    // Detección con retardo de back sensor
    if(sens_back==LOW){
      delay(200);
      digitalWrite(senal_back, HIGH);
      lcd.setCursor(0,0);
      lcd.print("     BIENVENIDO     ");
      lcd.setCursor(0,1);
      lcd.print("                    ");
      lcd.setCursor(0,2);
      lcd.print("     ACERQUE SU     ");
      lcd.setCursor(0,3);
      lcd.print("   IDENTIFICACION   ");
      intentos=3;
    }else{
      digitalWrite(senal_back, LOW);
    }
    
    RFID(); 
}



void RFID() {
  // Mirando para nuevas tarjeras
  if ( ! mfrc522.PICC_IsNewCardPresent()) 
  {
    digitalWrite(lectura,LOW);
    return;
  }
  // Selecciona una de las tarjetas
  if ( ! mfrc522.PICC_ReadCardSerial()) 
  {
    return;
  }
  // Muestra el UID sobre el Monitor Serial
  Serial.print("UID tag :");
  String content= "";
  byte letter;
  for (byte i = 0; i < mfrc522.uid.size; i++) 
  {
     Serial.print(mfrc522.uid.uidByte[i] < 0x10 ? " 0" : " ");
     Serial.print(mfrc522.uid.uidByte[i], HEX);
     content.concat(String(mfrc522.uid.uidByte[i] < 0x10 ? " 0" : " "));
     content.concat(String(mfrc522.uid.uidByte[i], HEX));
  }
  Serial.println();
  Serial.print("Message : ");
  content.toUpperCase();

  if (content.substring(1) == "99 11 F4 B3")            //categoria 00
  {
    Serial.println("Acceso Autorizado");
    lcd.setCursor(0,0);
    lcd.print("IDENTIFICACION: 000 ");
    lcd.setCursor(0,1);
    lcd.print("CATEGORIA: 00       ");
    lcd.setCursor(0,2);
    lcd.print("  Identi. invalida  ");
    lcd.setCursor(0,3);
    lcd.print("  Tiene ");
    lcd.print(intentos);
    lcd.print(" intentos  ");
    intentos=intentos-1;
    digitalWrite(CAT1,LOW);
    digitalWrite(CAT2,LOW);
    digitalWrite(ID1,LOW);
    digitalWrite(ID1,LOW);
    digitalWrite(CAT1,LOW);
    delay(100);
    digitalWrite(lectura,HIGH);
  delay(time_int);
  }else if (content.substring(1) == "2A 18 FF 3F")        //categoria 01
  {
    Serial.println("Acceso Autorizado");
    lcd.setCursor(0,0);
    lcd.print("IDENTIFICACION: 000 ");
    lcd.setCursor(0,1);
    lcd.print("CATEGORIA: 01       ");
    lcd.setCursor(0,2);
    lcd.print("   Identi. valida   ");
    lcd.setCursor(0,3);
    lcd.print("      COSTO: $1     ");
    digitalWrite(CAT1,LOW);
    digitalWrite(CAT2,HIGH);
    digitalWrite(ID1,LOW);
    digitalWrite(ID1,LOW);
    digitalWrite(CAT1,LOW);
    delay(100);
    digitalWrite(lectura,HIGH);
  delay(time_int);
  }else if (content.substring(1) == "1D 98 73 63 64 00 00")        //categoria 02
  {
    Serial.println("Acceso Autorizado");
    lcd.setCursor(0,0);
    lcd.print("IDENTIFICACION: 000 ");
    lcd.setCursor(0,1);
    lcd.print("CATEGORIA: 02       ");
    lcd.setCursor(0,2);
    lcd.print("   Identi. valida   ");
    lcd.setCursor(0,3);
    lcd.print("      COSTO: $2     ");
    digitalWrite(CAT1,HIGH);
    digitalWrite(CAT2,LOW);
    digitalWrite(ID1,LOW);
    digitalWrite(ID1,LOW);
    digitalWrite(CAT1,LOW);
    delay(100);
    digitalWrite(lectura,HIGH);
  delay(time_int);
  }else if (content.substring(1) == "13 45 3F 1C"){       //categoria 03
    Serial.println("Acceso Autorizado");
    lcd.setCursor(0,0);
    lcd.print("IDENTIFICACION: 000 ");
    lcd.setCursor(0,1);
    lcd.print("CATEGORIA: 03       ");
    lcd.setCursor(0,2);
    lcd.print("   Identi. valida   ");
    lcd.setCursor(0,3);
    lcd.print("      COSTO: $4     ");
    digitalWrite(CAT1,HIGH);
    digitalWrite(CAT2,HIGH);
    digitalWrite(ID1,LOW);
    digitalWrite(ID1,LOW);
    digitalWrite(CAT1,LOW);
    delay(100);
    digitalWrite(lectura,HIGH);
  delay(time_int);
  }else{
    Serial.println("Acceso Denegado");
    lcd.setCursor(0,0);
    lcd.print("                    ");
    lcd.setCursor(0,1);
    lcd.print("      VEHICULO      ");
    lcd.setCursor(0,2);
    lcd.print("         NO         ");
    lcd.setCursor(0,3);
    lcd.print("     AUTORIZADO     ");
  }
}  