class knap {
  float xpos;
  float ypos;
  int Width;
  int Height;
 //int Color;
  knap (float a, float b, int c, int d) {
    xpos=a;
    ypos=b;
    Width=c;
    Height =d;
//Color = c;  
}

  knap() {

    xpos=400 ;
    ypos=250;
  }



  void tegnKnapper() {

    rect(xpos, ypos, Width, Height);
  }
}
