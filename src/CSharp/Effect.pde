//William
class Effect {
Minim maybe;
float gainNum;
  Effect() {
    maybe = new Minim(this);
    controls = maybe.getLineOut(Minim.MONO); //<>//
  } //<>//
  
  void effectValues(){
    gainNum = map(scy2, 460, 227, -2.0, 8.0);
  }
  
  void initiate(){
    controls.setGain(gainNum);
  }
  void removeEffect(){
  }
}
