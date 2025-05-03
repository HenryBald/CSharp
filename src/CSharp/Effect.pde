//William
class Effect {
  AllPass allPass;
  
  Effect(PApplet parent) {
    allPass = new AllPass(parent);
  }
   //<>//
  void applyEffect(float scy2){
    float gainNum = norm(scy2, 460, 227);
    allPass.gain(gainNum);
    allPass.process(Sound.outputDevice(1));
    Sound.list();
  }
  
  void removeEffect(){
    allPass.stop();
  }
}
