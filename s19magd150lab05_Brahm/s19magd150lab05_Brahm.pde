int x=420;
int y=220;
int t=0;
int v=2;
int a;
int posx=60;
float posx2=360;
float[] c1=new float[3];
float[] c2=new float[3];
int i;

void setup() {
  println ("Red button turns the T.V. on and off");
  println ("Arrow buttons adjust T.V. playback speed");
  size(500,300);
  background(130,150,180);
}
void draw() {
   posx +=v;
   if(posx >=360){
     posx=60;
     for(i=0; i <=2; i++)
       c1[i]=random(255);
   }
   posx2 -=v * 1.5;
   if(posx2 <=60){
     posx2=363;
     for(i=0; i <=2; i++)
       c2[i]=random(255);
   }
   noStroke();
   fill(50);
   rect(50,50,400,200);
   stroke(5);
   line(250,50,300,10);
   line(250,50,200,10);
   fill(t);
   rect(55,55,350,190,8);
   fill(255,0,0);
   rect(x,y,10,10,10);
   fill(200);
   stroke(5);
   rect(x,150,10,10);
   fill(20,20,20);
   text("^",423,149,500,500);
   fill(200);
   rect(x,170,10,10);
   fill(20,20,20);
   text("v",423,166,500,500);
   if(t==255){
     fill(20,50,255);
     rect(55,55,350,155,8);
     fill(0,255,0);
     rect(190,70,v*20,5);
     line(55,210,405,210);
     for(a=60;a<400;a+=50){
       line(a,225,a+30,225);
     }
     fill(255);
     fill(c1[0],c1[1],c1[2]);
     rect(posx+2,183,30,20,10);
     rect(posx,193,40,15,5); 
     fill(0);
     ellipse(posx+10,210,10,10);
     ellipse(posx+30,210,10,10);    
     fill(c2[0],c2[1],c2[2]);
     rect(posx2+8,208,30,20,10);
     rect(posx2,218,40,15,5); 
     fill(0);
     ellipse(posx2+30,230,10,10);
     ellipse(posx2+10,230,10,10);
   }
}
void mouseClicked() {
   if(mouseX>x&&mouseX<x+10 &&mouseY>y&&mouseY<y+10){
     if(t==0)
       t=255;
     else
       t=0;
   }
   if(t==255){ 
     if(mouseX>x&&mouseX<x+10&&mouseY>150&&mouseY<160&&v<5){
        v+=1;
     }
     if(mouseX>x&&mouseX<x+10&&mouseY>170&&mouseY<180&&v>0){
        v-=1;
     }
   }
}
