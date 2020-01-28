class knap {
  float xpos;
  float ypos;
  int Width;
  int Height;
  String tekst;
  
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
  void pengePaaKontoen() {
    //If statement der checker om man klikker på en af knapperne
    if (xpos<mouseX && mouseX<xpos+Width && mousePressed ==true && mouseY>ypos && mouseY<ypos+Width) {

      gryn = true;
      println("Chomusuke er cool");
    } else {
      gryn = false;
      println("Du har ikke penge til at købe Chomusuke men hun er stadig cool");
    } 
      
    //If statementsne som sætter penge på kontierne
    if (gryn == true && xpos<200 && ypos<200) {
      konti1 +=pengeInd;
    }

    if (gryn == true && xpos>200 && ypos<200) {
      konti2 +=pengeInd;
    }
     
    if (gryn == true && xpos<200 && ypos>200) {
      konti1 -=pengeInd;
    }
    
    if (gryn == true && xpos>200 && ypos>200) {
      konti2 -=pengeInd;
    }
  }
}
