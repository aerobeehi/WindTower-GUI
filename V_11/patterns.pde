void onebyone(boolean mode) {
 
  if ( t_off < delay ) {
    for (k = 0; k < number; k++) {
      leds[k].outline(number, k);
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

if ( mode = false ){
  
  if (temperature >= 255) {
    r = 510 - temperature;
    b = 255;
  } else {
    r = 255;
    b = temperature;
  }

  a = alpha;
} else {
  
    if (temperature >= 255) {
    r = Hue;
    g = Saturation;
    b = Brightness;
    a = alpha;
  }
}

}
  


