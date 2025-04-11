//William
class eGuitar {
  Button[] egbuttons = new Button[20];
  
  eGuitar() {
  egbuttons[0] = new Button(180, 500, 73, 85, 25, "E2", true, "playsNote", "eGuitar", true);
  }
void keyTyped(){
  egbuttons[0].display();
  if (!egE2.isPlaying() && (key == 'e' || key == 'E')){
    egE2.play();
    }
}
void keyReleased(){
 if (key == 'e' || key == 'E'){
    egE2.stop();
    }
}
void mousePressed(){
  egbuttons[0].hover(mouseX, mouseY);
  egbuttons[0].mousePressed(mouseX, mouseY);
  if(!egE2.isPlaying() && egbuttons[0].isClicked){
    egE2.play();
  }
}
void mouseReleased(){
  if(!egbuttons[0].isClicked || !mousePressed){
    egE2.stop();
  }
}
}
