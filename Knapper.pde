int pengeInd = 100;
int pengeUd = 100;
float konti1 = 0;
float konti2 = 0;
boolean gryn = false;

void setup() {

  size(1110, 1000);
}

void draw() {

  clear();
  textSize(32);

  knap1.tegnKnapper();
  knap2.tegnKnapper();
  knap3.tegnKnapper();
  knap4.tegnKnapper();

  fill(255, 255, 255);
  
  rect(75, 700, 300, 200);
  rect(750, 700, 300, 200);

  fill(255, 0, 0);
  text("Balance "+konti1, 125, 800);
  text("Balance "+konti2, 805, 800);
}
//Alle mine seje knapper
knap knap1 =new knap(0, 0, 400, 200, "Sæt "+pengeInd+ "kr ind på kontoen");
knap knap2 =new knap(700, 0, 400, 200, "Sæt "+pengeInd+ "kr ind på kontoen");
knap knap3=new knap(0, 350, 400, 200, "Hæv "+pengeInd+"kr fra kontoen");
knap knap4=new knap(700, 350, 400, 200, "Hæv "+pengeInd+"kr fra kontoen");  

void mousePressed() {
  
  knap1.pengePaaKontoen();
  knap2.pengePaaKontoen();
  knap3.pengePaaKontoen();
  knap4.pengePaaKontoen();
}
