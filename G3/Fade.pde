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

