

//Code for sharing a game document






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
  } 
  
  if(index >=1)
  {btn2.revealBtn2();}

  //println(mouseX, mouseY);
  println(up);

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



// a clickable button that displays concept details
PImage[] btnConceptImg= new PImage[2];

int btnCX = 140;
int btnCY = 510;
boolean conceptVisible = false;
boolean btnConceptOver = false;


class BtnConcept {  


  void show() {
    if (conceptVisible) {


      image(btnConceptImg[0], btnCX, btnCY, 120, 50);

      if (mouseX>btnCX && mouseX<btnCX+120 && mouseY>btnCY && mouseY < btnCY+50) {
        btnConceptOver = true;
      } else {
        btnConceptOver = false;
      }
      if (btnConceptOver) {
        image(btnConceptImg[0], btnCX, btnCY, 120, 50);
      }
    }
  }

  void revealConcept() {
    if (conceptVisible==false) {
      conceptVisible = true;
    }
  }
  void hideConcept() {
    conceptVisible = false;
  }
}



PImage[] btnS= new PImage[2];
int tracker = 0;
int btnX = 820;
int btnY = 510;

boolean btn1over = false;


class Button1 {


  void show() {



    image(btnS[0], btnX, btnY, 120, 50);

    if (mouseX>btnX && mouseX<btnX+120 && mouseY>btnY && mouseY < btnY+50) {
      btn1over = true;
    } else {
      btn1over = false;
    }
    if (btn1over) {
      image(btnS[1], btnX, btnY, 120, 50);
    }
  }
}


//"back" button

PImage[] btn2Img= new PImage[2];


int btn2X = 640;
int btn2Y = 510;

boolean btn2Visible = false;
boolean btn2over = false;



class Button2 {


  void show() {

    if (btn2Visible) { 

      image(btn2Img[0], btn2X, btn2Y, 120, 50);

      if (mouseX>btn2X && mouseX<btn2X+120 && mouseY>btn2Y && mouseY < btn2Y+50) {
        btn2over = true;
      } else {
        btn2over = false;
      }
      if (btn2over) {
        image(btn2Img[1], btn2X, btn2Y, 120, 50);
      }
    }
  }

  void hideBtn2() {


    btn2Visible = false;
  }


  void revealBtn2() {

    btn2Visible = true;
  }
}
//try just changing the img for btn 2 instead of making it "invisible"

class Fade {

  void fadeOut() {
    for (int i = 0; i<30; i++) {
      stroke(255);
      noFill();
      bezier(

      random(width), random(height), 
      random(width), random (height), 
      random(width), random(height), 
      random(width), random(height));
    }
  }
}




float up = 0;
int m, n, ran, ranW;
PFont font;
PFont font2;
int flashSet = 0;

class FlashWords {
  void flashWords() {


    n = int(random(3));
    ran = 50 + int (random(50));
    ranW = width -150;


    if (frameCount %50 == 0) {
      beginDraw();
      textSize(32);
      fill(#580B0B);
      text(BEARLA[flashSet][n], ranW-int(random(50)+10), ran+ int(random(50)+10));


      fill(#11760C);

      text(GAEILGE[flashSet][n], ranW, ran);
    }
  }
}

//[14][3]
String[][] GAEILGE = {
  {
    "", 
    "", 
    ""
  }
  , {
    "Feiceann", 
    "liathróid", 
    "dearg"
  }
  , {
    "Preabann", 
    "isteach", 
    "amach"
  }
  , {
    " ", " ", " "
  }
  , {
    "Oscail", 
    "bosca", 
    "sceach"
  }
  , {
    "Ollphéist", 
    "Féachann", 
    "Ollphéist"
  }
  , {
    "Leamháin", 
    "mór", 
    "cineál"
  }
  , { 
    "cara", 
    "cara", 
    "cara"
  }
  , {
    "scoil", 
    "rang", 
    "leadránach"
  }
  , {
    "pleidhcíocht", 
    "múinteoir", 
    "AMADÁN"
  }
  , {
    "TAR", 
    "ANSEO", 
    "ANSEO"
  }
  , {
    "gach rud", 
    "phaistí", 
    "ar eolais"
  }
  , {
    "B'fhéidir", 
    "mhúineadh", 
    "mhaith leatsa"
  }
  , {
    "scríobh", 
    "Ardaíonn", 
    "tosaíonn"
  }
  , {
    "Haw", 
    "Haw", 
    "Haw"
  }
  , {
    "Ní féidir", 
    "eitilt", 
    "sciathán"
  }
  , {
    "Teitheann", 
    "Cleite", 
    "Cleite"
  }
  , {
    "trua", " misneach", " leabharlannaí"
  }
  , 
  {
    "rang ", "eile ", "claimh"
  }
  , {
    "Tosaíonn ", "easca ", "go leoir"
  }
  , 
  {
    "Souish!*", "easca", "peasca"
  }
  , 

  {
    "deis ", "luaith", " mall"
  }
  , 
  {
    "Craic! ", "Craic!", " Craic!"
  }
  , 

  {
    "brionglóid", " ", " "
  }
  , 

  {
    "eitilt", "eitilt", "eitilt"
  }
  , 

  {
    "crann", " éagsúil ", "bláthanna"
  }
  , 
  {
    "taobh thiar", "taobh thiar", ""
  }
  , 
  {
    "Ollphéist ", "stróiceann", " uaidh"
  }
  , 
  {
    "Dúisionn", " tobann", ""
  }
  , 
  {
    "beidh", " b'éigean", " sos"
  }
  , 
  {
    "cnag-cnag ", "cnag-cnag", " cnag-cnag"
  }
  , 
  {
    "shroicheann ", "doras ", "stopann"
  }
  , 
  {
    "rogha ", "féach", " Éist"
  }
  , 
  {
    "ceo ", "Cailleach ", "tagann"
  }
  , 
  {
    "Tóg ", "chuig ", "fáilte"
  }
  , 
  {
    "comhairc ", "aonar", " Déanann"
  }
  , 
  {
    "Buann", "Buann", "Buann"
  }
  , 
  {
    "uafás", " i bhfolach ", "Teann"
  }
  , 
  {
    "bhailiú", "", ""
  }
  , 
  {
    "Rogha ", "fan ", "ionsaigh"
  }
  , 
  {
    "Bailíonn", " misneach", ""
  }
  , 
  {
    "ionsaíonn", "", ""
  }
  , 
  {
    "", "", ""
  }
  , 
  {
    "déanann", "", " a ndíchal"
  }
  , 
  {
    "i bhfad", " ró", " láidir"
  }
  , 
  {
    "Óró!", " m'fhiacla", " agat!"
  }
  , 
  {
    "Comhghairdeas", "draíocht", "iontu"
  }
  , 
  {
    "ní feicfidh", "chairde", " arís"
  }
  , 
  {
    "Titeann", " tríd", " poll"
  }
  , 
  {
    "Tógann", "sios ", "lách"
  }
  , 
  {
    "Seo", "tús", "cluiche"
  }
  , 
  {
    "Dúshlán", "Éalú", "fuascailt"
  }
};

String[][] BEARLA= {
  {
    "", 
    "", 
    ""
  }
  , {
    "Sees", 
    "ball", 
    "red"
  }
  , {
    "Bounces", 
    "in", 
    "out"
  }
  ,  {
    " ", " ", " "
  }
  , {
    "open", 
    "box", 
    "thorn-bush"
  }
  ,{
    "Monster", 
    "sees", 
    "Monster"
  }
  , {
    "big", 
    "moth", 
    "type"
  }
  , { 
    "friend", 
    "friend", 
    "friend"
  }
  , {
    "school", 
    "class", 
    "boring"
  }
  , { 
    "foolery", 
    "teacher", 
    "IDIOT"
  }
  , {
    "COME", 
    "HERE", 
    "HERE"
  }
  , {
    "every thing", 
    "children", 
    "knows"
  }
  , {
    "Maybe", 
    "teach", 
    "you'd like to"
  }
  , { 
    "write", 
    "raises", 
    "begins"
  }
  , {
    "Haw!", 
    "Haw!", 
    "Haw!"
  }
  , {
    "Can't", 
    "fly", 
    "wings"
  }
  , {
    "Flees", 
    "Feather", 
    "Feather"
  }
  , 
  {
    "pity", "confidence", "librarian"
  }
  , 
  {
    "class", "another", "sword"
  }
  , {
    "Begins", "easy", "enough"
  }
  , 
  {
    "Swish!", "easy", "peasy"
  }
  , 
  {
    "opportunity", "sooner", "later"
  }
  , 
  {
    "Crack!", "Crack!", "Crack!"
  }
  , 

  {
    "dream", "dream", "dream"
  }
  , 

  {
    "flying", "flying", "flying"
  }
  , 

  {
    "tree", "different", "flowers"
  }
  , 
  {
    "behind", "behind", "behind"
  }
  , 
  {
    "Monster", "rips", "from him"
  }
  , 
  {
    "wakes", "suddenly", ""
  }
  , 
  {
    "will be", "is obliged", "to rest"
  }
  , 
  {
    "cnag-cnag", "cnag-cnag", "cnag-cnag"
  }
  , 
  {
    "reaches", "door", "stops"
  }
  , 
  {
    "choice", "look", "listen"
  }
  , 
  {
    "mist", "witch", "comes"
  }
  , 
  {
    "take", "to", "welcome"
  }
  , 
  {
    "single", "combat", "make"
  }
  , 
  {
    "Wins", "", ""
  }
  , 
  {
    "horror", "hidden", "Goes"
  }
  , 
  {
    "gathers", "", ""
  }
  , 
  {
    "Choice", "stay", "attack"
  }
  , 
  {
    "Gathers", "confidence", ""
  }
  , 
  {
    "attacks", "", ""
  }
  , 
  {
    " ", "", ""
  }
  , 
  {
    "does", "his best", ""
  }
  , 
  {
    "much", "too", "strong"
  }
  , 
  {
    "Óró!", "my teeth", "you have!"
  }
  , 
  {
    "Congratulations", "magic", "in them"
  }
  , 
  {
    "won't see", "friends", "again"
  }
  , 
  {
    "Falls", "through", "hole"
  }
  , 
  {
    "Brings", "down", "gently"
  }
  , 
  {
    "This", "begins", "game"
  }
  , 
  {
    "Challenge", "Escape", "rescue"
  }
};

//code based on _vk's message box sketch



int daithBG = 200;
class MsgBox {



  /////////////////////////////fields
  boolean show = true;
  //text & text holder
  String texxt, displayText;

  //positioning
  PVector bgPos, textPos;
  float w, h;

  //font & color
  color textColor = #313131, bgColor = color(255, 0);

  //timing
  int timer, wait;



  ///////////////////////////MsgBox constructor
  MsgBox(String tx, PVector bg, float w) {

    bgPos = bg;
    this.w = w;
    h = 226;
    texxt = tx;

    displayText = texxt;

    //calculate text pos relative to bg pos
    textPos = new PVector(bgPos.x +27, (bgPos.y+32 ) -8);


    //speed of "typing"
    wait = 60;
  }


  //////////////////////////////logic functions


  //run is wrapper for all functionality

  void run() {
    update();
    display();
  }


  //display is wrapper for all drawing

  void display() {
    if (show==true) {
      noStroke();
      drawBg();
      drawText();
    } else {

      drawText();
    }
  }//display



  void setText(String s) {
    if (!texxt.equals(s)) {
      texxt = s;
      displayText = texxt;
    }
  }//setText

  /**SETS DISPLAY TEXT TO EMPTY THUS TRIGGERING THE ANIMATION - ****************/
  /*ALSO SETS THE TIMER. TIMER IS FOR THE SPEED OF EACH CHAR APPEARING - *********/
  void animateText() {
    displayText= "";
    timer = millis();
  }//animate Text



  //animate it
  void update() {
    if (!isFinished() && (millis() - timer) > wait) {
      displayText = texxt.substring(0, displayText.length()+1);
      timer = millis();
    }
  }//update

  //are both strings the same size?
  boolean isFinished() {
    return displayText.length() == texxt.length();
  }//isFinished


  ///////////////////////////////drawing functions

  //draws bg:

  void drawBg() {
    rectMode(CORNER);
    // noStroke();
    fill(bgColor);
    rect(bgPos.x, bgPos.y, 920, h);  //920 value should be w- where w is assigned a value 920
  }//drawBg




  void drawText() {
    textSize(32);
    fill(textColor);

    text(displayText, textPos.x, textPos.y, 650, 350);
  }//drawText
}//msgBox




String [] s = { 
  "", 
  "Feiceann sé liathróid dearg. Tugann sé cic dó.", 
  "Preabann an liathróid isteach sa sceach. Preabann an liathróid amach.", 
  "Tugann Cleite cic eile don liathróid. Preabann sé amach arís.", 
  "Cad atá sa sceach? Tá bosca sa sceach.  Oscail an bosca? *", 
  "Féachann Cleite Ollphéist!", 
  "Cén cineál Ollphéist? Leamháin mór! Ainmnigh an t-Ollphéist: [default Name 'Licht'] ", 
  "Tá cara nua ag Cleite! [Achievement!] ", 
  "Tá Cleite ar scoil.  Tá an rang seo leadránach! ", 
  "Tá cairde Cleite ag pleidhcíocht. 'AMADÁN!' arsa an múinteoir.", 
  " 'TAR ANSEO!'", 
  "'Ó Tá gach rud ar eolais ag Cleite, nach bhfuil a phaistí?'   ///[Níííííllll a Mhaistir...] ", 
  " B'fhéidir gur mhaith leatsa an rang a mhúineadh'", 
  "Nuair a tosaíonn Cleite ag scríobh, Ardaíonn an Máistir an chlár dubh. ", 
  "'Haw! Haw! Haw!'", 
  "Ní féidir le Chleite eitilt.  Is sióg gan sciathán é.", 
  "Teitheann Chleite ón rang.", 
  "Tá trua ag an leabharlannaí do Cleite. Tugann sí misneach dó.*        'Maith a bhuachail.  Brostaigh anois chuig an chead rang eile.", 
  "Rang eile: rang an claimh.[Tutorial  córas troda an cluiche.]", 
  "Tosaíonn sé easca go leoir.", 
  "Souish! [easca peasca] ", 
  "Deis é seo coras troda an cluiche a triail; ach luaith nó mall...", 
  "Craic!         'A Mháistir? Tharla sé arís dom...'  ", 
  "Tá brionglóid  ag Cleite.", 
  "Tá sé ag eitilt! (mini-game?)", 
  "Feiceann sé crann éagsúil ó na crainn eile. Crann le bláthanna mealltach.", 
  "Cad atá taobh thiar dos na bláthanna?", 
  "Ollphéist!* Ollphéist a stróiceann a sciathán uaidh. [Foreshadows true end of game boss]", 
  "Huc!  Dúisíonn Chleite go tobann.", 
  "Beidh Cleite all-raight; ach b'éigean dó sos a ghlacadh.", 
  "Tá cnag ar an doras tosaigh.*  Tá na daltaí eile gafa. 'Cleite, freagra an doras le do thoil.' ", 
  "Nuair a shroicheann Cleite an doras, stopann an cnagadh. (stopann ceol an cluiche, freisin)", 
  "Rogha ag Cleite (féach tríd an doras?  Éist leis an doras? Oscail an doras? Etc)", 
  "Má osclaíonn Cleite an doras, tagann an ceo isteach. Tá an Cailleach Liath sa ceo.", 
  "'Tá fáilte róthaim,' arsa an gCailleach.Tóg chuig an Máistir mé.", 
  "Déanann an Máistir agus an Cailleach comhairc aonar.", 
  "Buann an Cailleach ar", 
  "Tá uafás ar na Sióga. Teann Cleite i bhfolach.", 
  "Déanann an Cailleach na síoga a bhailiú", 
  "Rogha Cleite:  Fan i bhfolach ionsaigh an cailleach", 
  "Bailíonn Cleite a mhisneach", 
  "Ionsaíonn sé an cailleach", 
  "...", 
  "Deanann Cleite a ndíchal.", 
  "Ach tá sí i bhfad ró láidir dó.", 
  "Óró! Tá m'fhiacla agat! ", 
  "'Comhghairdeas. Tá draíocht iontu.  Ní féidir liom bua ort inniu...'", 
  "'Ach ní feicfidh tú do chairde arís!'", 
  "Titeann Cleite tríd poll san urlár.  Maith go raibh cara aige!", 
  "Tógann Licht síos go lách íad.", 
  "Seo tús an cluiche.", 
  "Dúshlán an cluiche: Éalú ón doinsiún. Dul go Tír Asleen (AKA: Realm of the Witch) agus a chairde a fuascailt ó 5 doinsiún an Chailleach. Bua ar an gcailleach.", 
  "                                                                                                                                                                                                                                                                 tá muid níos fearr ná seo.", 
  " ", 
  " ", 
  " ", 
  " "
};

int index = 0;


/* popup for new vocab.  There are different ways to integrate 
 integrate new vocab into the story.  Maybe they'll form some kind of mini
 game?  Or maybe they won't be part of the game at all.
 
 For now, let's just keep track of some of the 'new words' that 
 emerge from set pieces in the game. 
 
 ball
 red
 bushes
 garden
 investigate
 
 
 
 */


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

/*

 
 Explain the theory behind the onomatopaeia
 Intro game Notes and context i mBearla
 
 
 I rith an troid : Togha!  Maith!  Molaim thú!  Ann maith!  Íontach!
 Play for Ireland.
 
 Ainmnigh an Ollpheist.  default "Licht"
 Reitigh btn position + graphic.  Concept animation + bg transition
 
 sfx Preab!  Preab!
 
 Cúl sceal an Cailleach líath...
 
 insert deas/clé functionality?
 
 
 "How long is this thing?  grey Frame counter.
 
 */

