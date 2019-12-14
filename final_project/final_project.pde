//INSTRUCTIONS------------------------------------------------------------------------
  //Press j to jump
  //Land on platforms
  //Score resets if you fall past bottom
//VARIABLES---------------------------------------------------------------------------
//avatar
int aX = 1350/8;
int aY = 650/8;
int aW = 25;
int aH = 25;
int aG = 0;
//platforms
int[] ph1 = {150, 250, 350};
int[] ph2 = {250, 350, 450, 550};
int[] ph3 = {350, 450, 550};
int[] ph4 = {150, 250, 350};
int px1 = 1350 - (1312 - 34);
int px2 = 1350 - (875 - 23);
int px3 = 1350 - (437 - 11);
int px4 = 1350;
float py1 = random(150, 350);
float py2 = random(250, 550);
float py3 = random(350, 550);
float py4 = random(450);//Adjust if needed: int py4 = 450;
float P1 = random(0, 2);
int pxW = 1350/4;
int pyH = 25;
int pxS = 9;



//SETUP-------------------------------------------------------------------------------
void setup(){
  size(1350, 650);
  frameRate(20);
  size(1350, 650);
}

//DRAW--------------------------------------------------------------------------------
void draw(){
  size(1350, 650);
  background(152,115,171);

  //AVATAR----------------------------------------------------------------------------
  stroke(196,226,221);
  strokeWeight(5);
  fill(153,164,199);
  rect(aX, aY, 25, 25);
  //PLATFORM 1-------------------------------------------------------------------------
  stroke(174,201,212);
  strokeWeight(5);
  fill(144,133,185);
  rect(px1, py1, pxW, pyH);
  
  px1 -= pxS;
  if (px1 <= -pxW){
    px1 = 1350;
    py1 = ph1[(int) random(0, 2)];
  }
}
