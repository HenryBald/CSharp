//William
class Effect {
AudioOutput out;
Minim maybe;
float gainNum;
  Effect() {
    maybe = new Minim(this);
    out = maybe.getLineOut(Minim.MONO); //<>//
  }
  
  void effectValues(){
    gainNum = map(scy2, 460, 227, -2.0, 8.0);
  }
  
  void initiate(){
    out.setGain(gainNum);
  }
  void removeEffect(){
  }
}
