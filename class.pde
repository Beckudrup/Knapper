class knap{
 float xpos;
 float ypos;
 color c;
 PImage ree ; 


knap (color tempC, float a,float b){
c=tempC;
a=xpos;
b=ypos;
}

knap(){
 c=color(0,255,0); 
  xpos=400 ;
  ypos=250;
}



void display(){
rect(xpos,ypos,100,100);

}


}
