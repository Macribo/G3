


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

