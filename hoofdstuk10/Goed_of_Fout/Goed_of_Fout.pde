import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;

void setup(){
  size(500,500);
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("knop1");
  
  knop1.setCaptionLabel("druk op mij");
  
  knop2 = cp.addButton("knop2");
  
  knop2.setCaptionLabel("druk op mij");
  
}

void draw(){
  
}

void knop1(){
  println(" Goed gedaan");
}

void knop2(){
  println("Helaas fout!");
}
