//William
class eGuitar {
  Button[] egbuttons = new Button[20];
  float dampener = 1;
  
  eGuitar() {
    egbuttons[0] = new Button(180, 500, 73, 85, 25, "E2", true, "playsNote", "eGuitar", true);
  }
  void neededStuffOrSomething() {
    egbuttons[0].display();
    egbuttons[0].hover(mouseX, mouseY);
    egbuttons[0].mousePressed(mouseX, mouseY);
    egE2.amp(dampener);
  }
  void keyPressed(){
    if (!egE2.isPlaying() && (key == 'e' || key == 'E')){
      egE2.play();
      dampener -= 0.1;
      }
  }
  void keyReleased(){
   if (egE2.isPlaying() && (key == 'e' || key == 'E')){
      egE2.stop();
      dampener = 1;
      }
  }
  void mousePressed(){
    if(!egE2.isPlaying() && egbuttons[0].isClicked){
      egE2.play();
      dampener -= 0.01;
    }
  }
  void mouseReleased(){
    if(!egbuttons[0].isClicked || !mousePressed){
      egE2.stop();
      dampener = 1;
    }
  }
}
