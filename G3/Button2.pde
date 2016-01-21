
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

