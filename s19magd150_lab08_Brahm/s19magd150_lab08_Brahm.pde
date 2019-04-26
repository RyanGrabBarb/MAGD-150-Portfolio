PFont CourierNewPSMT,ScalaSans;
import processing.pdf.*;

void setup(){
  size(800,800);
  background(1);
  stroke(125);
  smooth();
  surface.setResizable(true);
  surface.setTitle("Load Font");
  pixelDensity(displayDensity());
  
  //Loading the .vlw files in which I have selected
  //and saved a coppy to in my data folder.
  CourierNewPSMT=loadFont("CourierNewPSMT-24.vlw");
  ScalaSans=loadFont("ScalaSans-Caps-32.vlw");
  
  textAlign(CENTER,RIGHT);
  textFont(CourierNewPSMT);
  textSize(35);
  textAlign(CENTER,LEFT);
  textFont(ScalaSans);
  textSize(40);
  beginRecord(PDF,"yes.pdf");
}

void draw(){
  fill(40,12);
  
  //Creating the box the text will reside in.
  rect(0,0,width,height);
  
  pushMatrix();
  translate(width/2.0,height/3.0);
  
  //Moving the text.
  shearX(frameCount/425.0);
  
  fill(#22FF22);
  text("Shoot for the stars!",80,180);
  popMatrix();
  pushMatrix();
  translate(width/2.0,height/2.0);
  
  //Moving the text.
  rotate(frameCount/200.0);
  
  fill(#23FF23);
  text("You're an amazing human being!",90,60);
  popMatrix();
}

//This is for the .pdf
void keyPressed(){
  if (key=='q'){
    endRecord();
    exit();
  }
}

//Makes background flash green ofr a second.
void mousePressed(){
  background(#20FF30);
}
