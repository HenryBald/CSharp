//William
AllPass gain;
Reverb reverb;
Delay delay;
class Effect extends CSharp {
  Effect() {
    gain = new AllPass(this);
  }
  void apply(){
    float gainNum = norm(scy2, 440, 190);
    gain.gain(gainNum);
    //gain = this.gain;
    reverb = this.reverb;
    delay = this.delay;
  }
  void neededStuffOrSomething(){
    if(soundPlaying != null){
      gain.process(soundPlaying);
    }
  }
  void removeEffect(){
    gain.stop();
    reverb.stop();
    delay.stop();
  }
}
