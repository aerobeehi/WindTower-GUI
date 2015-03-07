void controlobjects() {

  int temperature;
  int alpha;
  int twenty = 0;

  cp5 = new ControlP5(this);

  translate(0,0);
  
  // Sliders
  cp5.addSlider("temperature")
    .setPosition(300, 50)
      .setSize(300, 10)
        .setRange(0, 510)
          ;

  cp5.addSlider("alpha")
    .setPosition(300, 100)
      .setSize(300, 10)
        .setRange(0, 255)
          ;

  cp5.addSlider("tempnumber")
    .setPosition(300, 150)
      .setSize(300, 10)
        .setRange(10, 19)
          .setNumberOfTickMarks(10)
         ;
         
         
   cp5.addSlider("increment")
    .setPosition(300, 200)
      .setSize(300, 10)
        .setRange(1, 4)
          .setNumberOfTickMarks(4)
         ;   
         

}

