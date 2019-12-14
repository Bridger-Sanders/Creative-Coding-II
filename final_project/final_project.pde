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
int[] ph4 = {350};
int px1 = 1350 - (1312 - 34);
int px2 = 1350 - (875 - 23);
int px3 = 1350 - (437 - 11);
int px4 = 1350;
float py1 = random(150, 350);
float py2 = random(250, 550);
float py3 = random(350, 550);
float py4 = random(450);//Adjust if needed: int py4 = 450;
int pxW = 1350/4;
int pyH = 25;
int pxS = 9;
boolean jumping = false;


//SETUP-------------------------------------------------------------------------------
void setup(){
  size(1350, 650);
  frameRate(60);
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
  //appear
  rect(px1, py1, pxW, pyH);
  //move left
  px1 -= pxS;
  if (px1 <= -pxW){
    px1 = 1350;
    py1 = ph1[(int) random(0, 2)];
  }

  //PLATFORM 2------------------------------------------------------------------------
  //appear
  rect(px2, py2, pxW, pyH);
  //move left
  px2 -= pxS;
  if (px2 <= -pxW){
    px2 = 1350;
    py2 = ph2[(int) random(0, 3)];
  }

  //PLATFORM 3------------------------------------------------------------------------
  //appear
  rect(px3, py3, pxW, pyH);
  //move left
  px3 -= pxS;
  if (px3 <= -pxW){
    px3 = 1350;
    py3 = ph3[(int) random(0, 2)];
  }
  //PLATFORM 4------------------------------------------------------------------------
  //appear
  rect(px4, py4, pxW, pyH);
  //move left
  px4 -= pxS;
  if (px4 <= -pxW){
    px4 = 1350;
    py4 = ph4[(int) random(0)];
  }
  //COLLISION DETECTION & PHYSICS-----------------------------------------------------
    aY += aG;
    if (aX + aW > px1 && 
        aX < px1 + pxW && 
        aY + aH + aG > (py1 - 5) && 
        aY + aG < (py1 - 5) + pyH) {
    aG = 0;
    jumping = false;
    }
    else if (aX + aW + aG > (px1 - 5) && 
            aX + aG < (px1 - 5) + pxW && 
            aY + aH > py1 && 
            aY < py1 + pyH) {
    aX += -10;
    }
    else if (aX + aW > px2 && 
        aX < px2 + pxW && 
        aY + aH + aG > (py2 - 5) && 
        aY + aG < (py2 - 5) + pyH) {
    aG = 0;
    jumping = false;
    }
    else if (aX + aW + aG > (px2 - 5) && 
            aX + aG < (px2 - 5) + pxW && 
            aY + aH > py2 && 
            aY < py2 + pyH) {
    aX += -10;
    }
    else if (aX + aW > px3 && 
        aX < px3 + pxW && 
        aY + aH + aG > (py3 - 5) && 
        aY + aG < (py3 - 5) + pyH) {
    aG = 0;
    jumping = false;
    }
    else if (aX + aW + aG > (px3 - 5) && 
            aX + aG < (px3 - 5) + pxW && 
            aY + aH > py3 && 
            aY < py3 + pyH) {
    aX += -10;
    }
    else if (aX + aW > px4 && 
        aX < px4 + pxW && 
        aY + aH + aG > (py4 - 5) && 
        aY + aG < (py4 - 5) + pyH) {
    aG = 0;
    jumping = false;
    }
    else if (aX + aW + aG > (px4 - 5) && 
            aX + aG < (px4 - 5) + pxW && 
            aY + aH > py4 && 
            aY < py4 + pyH) {
    aX += -10;
    }
    else if (aY + aH > 650) {
    //aY = height - aH;
    //aG = 0;
    //jumping = false;
    aY = 650/8;
    aX = 1350/8;
    jumping = true;
    }
    else {
    aG ++;
    }
    if (keyPressed){
      if (key ==  'j' || key == 'J'){
        if (!jumping) {
          aG = -20;
          jumping = true;
        }
      }
    }
}
