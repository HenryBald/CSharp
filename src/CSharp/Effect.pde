//William
class Effect {
  AllPass allPass;
  Reverb reverb;
  Delay delay;
  float gainNum, whoop;
  SoundFile letsAffect;
  PApplet p;
  
  Effect(PApplet p) {
  this.p = p;
  allPass = new AllPass(p);
  reverb = new Reverb(p);
  delay = new Delay(p);
  gainNum = 0.1;
  whoop = 0.01;
  }
  
  void neededStuffOrSomething(){
    gainNum = norm(whoop, 460, 227);
    allPass.gain(gainNum);
  }
  
  void initiate(){
    if(soundPlaying != null){
      letsAffect = new SoundFile(p, soundPlaying);
      allPass.process(letsAffect);
    }
  }
  void removeEffect(){
    allPass.stop();
    reverb.stop();
    delay.stop();
  }
}
