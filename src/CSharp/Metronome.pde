// Henry Baldwin
class Metronome {
  int bpm, x, y, w, h;
  SoundFile tick;
  Timer metTimer;
  PImage metImage;
  boolean onUp, onDown;

  Metronome() {
    x = width/2;
    y = 71;
    w = 162;
    h = 140;
    bpm = 120;
    metImage = loadImage("metronome.png");
    metImage.resize(w, h);
  }

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
    image(metImage, x, 71);
    if (onUp) {
      rect(500, 500, 500, 500);
    }
    if (onDown) {
      rect(250, 250, 250, 250);
    }
    text(bpm, x+w/2,y+h/2);
  }


  void setBPM() {
  }
  void play() {
  }
  void stop() {
  }
}
