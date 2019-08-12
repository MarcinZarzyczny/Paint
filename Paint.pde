import peasy.*;
Button zap;
Button reset;

Przycisk_menu p1;
Przycisk_menu p2;
Przycisk_menu p3;
Przycisk_menu p4;
Przycisk_menu p5;

PFont f;
color tlo = color(102);
color kolorPendzla = color(0,0,0);
float rozmiarP = 15;
int value = 0;
int l1= 0;
int s1 = 0;
int s2 = 0;
int s3 = 0;
int s4 = 0;
float pm = 250;
boolean click1 = false;
boolean click2 = false;
boolean rysu= false;

//zmienne do suwaka
float x;
float pozE = 30;
float z1 = 210;
float rp= 15;


void setup() {
  size(600,600); 
  background(tlo);
  
  p1 = new Przycisk_menu(color(255, 0, 0), 20, 20, 25, 25);
  p2 = new Przycisk_menu(color(0, 255, 0), 50, 20, 25, 25);
  p3 = new Przycisk_menu(color(0, 0, 255), 80, 20, 25, 25);
  p4 = new Przycisk_menu(color(0, 0, 0), 110, 20, 25, 25);
  p5 = new Przycisk_menu(color(255, 255, 505), 140, 20, 25,25);
  zap = new Button(color(40, 155, 150), "Zap..", 565, 30, 50, 50); 
  reset = new Button(color(40, 155, 150), "Res..", 505, 30, 50, 50);  
  
  textAlign(CENTER);
  stroke(0);
  rectMode(CENTER);
  fill(255,255,255);
  rect(300,330,580,520);
  z1 =+ z1  + rozmiarP; 
}
void draw() { 
  
    rysuj_zi ();

    p1.rysuj();
    p2.rysuj();
    p3.rysuj();
    p4.rysuj();
    p5.rysuj();
    zap.rysuj();
    reset.rysuj();
     
    if (keyPressed) {
      if (key == 'p') {       
        rysu= false;
        if (mouseX >10 + rozmiarP/2 && mouseX < 590 - rozmiarP/2 && mouseY > 70 + rozmiarP/2 && mouseY < 590 - rozmiarP/2) {
           rysowaniePedzlem();
         }
      }else if (key == 'k') { 
        if (mouseX >10 && mouseX < 590 && mouseY > 70 && mouseY < 590) {  
          
          rysojKwadrat();        
       }
      }else if (key == 'e') {
        rysu= true;
        if (mouseX >10 && mouseX < 590 && mouseY > 70 && mouseY < 590) {     
          rysojElipse();
        } 
      }
    }
     
}
  
//obsługa klikniecia
void mousePressed(){
if (p1.MouseIsOver()) {
      print("Clicked: p1");
      kolorPendzla= color(255, 0, 0);          
   }
if (p2.MouseIsOver()) {
      print("Clicked: p2 ");
      kolorPendzla= color(0, 255, 0);          
 } 
if (p3.MouseIsOver()) {
      print("Clicked: p3");
      kolorPendzla= color(0, 0, 255);           
 } 
if (p4.MouseIsOver()) {
    print("Clicked: p4");
    kolorPendzla= color(0, 0, 0);         
 } 
if (p5.MouseIsOver()) {
    print("Clicked: p5");
    kolorPendzla= color(255, 255, 255);  
 } 
if (reset.MouseIsOver()) {
    print("Clicked: reset");
    rectMode(CENTER);
    fill(255,255,255);
    rect(300,330,580,520);    
 } 
if (zap.MouseIsOver()) {
    print("Clicked: zap");
    save("ab.tif");        
 }
if (zap.MouseIsOver()) {
   print("clicked : zip");
   }
}

void rysowaniePedzlem(){
   stroke(kolorPendzla);
   fill(kolorPendzla);
   circle(mouseX, mouseY, rozmiarP);
}
void rysojKwadrat(){
    
   value= 0;
   stroke(kolorPendzla);
   fill(kolorPendzla);
   rect(mouseX, mouseY, rozmiarP, rozmiarP);
          
}
void rysojElipse(){ 
  value= 0;
   ellipseMode(CENTER);
   stroke(kolorPendzla);
   fill(kolorPendzla);
   ellipse(mouseX, mouseY, rozmiarP, rozmiarP);
}
void mouseClicked() {
  if (mouseX >10 && mouseX < 590 && mouseY > 70  && mouseY < 590) {   
    if (value == 0) {
       value++;
       s1= mouseX;
       s2= mouseY;
       print(s1+" ");
       print(s2+" ");
    }
  }
if (mouseX> 220 && mouseX < 420 && mouseY > 25 && mouseY < 35){
   z1 = mouseX;
   rp = mouseX;
   float zp = 420- z1;
   rozmiarP= (200 - zp)/2;
   print("Rozmiar pędzla "+ rozmiarP + ". ");
 }
}
//funkcja rysująca zippera 
void rysuj_zi (){
  noStroke();
  rectMode(CENTER);
  fill(tlo);
  rect(320,15,240,80);
  stroke(255);
  fill(1);
  rectMode(CENTER);
  rect(320, pozE, 200, 10, 5);
  if (mouseX> 220 && mouseX < 420 && mouseY > 25 && mouseY < 35){
    fill(1);
    rectMode(CENTER);
    rect(mouseX, pozE, 25, 25,5);
    x= mouseX;
    print(x);
    print("to z1 "+ z1+ ". ");
    print("to z2 "+ pozE+ ". ");
  }else{
    fill(1);
    rectMode(CENTER);
    rect(z1, pozE, 25, 25,5); 
  }
}
