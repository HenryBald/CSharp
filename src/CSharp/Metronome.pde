// Henry Baldwin
class Metronome {
  int bpm;
  SoundFile tick;
  Timer metTimer;
  PImage metImage;

  Metronome() {
    metImage = loadImage("Metronome.png");
    metImage.resize(162,140);
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
