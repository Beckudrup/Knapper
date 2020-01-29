class knap {
  float xpos;
  float ypos;
  int Width;
  int Height;
  String tekst;
  boolean klikketpaa= false;
  knap (float a, float b, int c, int d, String e) {
    xpos=a;
    ypos=b;
    Width=c;
    Height =d;
    tekst =e;
  }

  knap() {

    xpos=400 ;
    ypos=250;
  }
  void tegnKnapper() {
    //Knappernes blueprint
    fill(255, 255, 255);
    rect(xpos, ypos, Width+10, Height);
    fill(255, 0, 0);
    text(tekst, xpos+5, ypos+100);
  }
  void klikPaaKnap() {
    //If statement der checker om man klikker på en af knapperne
    if (xpos<mouseX && mouseX<xpos+Width && mousePressed ==true && mouseY>ypos && mouseY<ypos+Height) {

      klikketpaa = true;
      println("Chomusuke er cool");
    } else {
      klikketpaa = false;
    }
  }



}
