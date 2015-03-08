void controlobjects() {

  int temperature;
  int alpha;

  cp5 = new ControlP5(this);


  // Sliders
  cp5.addSlider("temperature")
    .setPosition(300, 100)
      .setSize(300, 10)
        .setRange(0, 510)
          ;

  cp5.addSlider("alpha")
    .setPosition(300, 150)
      .setSize(300, 10)
        .setRange(0, 255)
          ;


  cp5.addSlider("Hue")
    .setPosition(300, 250)
      .setSize(300, 10)
        .setRange(0, 255)
          ;

  cp5.addSlider("Saturation")
    .setPosition(300, 300)
      .setSize(300, 10)
        .setRange(0, 255)
          ;

  cp5.addSlider("Brightness")
    .setPosition(300, 350)
      .setSize(300, 10)
        .setRange(0, 255)
          ;

  cp5.addToggle("RGBcontrol")
    .setValue(false)
      .setPosition(250, 80)
        .setSize(20, 20)
          ;

  // Buttons
}

void controlEvent(ControlEvent theEvent) {
  
  boolean mode;
  
  if (theEvent.isController()) { 

    if (theEvent.controller().name()== "RGBcontrol") {
      if (theEvent.controller().value()==1)
        mode = false;
      else                                 
        mode = true;
    }

    if (theEvent.controller().name()== "HSBcontrol") {
      if (theEvent.controller().value()==1)
        mode = true;
      else                                 
        mode = false;
    }
  }
}

