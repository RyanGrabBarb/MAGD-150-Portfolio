import processing.video.*;
import processing.sound.*;
PImage frame;
SoundFile music;
Movie slideshow;

//Loading in the pictue, music and video I'll be using
void setup(){
  smooth();
  size (900,700);
  background (1);
  slideshow = new Movie(this,"70 PHOTOS YOU MUST SEE BEFORE DEATH.mov");
  frame = loadImage("Gold-Frame-PNG-Picture.png");
  music = new SoundFile(this,"BeatlessHeart.wav");
  
  //plays the music and decreases the volume a bit.
  music.play();
  music.amp(0.25);
  
}

//Visually implementing the things I loaded above.
void draw(){
  filter(GRAY);
  image (slideshow,85,85,725,525);
  
  //plays the video, loops it and mutes it.
  slideshow.volume(0);
  slideshow.play();
  slideshow.loop();
  
  filter (ERODE);
  image(frame,0,0,width,height);
}
  
void movieEvent(Movie m) {
  m.read();
}
  
//Video credit: https://www.youtube.com/watch?v=knIic3M7Rsc

//Music credit (I own and created all the music on this account): 
//https://soundcloud.com/yeboireckless 
