

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

