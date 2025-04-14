//Assigned to William
String note;
//SoundFile note;
int distortion, gainS, reverbS, delayS;
AllPass gain;
Reverb reverb;
Delay delay;
class Effect extends CSharp {
  Effect(String note) {
    note = this.note;
  }
  void apply(){
    distortion = this.distortion;
    gain = this.gain;
    reverb = this.reverb;
  }
  void removeEffect(){
    gain.stop();
    reverb.stop();
    delay.stop();
  }
}
