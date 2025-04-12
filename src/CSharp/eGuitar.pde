//William
public class eGuitar extends PApplet {
  Button[] egbuttons = new Button[20];
  
  eGuitar() {
  egbuttons[0] = new Button(180, 500, 73, 85, 25, "E2", true, "playsNote", "eGuitar", true);
  }
void keyPressed(){
  egbuttons[0].display();
  if (!egE2.isPlaying() && (key == 'e' || key == 'E')){
    egE2.play();
    println("egE2 played");
    }
}
void keyReleased(){
 if (egE2.isPlaying() && (key == 'e' || key == 'E')){
    egE2.stop();
    println("egE2 stopped");
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
