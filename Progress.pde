import controlP5.*;

LED[] leds;


ControlP5 cp5;
ColorPicker cp;

int r = 230;
int g = 90; 
int b = 230;
int a = 50;

int temperature;
int alpha;

int j = 0;
int k = 0;
int t_off = 0;


int t_on = 3;

int number = 10; // number of LEDs
int delay = 15; // delay time



void setup() 
{    
  size(900, 500);
  frameRate(30);
  
    cp5 = new ControlP5(this);

  // Sliders
  cp5.addSlider("temperature")
     .setPosition(300,50)
     .setSize(300,10)
     .setRange(0,510)
     ;

  cp5.addSlider("alpha")
     .setPosition(300,100)
     .setSize(300,10)
     .setRange(0,255)
     ;
     
     
  // LED Column
  leds = new  LED[number]; 
  for (int i = 0; i < number; i++) 
    leds[i] = new LED(i, r, g, b, a);
}


void draw() { 
  background(204);
  /********************************************************************/
  if ( t_off < delay ) {
    for (k = 0; k < number; k++)
      leds[k].outline(k, number);
    t_off ++;
  }


  if ( (t_off - delay) < t_on && j < number ) {
    leds[j].colorupdate(number, j, r, g, b, a);
    j++;
    t_off = 0;
  }

  if ( j == number )
    j = 0;
  /********************************************************************/
  
  if (temperature >= 255){
    r = 510 - temperature;
    b = 255;
  } else {
    r = 255;
    b = temperature;
  }
 
  a = alpha; 
  
}


