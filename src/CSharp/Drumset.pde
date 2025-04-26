// Assigned to Santhosh
//import processing.sound.*;
class Drumset {
 Button[] Drumbuttons = new Button[10];
 float dampener = -1;
  Drumset() {
  Drumbuttons[0] = new Button(33, 500, 73, 85, 25, "base", true, "playsNote", "drums", true);

  
 
  }
   void drumsRefresh() {
    Drumbuttons[0].display();
    Drumbuttons[0].hover(mouseX, mouseY);
    Drumbuttons[0].mousePressed(mouseX, mouseY);
   }
  
void keyPressed(){
 if(!pC3.isPlaying() && (key == 'q' || key == 'Q')){
      pC3.play();
      dampener -= 0.1;
}
}
void keyReleased(){
 if (key == 0 || keyCode == 96 || keyCode == 48){
    //snare.stop();
    }
}
void mousePressed(){

}
void mouseReleased(){
}
}
