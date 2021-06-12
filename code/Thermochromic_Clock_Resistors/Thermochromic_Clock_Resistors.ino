
#include <Wire.h>
#include <ESP8266WiFi.h>            // we need wifi to get internet access
#include <time.h>                   // time() ctime()

const char *ssid     = "xxxx";
const char *password = "xxxx";

//#define DEBUG // activate output to serial

#ifdef DEBUG
#define DEBUG_PRINT(x) Serial.print(x)
#define DEBUG_PRINTF(x, f) Serial.print(x, f)
#define DEBUG_PRINTLN(x) Serial.println(x)
#define DEBUG_PRINTLNF(x, f) Serial.println(x, f)
#else
#define DEBUG_PRINT(x)
#define DEBUG_PRINTF(x, f)
#define DEBUG_PRINTLN(x)
#define DEBUG_PRINTLNF(x, f)
#endif

//Pin connected to latch pin (RCK)
#define latchPin D2
//Pin connected to clock pin (SRCK)
#define clockPin D1
////Pin connected to Data in (SER IN)
#define dataPin D5
////Pin connected to enable (G_bar)
#define enablePin D6

/* Configuration of NTP */
#define MY_NTP_SERVER "de.pool.ntp.org"            // set the best fitting NTP server (pool) for your location
#define MY_TZ "CET-1CEST,M3.5.0,M10.5.0/3"        // https://github.com/nayarsystems/posix_tz_db/blob/master/zones.csv

time_t now;                         // this is the epoch
tm tm;                              // the structure tm holds time information in a more convient way
 
uint8_t lastMinute;                 // save minute when clock was last updated

bool PWMmode = true;               // PWM heating on/off

// PWM mode
//// PWM period (ms)
const uint16_t period = 50;
//// duty cycle
const double duty = 0.4;
//// heating duration (ms)
const uint16_t t_heatPWM = 10000;

// continous mode
//// heating time (ms)
const uint16_t t_heat = 1500;

// bits to activate for showing numbers 0...9
const byte seg[10] = {0b00111111, 0b00000110, 0b01011011, 0b01001111, 0b01100110, 0b01101101, 0b01111101, 0b00000111, 0b01111111, 0b01101111};
   

void setup() {
  //set pins to output because they are addressed in the main loop
  pinMode(latchPin, OUTPUT);
  pinMode(dataPin, OUTPUT);  
  pinMode(clockPin, OUTPUT);
  pinMode(enablePin, OUTPUT);

  digitalWrite(enablePin, LOW);
  
  Serial.begin(115200);

  // delay a little
  delay(1000);
  
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  DEBUG_PRINT("connecting to WiFI");
  while ( WiFi.status() != WL_CONNECTED ) {
    delay ( 500 );
    DEBUG_PRINT ( "." );
  }
  DEBUG_PRINTLN("connected!");

  configTime(MY_TZ, MY_NTP_SERVER); // configure NTP server and timezone

  delay(2000);
  
  showTime();
  if(PWMmode) {
    updateDisplayPWM();
  }
  else {
    updateDisplay();
  }
  lastMinute = tm.tm_min;

}

void loop() {
  //testDisplayPWM();
  showTime();
  if(tm.tm_min!=lastMinute) {
    DEBUG_PRINTLN("updating display");
    if(PWMmode) {
      DEBUG_PRINTLN("PWM heating on");
      updateDisplayPWM();
      DEBUG_PRINTLN("PWM heating off");
    }
    else {
      DEBUG_PRINTLN("heating on");
      updateDisplay();
      DEBUG_PRINTLN("heating off");
    }
    lastMinute = tm.tm_min;
  }
  delay(1000);
  
}

void showTime() {
  time(&now);                       // read the current time
  localtime_r(&now, &tm);           // update the structure tm with the current time
  DEBUG_PRINT("year:");
  DEBUG_PRINT(tm.tm_year + 1900);  // years since 1900
  DEBUG_PRINT("\tmonth:");
  DEBUG_PRINT(tm.tm_mon + 1);      // January = 0 (!)
  DEBUG_PRINT("\tday:");
  DEBUG_PRINT(tm.tm_mday);         // day of month
  DEBUG_PRINT("\thour:");
  DEBUG_PRINT(tm.tm_hour);         // hours since midnight  0-23
  DEBUG_PRINT("\tmin:");
  DEBUG_PRINT(tm.tm_min);          // minutes after the hour  0-59
  DEBUG_PRINT("\tsec:");
  DEBUG_PRINT(tm.tm_sec);          // seconds after the minute  0-61*
  DEBUG_PRINT("\twday");
  DEBUG_PRINT(tm.tm_wday);         // days since Sunday 0-6
  if (tm.tm_isdst == 1)             // Daylight Saving Time flag
    DEBUG_PRINT("\tDST");
  else
    DEBUG_PRINT("\tstandard");
  DEBUG_PRINTLN();
}

void updateDisplay() {

  uint16_t dig1 = tm.tm_hour / 10;
  uint16_t dig2 = tm.tm_hour % 10;
  uint16_t dig3 = tm.tm_min / 10;
  uint16_t dig4 = tm.tm_min % 10;

  // turn outputs on
  writeByte(seg[dig4]);
  writeByte(seg[dig3]);
  writeByte(seg[dig2]);
  writeByte(seg[dig1]);
  delay(t_heat);
  
  // turn all outputs off
  for (int i=0; i<4; ++i) {
    writeByte(0);
  }

}

void updateDisplayPWM() {

  uint16_t dig1 = tm.tm_hour / 10;
  uint16_t dig2 = tm.tm_hour % 10;
  uint16_t dig3 = tm.tm_min / 10;
  uint16_t dig4 = tm.tm_min % 10;

  // heat segments for some time
  for(int t=0; t<t_heatPWM; t+=period) {
    // turn outputs on
    writeByte(seg[dig4]);
    writeByte(seg[dig3]);
    writeByte(seg[dig2]);
    writeByte(seg[dig1]);
    delay(duty*period);
    
    // turn all outputs off
    for (int i=0; i<4; ++i) {
      writeByte(0);
    }
    delay((1-duty)*period);
  }

}


void testDisplayPWM() {
  // loop over numbers 0..9
  for(int i=0; i<10; ++i) {
    // show number for 60 seconds
    for(int t=0; t<60000; t+=period) {
      // loop over digits 1..4
      for(int j=0; j<4; ++j) {
        writeByte(seg[i]);  // show same number for all digits
      }
      delay(duty*period);
      // turn all segments off
      for(int j=0; j<4; ++j) {
        writeByte(0); 
      }
      delay((1-duty)*period);
    }
  } 
}



void testDisplay() {
  // loop over numbers 0..9
  for(int i=0; i<10; ++i) {
    // loop over digits 1..4
    for(int j=0; j<4; ++j) {
      writeByte(seg[i]);  // show same number for all digits
    }
    delay(t_heat);
    // turn all segments off
    for(int j=0; j<4; ++j) {
      writeByte(0); 
    }
    delay(60000-t_heat);
  }
  
}



// This method sends bits to the shift register:
//
void writeByte(byte bitsToSend) {

  // turn off the output so the pins don't light up
  // while you're shifting bits:
  digitalWrite(latchPin, LOW);
  
  // shift the bits out
  shiftOut(dataPin, clockPin, MSBFIRST, bitsToSend);

  // turn on the output so the LEDs can light up:
  digitalWrite(latchPin, HIGH);

}

void registerWrite(int whichPin, int whichState) {
  // the bits you want to send
  byte bitsToSend0 = 0;
  // write number as bits
  bitWrite(bitsToSend0, whichPin, whichState);

  // turn off the output so the pins don't light up
  // while you're shifting bits:
  digitalWrite(latchPin, LOW);
  
  // shift the bits out
  shiftOut(dataPin, clockPin, MSBFIRST, bitsToSend0);

  // turn on the output so the LEDs can light up:
  digitalWrite(latchPin, HIGH);
}
