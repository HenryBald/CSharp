// Henry Baldwin
class Metronome {
  int bpm;
  SoundFile tick;
  Timer metTimer;
  PImage metImage;

  Metronome() {
    metImage = loadImage("Metronome.png");
    metImage.resize(162,140);

    x = width/2;
    y = 71;
    w = 162;
    h = 140;
    metImage = loadImage("metronome.png");
    metImage.resize(w, h);
  }


  boolean hoverDown(int mx, int my) {
    if (mx > x-(w-318)/2 && mx < x+(w+45)/2 && my > y-(h-180)/2 && my < y+(h-35)/2) {
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
  void display () {
    image(metImage, width/2, 71);
  }
  void setBPM() {
  }
  void play() {
  }
  void stop() {
  }
}
