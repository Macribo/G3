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

