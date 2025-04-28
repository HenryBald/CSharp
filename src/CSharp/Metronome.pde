// Henry Baldwin
class Metronome {
  int bpm;
  SoundFile tick;
  Timer metTimer;
  PImage metImage;

  Metronome() {
<<<<<<< HEAD
    metImage = loadImage("Metronome.png");
    metImage.resize(162,140);
=======
    x = width/2;
    y = 71;
    w = 162;
    h = 140;
    metImage = loadImage("Metronome.png");
    metImage.resize(w, h);
>>>>>>> 735221f5be247fcc4752d206c986049ca63c8a85
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
