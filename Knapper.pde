ArrayList<knap> knappeListe = new ArrayList<knap>();
int pengeInd = 100;
int mangePengeInd = 1000;
int pengeUd = 100;
int mangePengeUd = 1000;
float pengeIAlt = 0;
color PIF = color (0,255,0);
color PUF = color(255,0,0);
int neg = 0;
int pos = 0;
void setup() {

 size(1100,1000);
 
}

void draw() {
  clear();
  textSize(32);
//Info om knapper
text("Balance "+pengeIAlt, 475, 700);
text("Sæt "+pengeInd+ "kr ind på kontoen",0,230);
text("Sæt "+mangePengeInd+ "kr ind på kontoen",670,230);
text("Hæv "+pengeUd+ "kr fra kontoen",0,350);
text("Hæv "+mangePengeUd+ "kr fra kontoen",700,350);

 knappeListe.add(new knap(0, 0, 400, 200));
  knappeListe.add(new knap(700, 0, 400, 200));
  
  knappeListe.add(new knap(0, 350, 400, 200));
  knappeListe.add(new knap(700, 350, 400, 200));
  //Saldo knap
  
  knappeListe.add(new knap(375, 700, 400, 200));
    


  for (int i=0; i<knappeListe.size(); i++) {
    knap k = knappeListe.get(i);
    k.tegnKnapper();
  } 
  //Indæt og udræk knapper og deres farver, grøn = pengeInd, rød = pengeUd
  
 
}
void mousePressed() {

  if (mouseX<400 && mouseY<200) {
    pengeIAlt +=pengeInd;
  }
  if (mouseX>700 && mouseY<200) {
    pengeIAlt +=mangePengeInd;
  }
  if (mouseX<400 && mouseY>350) {
    pengeIAlt -=pengeUd;
}
if (mouseX>700 && mouseY>350) {
    pengeIAlt -=mangePengeUd;
}
}
