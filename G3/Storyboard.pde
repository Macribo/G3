float time = 0;
float a = 0;
float b = 50;
int nowFrame = 0;
int numFrames = 55;
int numConceptPics = 12;
PImage[] story = new PImage[numFrames];
PImage[] conceptPics = new PImage[numConceptPics];
//PImage[] bgImg= new PImage[1];
PImage taunt;

boolean redraw = true;
boolean toFade = false;
boolean showTaunt = false;
boolean runFirstLoop = true;
int setState = 0;

class Storyboard {




  void firstLoop() {

    if (setState ==0) {

      pushMatrix();
      image(story[nowFrame], 0, 0);

      popMatrix();
    }


    if (setState ==1) {

      pushMatrix();
      imageMode(CORNER);
      image (conceptPics[0], 0, 0);
      popMatrix();
    }
  }
}

