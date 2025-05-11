//William,Santhosh
class eGuitar {
  Button[] egbuttons = new Button[20];
  float dampener = 1;
  
  eGuitar() {
    egbuttons[0] = new Button(180, 500, 73, 85, 25, "E2", true, "playsNote", "eGuitar", true); //<>//
    egbuttons[1] = new Button(255, 500, 73, 85, 25, "F2", true, "playsNote", "eGuitar", true);
    egbuttons[2] = new Button(330, 500, 73, 85, 25, "G2", true, "playsNote", "eGuitar", true);
    egbuttons[3] = new Button(405, 500, 73, 85, 25, "A2", true, "playsNote", "eGuitar", true);
    egbuttons[4] = new Button(480, 500, 73, 85, 25, "B2", true, "playsNote", "eGuitar", true);
    egbuttons[5] = new Button(555, 500, 73, 85, 25, "C3", true, "playsNote", "eGuitar", true);
    egbuttons[6] = new Button(620, 500, 73, 85, 25, "D3", true, "playsNote", "eGuitar", true);
    egbuttons[7] = new Button(695, 500, 73, 85, 25, "E3", true, "playsNote", "eGuitar", true);
    egbuttons[8] = new Button(770, 500, 73, 85, 25, "F3", true, "playsNote", "eGuitar", true);
    egbuttons[9] = new Button(845, 500, 73, 85, 25, "G3", true, "playsNote", "eGuitar", true);
    egbuttons[10] = new Button(920, 500, 73, 85, 25, "A3", true, "playsNote", "eGuitar", true);
    egbuttons[11] = new Button(995, 500, 73, 85, 25, "B3", true, "playsNote", "eGuitar", true);
    egbuttons[12] = new Button(960, 380, 67, 170, 25, "Bb\nA#", true, "playsNote", "eGuitar", true);
    egbuttons[13] = new Button(885, 380, 67, 170, 25, "Ab\nG#", true, "playsNote", "eGuitar", true);
    egbuttons[14] = new Button(810, 380, 67, 170, 25, "Gb\nF#", true, "playsNote", "eGuitar", true);
    egbuttons[15] = new Button(650, 380, 67, 170, 25, "Eb\nD#", true, "playsNote", "eGuitar", true);
    egbuttons[16] = new Button(575, 380, 67, 170, 25, "Db\nC#", true, "playsNote", "eGuitar", true);
    egbuttons[17] = new Button(435, 380, 67, 170, 25, "Bb2\n A#2", true, "playsNote", "eGuitar", true);
    egbuttons[18] = new Button(365, 380, 67, 170, 25, "Ab2\nG#2", true, "playsNote", "eGuitar", true);
    egbuttons[19] = new Button(290, 380, 67, 170, 25, "Gb2\nF#2", true, "playsNote", "eGuitar", true);

  }
  void neededStuffOrSomething() {
    egbuttons[0].display();
    egbuttons[0].hover(mouseX, mouseY);
    egbuttons[0].mousePressed(mouseX, mouseY);
    egE2.amp(dampener);
    egbuttons[1].display();
    egbuttons[1].hover(mouseX, mouseY);
    egbuttons[1].mousePressed(mouseX, mouseY);
    egF2.amp(dampener);
    egbuttons[2].display();
    egbuttons[2].hover(mouseX, mouseY);
    egbuttons[2].mousePressed(mouseX, mouseY);
    egG2.amp(dampener);
    egbuttons[3].display();
    egbuttons[3].hover(mouseX, mouseY);
    egbuttons[3].mousePressed(mouseX, mouseY);
    egA2.amp(dampener);
    egbuttons[4].display();
    egbuttons[4].hover(mouseX, mouseY);
    egbuttons[4].mousePressed(mouseX, mouseY);
    egB2.amp(dampener);
    egbuttons[5].display();
    egbuttons[5].hover(mouseX, mouseY);
    egbuttons[5].mousePressed(mouseX, mouseY);
    egC3.amp(dampener);
    egbuttons[6].display();
    egbuttons[6].hover(mouseX, mouseY);
    egbuttons[6].mousePressed(mouseX, mouseY);
    egD3.amp(dampener);
    egbuttons[7].display();
    egbuttons[7].hover(mouseX, mouseY);
    egbuttons[7].mousePressed(mouseX, mouseY);
    egE3.amp(dampener);
    egbuttons[8].display();
    egbuttons[8].hover(mouseX, mouseY);
    egbuttons[8].mousePressed(mouseX, mouseY);
    egF3.amp(dampener);
    egbuttons[9].display();
    egbuttons[9].hover(mouseX, mouseY);
    egbuttons[9].mousePressed(mouseX, mouseY);
    egG3.amp(dampener);
    egbuttons[10].display();
    egbuttons[10].hover(mouseX, mouseY);
    egbuttons[10].mousePressed(mouseX, mouseY);
    egA3.amp(dampener);
    egbuttons[11].display();
    egbuttons[11].hover(mouseX, mouseY);
    egbuttons[11].mousePressed(mouseX, mouseY);
    egB3.amp(dampener);
    egbuttons[12].display();
    egbuttons[12].hover(mouseX, mouseY);
    egbuttons[12].mousePressed(mouseX, mouseY);
    egBb3.amp(dampener);
    egbuttons[13].display();
    egbuttons[13].hover(mouseX, mouseY);
    egbuttons[13].mousePressed(mouseX, mouseY);
    egGs3.amp(dampener);
    egbuttons[14].display();
    egbuttons[14].hover(mouseX, mouseY);
    egbuttons[14].mousePressed(mouseX, mouseY);
    egFs3.amp(dampener);
    egbuttons[15].display();
    egbuttons[15].hover(mouseX, mouseY);
    egbuttons[15].mousePressed(mouseX, mouseY);
    egEb3.amp(dampener);
    egbuttons[16].display();
    egbuttons[16].hover(mouseX, mouseY);
    egbuttons[16].mousePressed(mouseX, mouseY);
    egCs3.amp(dampener);
    egbuttons[17].display();
    egbuttons[17].hover(mouseX, mouseY);
    egbuttons[17].mousePressed(mouseX, mouseY);
    egBb2.amp(dampener);
    egbuttons[18].display();
    egbuttons[18].hover(mouseX, mouseY);
    egbuttons[18].mousePressed(mouseX, mouseY);
    egGs2.amp(dampener);
    egbuttons[19].display();
    egbuttons[19].hover(mouseX, mouseY);
    egbuttons[19].mousePressed(mouseX, mouseY);
    egFs2.amp(dampener);
  }
  void keyPressed(){
    if (!egE2.isPlaying() && (key == 'e' || key == 'E')){
      egE2.play();
      dampener -= 0.1;
      }
     else if(!egF2.isPlaying() && (key == 'r' || key == 'R')){
      egF2.play();
      dampener -= 0.1;
      }
      else if(!egG2.isPlaying() && (key == 't' || key == 'T')){
      egG2.play();
      dampener -= 0.1;
      }
      else if(!egA2.isPlaying() && (key == 'y' || key == 'Y')){
      egA2.play();
      dampener -= 0.1;
      }
      else if(!egB2.isPlaying() && (key == 'u' || key == 'U')){
      egB2.play();
      dampener -= 0.1;
      }
      else if(!egC3.isPlaying() && (key == 'i' || key == 'I')){
      egC3.play();
      dampener -= 0.1;
      }
      else if(!egD3.isPlaying() && (key == 'o' || key == 'O')){
      egD3.play();
      dampener -= 0.1;
      }
      else if(!egE3.isPlaying() && (key == 'p' || key == 'P')){
      egE3.play();
      dampener -= 0.1;
      }
      else if(!egF3.isPlaying() && (key == '[' || key == '{')){
      egF3.play();
      dampener -= 0.1;
      }
      else if(!egG3.isPlaying() && (key == ']' || key == '}')){
      egG3.play();
      dampener -= 0.1;
      }
      else if(!egA3.isPlaying() && (key == 'q' || key == 'Q')){
      egA3.play();
      dampener -= 0.1;
      }
      else if(!egB3.isPlaying() && (key == 'w' || key == 'W')){
      egB3.play();
      dampener -= 0.1;
      }
      else if(!egBb3.isPlaying() && (key == '2' || key == '@')){
      egBb3.play();
      dampener -= 0.1;
      }
      else if(!egFs3.isPlaying() && (key == '+'|| key == '=')){
      egFs3.play();
      dampener -= 0.1;
      }
       else if(!egGs3.isPlaying() && (key == '1'|| key == '!')){
      egGs3.play();
      dampener -= 0.1;
      }
        else if(!egEb3.isPlaying() && (key == '0'|| key == ')')){
      egEb3.play();
      dampener -= 0.1;
      }
        else if(!egCs3.isPlaying() && (key == '9'|| key == '(')){
      egCs3.play();
      dampener -= 0.1;
      }
        else if(!egBb2.isPlaying() && (key == '7'|| key == '&')){
      egBb2.play();
      dampener -= 0.1;
      }
         else if(!egGs2.isPlaying() && (key == '6'|| key == '^')){
      egGs2.play();
      dampener -= 0.1;
      }
         else if(!egFs2.isPlaying() && (key == '5'|| key == '%')){
      egFs2.play();
      dampener -= 0.1;
      }
  }
  void keyReleased(){
   if (egE2.isPlaying() && (key == 'e' || key == 'E')){
      egE2.stop();
      dampener = 1;
      }
   else if(egF2.isPlaying() && (key == 'r' || key == 'R')){
      egF2.stop();
      dampener = 1;
      }
   else if(egG2.isPlaying() && (key == 't' || key == 'T')){
      egG2.stop();
      dampener = 1;
      }
   else if(egA2.isPlaying() && (key == 'y' || key == 'Y')){
      egA2.stop();
      dampener = 1;
      }
   else if(egB2.isPlaying() && (key == 'u' || key == 'U')){
      egB2.stop();
      dampener = 1;
      }
   else if(egC3.isPlaying() && (key == 'i' || key == 'I')){
      egC3.stop();
      dampener = 1;
      }
   else if(egD3.isPlaying() && (key == 'o' || key == 'O')){
      egD3.stop();
      dampener = 1;
      }
   else if(egE3.isPlaying() && (key == 'p' || key == 'P')){
      egE3.stop();
      dampener = 1;
      }
   else if(egF3.isPlaying() && (key == '[')){
      egF3.stop();
      dampener = 1;
      }
   else if(egG3.isPlaying() && (key == ']')){
      egG3.stop();
      dampener = 1;
      }
    else if(egA3.isPlaying() && (key == 'q' || key == 'Q')){
      egA3.stop();
      dampener = 1;
      }
      else if(egB3.isPlaying() && (key == 'w' || key == 'W')){
      egB3.stop();
      dampener = 1;
      }
    else if(egBb3.isPlaying() && (key == '2' || key == '@')){
      egBb3.stop();
      dampener = 1;
      }
    else if(egGs3.isPlaying() && (key == '1' || key == '!')){
      egGs3.stop();
      dampener = 1;
      }
      else if(egEb3.isPlaying() && (key == '0' || key == ')')){
      egEb3.stop();
      dampener = 1;
      }
       else if(egCs3.isPlaying() && (key == '9' || key == '(')){
      egCs3.stop();
      dampener = 1;
      }
       else if(egBb2.isPlaying() && (key == '7' || key == '&')){
      egBb2.stop();
      dampener = 1;
      }
         else if(egGs2.isPlaying() && (key == '6' || key == '^')){
      egGs2.stop();
      dampener = 1;
      }
         else if(egFs2.isPlaying() && (key == '5' || key == '%')){
      egFs2.stop();
      dampener = 1;
      }
  }
  void mousePressed(){
    if(!egE2.isPlaying() && egbuttons[0].isClicked){
      egE2.play();
      dampener -= 0.01;
    }
    else if(!egF2.isPlaying() && egbuttons[1].isClicked){
      egF2.play();
      dampener -= 0.01;
    }
     else if(!egG2.isPlaying() && egbuttons[2].isClicked){
      egG2.play();
      dampener -= 0.01;
    }
    else if(!egA2.isPlaying() && egbuttons[3].isClicked){
      egA2.play();
      dampener -= 0.01;
      soundPlaying = egA2;
    }
    else if(!egB2.isPlaying() && egbuttons[4].isClicked){
      egB2.play();
      dampener -= 0.01;
    }
    else if(!egC3.isPlaying() && egbuttons[5].isClicked){ 
      egC3.play();
      dampener -= 0.01;
    }
    else if(!egC3.isPlaying() && egbuttons[5].isClicked){ 
      egC3.play();
      dampener -= 0.01;
    }
    else if(!egD3.isPlaying() && egbuttons[6].isClicked){ 
      egD3.play();
      dampener -= 0.01;
    }
    else if(!egE3.isPlaying() && egbuttons[7].isClicked){ 
      egE3.play();
      dampener -= 0.01;
    }
     else if(!egF3.isPlaying() && egbuttons[8].isClicked){ 
      egF3.play();
      dampener -= 0.01;
    }
    else if(!egG3.isPlaying() && egbuttons[9].isClicked){ 
      egG3.play();
      dampener -= 0.01;
    }
    else if(!egA3.isPlaying() && egbuttons[10].isClicked){ 
      egA3.play();
      dampener -= 0.01;
    }
    else if(!egB3.isPlaying() && egbuttons[11].isClicked){ 
      egB3.play();
      dampener -= 0.01;
    }
    else if(!egBb3.isPlaying() && egbuttons[12].isClicked){ 
      egBb3.play();
      dampener -= 0.01;
    }
     else if(!egGs3.isPlaying() && egbuttons[13].isClicked){ 
      egGs3.play();
      dampener -= 0.01;
    }
     else if(!egFs3.isPlaying() && egbuttons[14].isClicked){ 
      egFs3.play();
      dampener -= 0.01;
    }
    else if(!egEb3.isPlaying() && egbuttons[15].isClicked){ 
      egEb3.play();
      dampener -= 0.01;
    }
     else if(!egCs3.isPlaying() && egbuttons[16].isClicked){ 
      egCs3.play();
      dampener -= 0.01;
    }
     else if(!egBb2.isPlaying() && egbuttons[17].isClicked){ 
      egBb2.play();
      dampener -= 0.01;
    }
      else if(!egGs2.isPlaying() && egbuttons[18].isClicked){ 
      egGs2.play();
      dampener -= 0.01;
    } 
    else if(!egFs2.isPlaying() && egbuttons[19].isClicked){ 
      egFs2.play();
      dampener -= 0.01;
    }

  }
  void mouseReleased(){
    if(!egbuttons[0].isClicked || !mousePressed){
      egE2.stop();
      dampener = 1;
    }
    if(!egbuttons[1].isClicked || !mousePressed){
      egF2.stop();
      dampener = 1;
    }
    if(!egbuttons[2].isClicked || !mousePressed){
      egG2.stop();
      dampener = 1;
    }
    if(!egbuttons[3].isClicked || !mousePressed){
      egA2.stop();
      dampener = 1;
    }
    if(!egbuttons[4].isClicked || !mousePressed){
      egB2.stop();
      dampener = 1;
    }
    if(!egbuttons[5].isClicked || !mousePressed){
      egC3.stop();
      dampener = 1;
    }
     if(!egbuttons[6].isClicked || !mousePressed){
      egD3.stop();
      dampener = 1;
    }
    if(!egbuttons[7].isClicked || !mousePressed){
      egE3.stop();
      dampener = 1;
    }
    if(!egbuttons[8].isClicked || !mousePressed){
      egF3.stop();
      dampener = 1;
    }
    if(!egbuttons[9].isClicked || !mousePressed){
      egG3.stop();
      dampener = 1;
    }
    if(!egbuttons[10].isClicked || !mousePressed){
      egA3.stop();
      dampener = 1;
   }
   if(!egbuttons[11].isClicked || !mousePressed){
      egB3.stop();
      dampener = 1;
   } 
   if(!egbuttons[12].isClicked || !mousePressed){
      egBb3.stop();
      dampener = 1;
   }
    if(!egbuttons[13].isClicked || !mousePressed){
      egGs3.stop();
      dampener = 1;
   }
    if(!egbuttons[14].isClicked || !mousePressed){
      egFs3.stop();
      dampener = 1;
   }
    if(!egbuttons[15].isClicked || !mousePressed){
      egEb3.stop();
      dampener = 1;
   }
   if(!egbuttons[16].isClicked || !mousePressed){
      egCs3.stop();
      dampener = 1;
   }
   if(!egbuttons[17].isClicked || !mousePressed){
      egBb2.stop();
      dampener = 1;
   }
     if(!egbuttons[18].isClicked || !mousePressed){
      egGs2.stop();
      dampener = 1;
   }
     if(!egbuttons[19].isClicked || !mousePressed){
      egFs2.stop();
      dampener = 1;
   }
  }
 }
