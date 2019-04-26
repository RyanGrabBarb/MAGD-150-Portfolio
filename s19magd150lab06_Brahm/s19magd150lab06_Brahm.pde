Rain rr;
int numDrops=40;
Rain[] drops=new Rain[numDrops]; //will make the array

void setup(){
  println ("Rain tumbles down, like sorrowful tears on a cheek");
  println ("Rain tumbles down, like sorrowful tears on a cheek");
  println ("Taking the easiest path, lackadaisical as wind blown");
  println ("Rain shatters on the ground, silent without a screak");
  println ("Taking its own existence, with choices not its own");
  size(600,600);
  background(0);
  noStroke();
  //Loops array
  for (int i=0;i< drops.length; i++){
    drops[i]=new Rain();
    // Makes each rain drop
    rr=new Rain();
  }
}
void draw(){
  fill(255,80);
  rect(0,0,600,600);
  for (int i=0; i<drops.length; i++) {
    drops[i].fall();
  }
}

// sorce for understanding:
// https://processing.org/discourse/beta/num_1275997615.html
