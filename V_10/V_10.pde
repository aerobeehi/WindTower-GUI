import controlP5.*;

LED[] leds;


ControlP5 cp5;
//MyControlListener myListener;

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

int number = 10;  // number of LEDs
int tempnumber = 10; // slider value 
int delay = 15; // delay time



void setup() 
{    
  size(700, 720);
  frameRate(30);

  controlobjects();
}


void draw() { 
  background(204);

  number = tempnumber;

  leds = new LED[number]; 
  for (int i = 0; i < number; i++) 
    leds[i] = new LED(i, r, g, b, a);

  some();
}


void some() {
  if ( t_off < delay ) {
    for (k = 0; k < number; k++) {
      leds[k].outline(k, number);
      t_off ++;
    }
  }

  if ( (t_off - delay) < t_on && j < number ) {
    int l = j + 1;
    leds[j].colorupdate(number, j, r, g, b, a);
    j++;
    
    t_off = 0;
  }

  if ( j == number ) 
    j = 0;

  if (temperature >= 255) {
    r = 510 - temperature;
    b = 255;
  } else {
    r = 255;
    b = temperature;
  }

  a = alpha;
}

