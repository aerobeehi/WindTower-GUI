class LED {

  int addr;
  int R;
  int G;
  int B;
  int A;

  LED (int addrTemp, int RTemp, int GTemp, int BTemp, int ATemp) {  
    addr = addrTemp; 
    R = RTemp;
    G = GTemp; 
    B = BTemp;
    A = ATemp;
  }

  void outline(int number, int addr) { 
    int a = height / (number + 2); 

    int y_increment = a + 2;
    int y_offset = a;
    int y_pos = y_offset + (addr * y_increment);

    fill(220, 220, 220);
    stroke(10);
    ellipse(100, y_pos, a, a);

    println(a);
  } 

  void colorupdate(int number, int addr, int R, int G, int B, int A) { 
    int a =  height /(number + 2);

    int y_increment = a + 2;
    int y_offset =a;
    int y_pos = y_offset + (addr * y_increment);

    fill(R, G, B, A);
    stroke(10);
    ellipse(100, y_pos, a, a); 

    // println("LED COLOR ==>  Red:" + R + "  Green:" + G + "  Blue:" + B );
  }
}

