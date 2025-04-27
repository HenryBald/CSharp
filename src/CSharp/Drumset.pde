// Assigned to Santhosh
//import processing.sound.*;
class Drumset {
 Button[] Drumbuttons = new Button[10];
 float dampener = -1;
  Drumset() {
  Drumbuttons[0] = new Button(370, 315, 100, 100, 25, "snare", true, "playsNote", "drums", true);

  
 
  }
   void drumsRefresh() {
    Drumbuttons[0].display();
    Drumbuttons[0].hover(mouseX, mouseY);
    Drumbuttons[0].mousePressed(mouseX, mouseY);
    dS1.amp(dampener);

   }
  
void keyPressed(){
 if(!dS1.isPlaying() && (key == 'q' || key == 'Q')){
      dS1.play();
      dampener -= 0.1;
}
}
void keyReleased(){
   if(dS1.isPlaying() && (key == 'q' || key == 'Q')){
      dS1.stop();
      dampener = 1;
    }
}
void mousePressed(){
    if(!dS1.isPlaying() && Drumbuttons[0].isClicked){ 
      dS1.play();
      dampener -= 0.01;
}
}
void mouseReleased(){
  if(!Drumbuttons[0].isClicked || !mousePressed){
      dS1.stop();
      dampener = 1;
    }
}
}
