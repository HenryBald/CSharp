// Henry Baldwin
class Metronome {
  int bpm, x, y, w, h;
  Timer metTimer;
  PImage metImage;
  boolean onUp, onDown, isClickedUp;

  Metronome() {
    x = width/2;
    y = 71;
    w = 162;
    h = 140;
    bpm = 120;
    metImage = loadImage("Metronome.png");  }

  boolean hoverUp(int mx, int my) {
    if (mx > x-(w-258)/2 && mx < x+(w-13)/2 && my > y-(h-180)/2 && my < y+(h-35)/2) {
      onUp = true;
      return onUp;
    } else {
      onUp = false;
      return onUp;
    }
  }

  boolean hoverDown(int mx, int my) {
    if (mx > x-(w-319)/2 && mx < x+(w+47)/2 && my > y-(h-180)/2 && my < y+(h-35)/2) {
      onDown = true;
      return onDown;
    } else {
      onDown = false;
      return onDown;
    }
  }

  void display () {
    metImage.resize(w,h);
    image(metImage, x, 71);
    if (onUp) {
      if (mousePressed) {
        bpm+=1;
        mousePressed=false;
      }
    }
    if (onDown) {
      if (mousePressed) {
        bpm-=1;
        mousePressed=false;
      }
    }
    text(bpm, x+w/2, y+h/2);
  }

  void play() {
    
  }
  void stop() {
  }
}
