// Assigned to Santhosh
//import processing.sound.*;
class Drumset {
 Button[] Drumbuttons = new Button[10];
 float dampener = -1;
  Drumset() {
  Drumbuttons[0] = new Button(370, 315, 100, 100, 25, "snare", true, "playsNote", "drums", true);
  Drumbuttons[1] = new Button(517, 315, 160, 160, 25, "base", true, "playsNote", "drums", true);
  Drumbuttons[2] = new Button(370, 125, 180, 75, 25, "crash symbol", true, "playsNote", "drums", true);
  Drumbuttons[3] = new Button(800, 265, 50, 35, 25, "triangle", true, "playsNote", "drums", true);
  Drumbuttons[4] = new Button(710, 280, 35, 25, 25, "cowbell", true, "playsNote", "drums", true);

  
 
  }
   void drumsRefresh() {
    Drumbuttons[0].display();
    Drumbuttons[0].hover(mouseX, mouseY);
    Drumbuttons[0].mousePressed(mouseX, mouseY);
    dS1.amp(dampener);
    Drumbuttons[1].display();
    Drumbuttons[1].hover(mouseX, mouseY);
    Drumbuttons[1].mousePressed(mouseX, mouseY);
    dB2.amp(dampener);
    Drumbuttons[2].display();
    Drumbuttons[2].hover(mouseX, mouseY);
    Drumbuttons[2].mousePressed(mouseX, mouseY);
    dC3.amp(dampener);
    Drumbuttons[3].display();
    Drumbuttons[3].hover(mouseX, mouseY);
    Drumbuttons[3].mousePressed(mouseX, mouseY);
    dT4.amp(dampener);
    Drumbuttons[4].display();
    Drumbuttons[4].hover(mouseX, mouseY);
    Drumbuttons[4].mousePressed(mouseX, mouseY);
    dC5.amp(dampener);

   }
  
void keyPressed(){
 if(!dS1.isPlaying() && (key == 'q' || key == 'Q')){
      dS1.play();
      dampener -= 0.1;
}
if(!dB2.isPlaying() && (key == 'w' || key == 'W')){
      dB2.play();
      dampener -= 0.1;
}
if(!dC3.isPlaying() && (key == 'e' || key == 'E')){
      dC3.play();
      dampener -= 0.1;
}
if(!dT4.isPlaying() && (key == 'r' || key == 'R')){
      dT4.play();
      dampener -= 0.1;
}
if(!dC5.isPlaying() && (key == 't' || key == 'T')){
      dC5.play();
      dampener -= 0.1;
}
}
void keyReleased(){
   if(dS1.isPlaying() && (key == 'q' || key == 'Q')){
      dS1.stop();
      dampener = 1;
    }
     if(dB2.isPlaying() && (key == 'w' || key == 'W')){
      dB2.stop();
      dampener = 1;
    }
     if(dC3.isPlaying() && (key == 'e' || key == 'E')){
      dC3.stop();
      dampener = 1;
    }
     if(dT4.isPlaying() && (key == 'r' || key == 'R')){
      dT4.stop();
      dampener = 1;
    }
     if(dC5.isPlaying() && (key == 't' || key == 'T')){
      dC5.stop();
      dampener = 1;
    }
}
void mousePressed(){
    if(!dS1.isPlaying() && Drumbuttons[0].isClicked){ 
      dS1.play();
      dampener -= 0.01;
}
 if(!dB2.isPlaying() && Drumbuttons[1].isClicked){ 
      dB2.play();
      dampener -= 0.01;
}
 if(!dC3.isPlaying() && Drumbuttons[2].isClicked){ 
      dC3.play();
      dampener -= 0.01;
}
 if(!dT4.isPlaying() && Drumbuttons[3].isClicked){ 
      dT4.play();
      dampener -= 0.01;
}
 if(!dC5.isPlaying() && Drumbuttons[4].isClicked){ 
      dC5.play();
      dampener -= 0.01;
}
}
void mouseReleased(){
  if(!Drumbuttons[0].isClicked || !mousePressed){
      dS1.stop();
      dampener = 1;
    }
     if(!Drumbuttons[1].isClicked || !mousePressed){
      dB2.stop();
      dampener = 1;
    }
      if(!Drumbuttons[2].isClicked || !mousePressed){
      dC3.stop();
      dampener = 1;
    }
      if(!Drumbuttons[3].isClicked || !mousePressed){
      dT4.stop();
      dampener = 1;
    }
      if(!Drumbuttons[4].isClicked || !mousePressed){
      dC5.stop();
      dampener = 1;
    }
    
}
}
