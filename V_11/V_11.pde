import controlP5.*;
ControlP5 cp5;

LED[] leds;

int r = 230;
int g = 90; 
int b = 230;
int a = 50;

int temperature;
int alpha;

int Hue;
int Saturation;
int Brightness;

boolean mode;



int j = 0;
int k = 0;
int t_off = 0;
int t_on = 3;
int delay = 15; // delay time

int number = 17;  // number of LEDs
int height = 750;

void setup() 
{    
  size(700, height);
  frameRate(30);

  leds = new LED[number]; 
  for (int i = 0; i < number; i++) 
    leds[i] = new LED(i, r, g, b, a);

  controlobjects();
}


void draw() { 
  background(204);

  noFill();
  stroke(10);
  rect(275, 225, 400, 150);  
  rect(275, 75, 400, 100); 
  
  onebyone(mode);
}

