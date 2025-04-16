// Henry Baldwin
class Metronome {
  int bpm;
  SoundFile tick;
  Timer metTimer;
  PImage metImage;

  Metronome() {
    metImage = loadImage("Metronome.png");
  }
  void display () {
    image(metImage, width/2, height/2);
  }
  void setBPM() {
  }
  void play() {
  }
  void stop() {
  }
}
