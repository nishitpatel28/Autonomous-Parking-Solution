#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>

#define trigPin1 16 // D0 ESP8266 
#define echoPin1 5 // D1 ESP8266
#define trigPin2 4 // D0 ESP8266 
#define echoPin2 0 // D1 ESP8266
#define trigPin3 2 // D0 ESP8266 
#define echoPin3 14 // D1 ESP8266
#define led1 12
#define led2 13
#define led3 15

int httpCode;
String payload;

long duration;
int dist;
String url1;
String url2;
String url3;

const char * ssid = "Hackathon2019"; //your WiFiSSID
const char * password = "Hack@thon&20!9"; //your PASSWORD

void setup() {

  pinMode(trigPin1, OUTPUT); // Sets the trigPin as an Output
  pinMode(echoPin1, INPUT); // Sets the echoPin as an Input
  pinMode(trigPin2, OUTPUT); // Sets the trigPin as an Output
  pinMode(echoPin2, INPUT); // Sets the echoPin as an Input
  pinMode(trigPin3, OUTPUT); // Sets the trigPin as an Output
  pinMode(echoPin3, INPUT); // Sets the echoPin as an Input
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);

  Serial.begin(9600);
  delay(10);
  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

}

void loop() {
  //Ultrasonic A1
  digitalWrite(trigPin1, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin1, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin1, LOW);
  duration = pulseIn(echoPin1, HIGH);
  dist = duration * 0.034 / 2;
  Serial.print("Distance of A1: ");
  Serial.println(dist);
  delay(10);

  if(dist<5)
  {
    url1 = "http://sal.edu.in/gih2019/updatedata.php?data=1&location=A1";
    digitalWrite(led1, HIGH);
  }
  else
  {
    url1 = "http://sal.edu.in/gih2019/updatedata.php?data=0&location=A1";
    digitalWrite(led1, LOW);
  }

  //Ultrasonic A2
  digitalWrite(trigPin2, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin2, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin2, LOW);
  duration = pulseIn(echoPin2, HIGH);
  dist = duration * 0.034 / 2;
  Serial.print("Distance of A2: ");
  Serial.println(dist);
  delay(10);

  if(dist<5)
  {
    url2 = "http://sal.edu.in/gih2019/updatedata.php?data=1&location=A2";
    digitalWrite(led2, HIGH);
  }
  else
  {
    url2 = "http://sal.edu.in/gih2019/updatedata.php?data=0&location=A2";
    digitalWrite(led2, LOW);
  }

  //Ultrasonic A3
  digitalWrite(trigPin3, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin3, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin3, LOW);
  duration = pulseIn(echoPin3, HIGH);
  dist = duration * 0.034 / 2;
  Serial.print("Distance of A3: ");
  Serial.println(dist);
  delay(10);

  if(dist<5)
  {
    url3 = "http://sal.edu.in/gih2019/updatedata.php?data=1&location=A3";
    digitalWrite(led3, HIGH);
  }
  else
  {
    url3 = "http://sal.edu.in/gih2019/updatedata.php?data=0&location=A3";
    digitalWrite(led3, LOW);
  }
  
  HTTPClient http;
  http.begin(url1);

  Serial.println(url1);
  
  httpCode = http.GET();            //Send the request
  payload = http.getString();    //Get the response payload

  Serial.println(httpCode);   //Print HTTP return code
  Serial.println(payload);    //Print request response payload

  http.end();  //Close connection
  Serial.println("Request generated for A1");

  http.begin(url2);

  Serial.println(url2);
  
  httpCode = http.GET();            //Send the request
  payload = http.getString();    //Get the response payload

  Serial.println(httpCode);   //Print HTTP return code
  Serial.println(payload);    //Print request response payload

  http.end();  //Close connection
  Serial.println("Request generated for A2");

  http.begin(url3);

  Serial.println(url3);
  
  httpCode = http.GET();            //Send the request
  payload = http.getString();    //Get the response payload

  Serial.println(httpCode);   //Print HTTP return code
  Serial.println(payload);    //Print request response payload

  http.end();  //Close connection
  Serial.println("Request generated for A3");
}