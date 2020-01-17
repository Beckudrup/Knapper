ArrayList<knap> knappeListe = new ArrayList<knap>();



void setup(){
  
  fullScreen();
 
  
}

void draw(){
  clear();
  knappeListe.add(knap(500,100));
  for(int i=0; i<knappeListe.size(); i++){
    knap k = knappeListe.get(i);
    k.display();
    
    
  }
}
  
  
