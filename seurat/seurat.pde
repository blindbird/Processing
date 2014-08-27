//Global Variables
/* @pjs preload="tree.png"; */
PImage img1, img2;
boolean start;

//Setup
void setup () {
  size(960,520);
  img1=loadImage("tree.png");
  img2=loadImage("sherlock.jpg");
  background(255);
  
  frameRate(10000);
}

//Draw Loop
void draw (){
  if (keyPressed) {
    if (key == 't') {
      start = true;
      background(255);
    }
    if (key == 's') {
      start = false;
      background(255);
    }
  }
  
  if (start == true) {
    int r=(int)random(960);
    int a=(int)random(520);
    color c = img1.get(r, a);
    noStroke();
    fill(c);
    ellipse(r,a,10,10);
  } else if (start == false) {
    int r=(int)random(650);
    int a=(int)random(366);
    color c = img2.get(r, a);
    noStroke();
    fill(c);
    ellipse(r,a,10,10);
  }
  
}
