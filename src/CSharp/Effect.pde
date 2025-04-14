//Assigned to William
String note;
int distortion, gainS, reverbS, delayS;
AllPass gain;
Reverb reverb;
Delay delay;
class Effect extends CSharp {
  Effect() {
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
