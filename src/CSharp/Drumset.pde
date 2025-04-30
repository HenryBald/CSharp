// Assigned to Santhosh
//import processing.sound.*;
class Drumset {
 Button[] Drumbuttons = new Button[12];
 float dampener = -1;
  Drumset() {
  Drumbuttons[0] = new Button(370, 315, 100, 100, 25, "snare", true, "playsNote", "drums", true);
  Drumbuttons[1] = new Button(517, 315, 160, 160, 25, "base", true, "playsNote", "drums", true);
  Drumbuttons[2] = new Button(370, 125, 180, 75, 25, "crash symbol", true, "playsNote", "drums", true);
  Drumbuttons[3] = new Button(800, 265, 50, 35, 10, "triangle", true, "playsNote", "drums", true);
  Drumbuttons[4] = new Button(710, 280, 35, 25, 10, "cowbell", true, "playsNote", "drums", true);
  Drumbuttons[5] = new Button(290, 220, 150, 50, 25, "hi-hat", true, "playsNote", "drums", true);
  Drumbuttons[6] = new Button(665, 138, 180, 50, 25, "Ride Cymbal", true, "playsNote", "drums", true);
  Drumbuttons[7] = new Button(0, 0, 35, 25, 25, "", true, "playsNote", "drums", true);
  Drumbuttons[8] = new Button(0, 0, 35, 25, 25, "", true, "playsNote", "drums", true);
  Drumbuttons[9] = new Button(655, 330, 75, 110, 25, "floorTom", true, "playsNote", "drums", true);
  Drumbuttons[10] = new Button(435, 200, 110, 55, 25, "highTom", true, "playsNote", "drums", true);
  Drumbuttons[11] = new Button(590, 200, 110, 55, 25, "lowTom", true, "playsNote", "drums", true);
  
 
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
    Drumbuttons[5].display();
    Drumbuttons[5].hover(mouseX, mouseY);
    Drumbuttons[5].mousePressed(mouseX, mouseY);
    dH6.amp(dampener);
    Drumbuttons[6].display();
    Drumbuttons[6].hover(mouseX, mouseY);
    Drumbuttons[6].mousePressed(mouseX, mouseY);
    dR7.amp(dampener);
    Drumbuttons[7].display();
    Drumbuttons[7].hover(mouseX, mouseY);
    Drumbuttons[7].mousePressed(mouseX, mouseY);
    dR8.amp(dampener);
    Drumbuttons[8].display();
    Drumbuttons[8].hover(mouseX, mouseY);
    Drumbuttons[8].mousePressed(mouseX, mouseY);
    dS9.amp(dampener);
    Drumbuttons[9].display();
    Drumbuttons[9].hover(mouseX, mouseY);
    Drumbuttons[9].mousePressed(mouseX, mouseY);
    dF0.amp(dampener);
    Drumbuttons[10].display();
    Drumbuttons[10].hover(mouseX, mouseY);
    Drumbuttons[10].mousePressed(mouseX, mouseY);
    dH1.amp(dampener);
    Drumbuttons[11].display();
    Drumbuttons[11].hover(mouseX, mouseY);
    Drumbuttons[11].mousePressed(mouseX, mouseY);
    dL2.amp(dampener);
    

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
if(!dH6.isPlaying() && (key == 'y' || key == 'Y')){
      dH6.play();
      dampener -= 0.1;
}
if(!dR7.isPlaying() && (key == 'u' || key == 'U')){
      dR7.play();
      dampener -= 0.1;
}
if(!dR8.isPlaying() && (key == '6' || key == '^')){
      dR8.play();
      dampener -= 0.1;
}
if(!dS9.isPlaying() && (key == '7' || key == '&')){
      dS9.play();
      dampener -= 0.1;
}
if(!dF0.isPlaying() && (key == 'i' || key == 'I')){
      dF0.play();
      dampener -= 0.1;
}
if(!dH1.isPlaying() && (key == 'o' || key == 'O')){
      dH1.play();
      dampener -= 0.1;
}
if(!dL2.isPlaying() && (key == 'p' || key == 'P')){
      dL2.play();
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
    if(dH6.isPlaying() && (key == 'y' || key == 'Y')){
      dH6.stop();
      dampener = 1;
    }
    if(dR7.isPlaying() && (key == 'u' || key == 'U')){
      dR7.stop();
      dampener = 1;
    }
    if(dR8.isPlaying() && (key == '6' || key == '^')){
      dR8.stop();
      dampener = 1;
    }
    if(dS9.isPlaying() && (key == '7' || key == '&')){
      dS9.stop();
      dampener = 1;
    }
    if(dF0.isPlaying() && (key == 'i' || key == 'I')){
      dF0.stop();
      dampener = 1;
    }
    if(dH1.isPlaying() && (key == 'o' || key == 'O')){
      dH1.stop();
      dampener = 1;
    }
    if(dL2.isPlaying() && (key == 'p' || key == 'P')){
      dL2.stop();
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
if(!dH6.isPlaying() && Drumbuttons[5].isClicked){ 
      dH6.play();
      dampener -= 0.01;
}
if(!dR7.isPlaying() && Drumbuttons[6].isClicked){ 
      dR7.play();
      dampener -= 0.01;
}
if(!dF0.isPlaying() && Drumbuttons[9].isClicked){ 
      dF0.play();
      dampener -= 0.01;
}
if(!dH1.isPlaying() && Drumbuttons[10].isClicked){ 
      dH1.play();
      dampener -= 0.01;
}
if(!dL2.isPlaying() && Drumbuttons[11].isClicked){ 
      dL2.play();
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
    if(!Drumbuttons[5].isClicked || !mousePressed){
      dH6.stop();
      dampener = 1;
    }
    if(!Drumbuttons[6].isClicked || !mousePressed){
      dR7.stop();
      dampener = 1;
    }
     if(!Drumbuttons[9].isClicked || !mousePressed){
      dF0.stop();
      dampener = 1;
    }
     if(!Drumbuttons[10].isClicked || !mousePressed){
      dH1.stop();
      dampener = 1;
    }
     if(!Drumbuttons[11].isClicked || !mousePressed){
      dL2.stop();
      dampener = 1;
    }
    
}
}
