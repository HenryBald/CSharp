//William
AllPass gain;
Reverb reverb;
Delay delay;
class Effect extends CSharp {
  Effect() {
    
  }
  void apply(){
    float gainNum = norm(scy2, 440, 190);
    gain.gain(gainNum);
    //gain = this.gain;
    reverb = this.reverb;
    delay = this.delay;
  }
  void removeEffect(){
    gain.stop();
    reverb.stop();
    delay.stop();
  }
}
