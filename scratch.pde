//LED[] leds; 
//
//int r = 230;
//int g = 230; 
//int b = 230;
//
//int x;
//
//int number = 8; // number of LEDs
//
//void setup() 
//{    
//  size(900, 500);
//  frameRate(4);
//
//  leds = new  LED[number]; 
//  for (int i = 0; i < number; i++) 
//    leds[i] = new LED(i, r, g, b);
//}
//
//
//void draw() { 
//  background(204);
//
//  for (LED led : leds) {
//    led.update();
//  }
//  mask();
//}
//
//
//
//void mask() {   
//  for (int j = 0; j < number; j++)
//  {
//    x = 100 + j*100;
//    fill(220, 220, 220);
//    stroke(10);
//    ellipse(x, 100, 40, 40);
//  }
//}
//
//void pattern() {
//  for (int k = 0; k < number; k++)






//  void onebyone(int delay, int number, int t_on, int R, int G, int B) {
//    
//    int k = 0;
//    int j = 0;
//    
//    if ( t_off < delay ) {
//      for (k = 0; k < number; k++)
//        leds[k].outline(k);
//      t_off ++;
//    }
//
//    if ( (t_off - delay) < t_on && j < number ) {
//      leds[j].colorupdate(j, R, G, B);
//      j++;
//      t_off = 0;
//    }
//
//    if ( j == number )
//      j = 0;
//
//    println(t_off);
//  }
