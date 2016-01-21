

//Code for sharing a game document





interface JavaScript {


  void playSound1();
  void stopSound1();
  void playSound2();
  void stopSound2();
  void playSound3();
  void stopSound3();
  void playSound4();
  void stopSound4();
  void playSound5();
  void stopSound5();
}

void bindJavascript(JavaScript js) {
  javascript = js;
}

JavaScript javascript;





float []x = new float[100];
float []y =new float[100];
float []speed =new float[100];
PImage bg;
//float bGFader = 250;

//FlashWords
FlashWords words = new FlashWords();

//Buttons
Button1 btn = new Button1();
Button2 btn2 = new Button2();
BtnConcept btnConcept = new BtnConcept();


Storyboard sceal = new Storyboard();
Fade fade = new Fade();

void setup() {



  bg = loadImage("bg1");
  conceptPics[0] = loadImage("bg2");

  taunt = loadImage("55a", 10, 50);


  story[0] = loadImage("0");
  story[1] = loadImage("1");
  story[2] = loadImage("2");
  story[3] = loadImage("3");
  story[4] = loadImage("4");
  story[5] = loadImage("5");
  story[6] = loadImage("6");
  story[7] = loadImage("7");
  story[8] = loadImage("8");
  story[9] = loadImage("9");


  story[10] = loadImage("10");
  story[11] = loadImage("11");
  story[12] = loadImage("12");
  story[13] = loadImage("13");
  story[14] = loadImage("14");
  story[15] = loadImage("15");
  story[16] = loadImage("16");
  story[17] = loadImage("17");
  story[18] = loadImage("18");
  story[19] = loadImage("19");

  story[20] = loadImage("20");
  story[21] = loadImage("21");
  story[22] = loadImage("22");
  story[23] = loadImage("23");
  story[24] = loadImage("24");
  story[25] = loadImage("25");
  story[26] = loadImage("26");
  story[27] = loadImage("27");
  story[28] = loadImage("28");
  story[29] = loadImage("29");

  story[30] = loadImage("30");
  story[31] = loadImage("31");
  story[32] = loadImage("32");
  story[33] = loadImage("33");
  story[34] = loadImage("34");
  story[35] = loadImage("35");
  story[36] = loadImage("36");
  story[37] = loadImage("37");
  story[38] = loadImage("38");
  story[39] = loadImage("39");

  story[40] = loadImage("40");
  story[41] = loadImage("41");
  story[42] = loadImage("42");
  story[43] = loadImage("43");
  story[44] = loadImage("44");
  story[45] = loadImage("45");
  story[46] = loadImage("46");
  story[47] = loadImage("47");
  story[48] = loadImage("48");
  story[49] = loadImage("49");
  story[50] = loadImage("50");
  story[51] = loadImage("51");
  story[52] = loadImage("52");
  story[53] = loadImage("53");
  story[54] = loadImage("54");




  //button images
  btnS[0] = loadImage("play");
  btnS[1] = loadImage("play");
  btn2Img[0] = loadImage("back");
  btn2Img[1] = loadImage("back");
  btnConceptImg[0] = loadImage("concept");
  btnConceptImg[1] = loadImage("concept");
  //silly names.  Still trying to figure out policy of Irish language programming.



  font2 = loadFont("ArialMT-48.vlw");

  frameRate(30);
  size(960, 600);
  smooth();
  messages = new MsgBox("Tá Cleite ag dul ar scoil.", new PVector(20, 20), 750);
}














void draw() {


  //fill(255);
  ;
  words.flashWords();

  fill(255, 17);
  rect(0, 0, width, height);
  sceal.firstLoop();

  println(index);

  //  rect(0, 0, width, height, 10);
  //image(bg, width, height);


  //tint(255, 100);//image(bgImg[54], 0, 0,50+bGFader);

  // bGFader += .7;


  //
  //  if (nowFrame==4) {
  //    btnConcept.revealConcept();
  //  }
  //
  //  if (nowFrame>4) {
  //    btnConcept.hideConcept();
  //  }



  if (index<=0) {
    btn2.hideBtn2();

    if (javascript != null) {
      javascript.playSound1();
    }
  } 

  if (index >=1)
  {
    btn2.revealBtn2();
  }


if (index == 1){
   
    
  
}
if (index == 2){

}
if (index == 3){
 
}
if (index == 4){

}
if (index >= 5 && index<22){
    javascript.stopSound1();
    javascript.playSound2();
}

if (index == 23 && index<30){
    javascript.stopSound2();
    javascript.playSound3();
}
if (index >= 30){
    javascript.stopSound3();
    javascript.playSound4();
}



  //println(mouseX, mouseY);
  //println(up);

  // btnConcept.show();
  messages.run();
  btn.show();
  btn2.show();
}



void mouseReleased() {
  if (btn1over) {
    nowFrame++;
    index =nowFrame;
    flashSet = nowFrame;
    messages.setText(s[int(index)]);
    messages.animateText();

    index %= s.length;
  }

  if (btn2over) {
    nowFrame--;
    index =nowFrame;
    messages.setText(s[int(index)]);
    messages.animateText();

    index %= s.length;
  }
  if (btnConceptOver) {
    setState=1;
  }
}






//////////

