

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

