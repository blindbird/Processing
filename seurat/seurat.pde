//Global Variables
/* @pjs preload="tree.png"; */
PImage img;

//Setup
void setup () {
  size(960,520);
  img=loadImage("tree.png");
  background(255);
  
  frameRate(5000);
}

//Draw Loop
void draw (){
  int r=(int)random(960);
  int a=(int)random(520);
  
  color c = img.get(r, a);
  noStroke();
  fill(c);
  ellipse(r,a,10,10);
}
