//William
class Piano {
  Button[] pbuttons = new Button[20];
  float dampener = 1;
  boolean beginNote;
  
  Piano() {
    pbuttons[0] = new Button(33, 500, 73, 85, 25, "C3", true, "playsNote", "puitar", true);
    pbuttons[1] = new Button(75, 380, 67, 170, 25, "Cs3", true, "playsNote", "puitar", true);
    pbuttons[2] = new Button(110, 500, 73, 85, 25, "D3", true, "playsNote", "puitar", true);
    pbuttons[4] = new Button(185, 500, 73, 85, 25, "E3", true, "playsNote", "puitar", true);
    pbuttons[5] = new Button(260, 500, 73, 85, 25, "F3", true, "playsNote", "puitar", true);
    pbuttons[6] = new Button(295, 380, 67, 170, 25, "F#3", true, "playsNote", "puitar", true);
    pbuttons[7] = new Button(330, 500, 73, 85, 25, "G3", true, "playsNote", "puitar", true);
    pbuttons[8] = new Button(365, 380, 67, 170, 25, "Gs3", true, "playsNote", "puitar", true);
    pbuttons[9] = new Button(400, 500, 73, 85, 25, "A3", true, "playsNote", "puitar", true);
    pbuttons[10] = new Button(435, 380, 67, 170, 25, "Bb3", true, "playsNote", "puitar", true);
    pbuttons[11] = new Button(475, 500, 73, 85, 25, "B3", true, "playsNote", "puitar", true);
   // This is where the wrong sounds for buttons are so will can add his new sounds
    pbuttons[12] = new Button(550, 500, 73, 85, 25, "C4", true, "playsNote", "puitar", true);
    pbuttons[13] = new Button(625, 500, 73, 85, 25, "D4", true, "playsNote", "puitar", true);
    pbuttons[14] = new Button(590, 380, 73, 85, 25, "Eb4", true, "playsNote", "puitar", true);
    pbuttons[15] = new Button(660, 380, 73, 85, 25, "Eb4", true, "playsNote", "puitar", true);


  }
  void pianoRefresher() {
    pbuttons[0].display();
    pbuttons[0].hover(mouseX, mouseY);
    pbuttons[0].mousePressed(mouseX, mouseY);
    pC3.amp(dampener);
    pbuttons[1].display();
    pbuttons[1].hover(mouseX, mouseY);
    pbuttons[1].mousePressed(mouseX, mouseY);
    pCs3.amp(dampener);
    pbuttons[2].display();
    pbuttons[2].hover(mouseX, mouseY);
    pbuttons[2].mousePressed(mouseX, mouseY);
    pD3.amp(dampener);
    pbuttons[4].display();
    pbuttons[4].hover(mouseX, mouseY);
    pbuttons[4].mousePressed(mouseX, mouseY);
    pE3.amp(dampener);
    pbuttons[5].display();
    pbuttons[5].hover(mouseX, mouseY);
    pbuttons[5].mousePressed(mouseX, mouseY);
    pF3.amp(dampener);
    pbuttons[6].display();
    pbuttons[6].hover(mouseX, mouseY);
    pbuttons[6].mousePressed(mouseX, mouseY);
    pG3.amp(dampener);
    pbuttons[7].display();
    pbuttons[7].hover(mouseX, mouseY);
    pbuttons[7].mousePressed(mouseX, mouseY);
    pGs3.amp(dampener);
    pbuttons[8].display();
    pbuttons[8].hover(mouseX, mouseY);
    pbuttons[8].mousePressed(mouseX, mouseY);
    pA3.amp(dampener);
    pbuttons[9].display();
    pbuttons[9].hover(mouseX, mouseY);
    pbuttons[9].mousePressed(mouseX, mouseY);
    pBb3.amp(dampener);
    pbuttons[10].display();
    pbuttons[10].hover(mouseX, mouseY);
    pbuttons[10].mousePressed(mouseX, mouseY);
    pB3.amp(dampener);
    pbuttons[11].display();
    pbuttons[11].hover(mouseX, mouseY);
    pbuttons[11].mousePressed(mouseX, mouseY);
    pB3.amp(dampener);
    pbuttons[12].display();
    pbuttons[12].hover(mouseX, mouseY);
    pbuttons[12].mousePressed(mouseX, mouseY);
    pC4.amp(dampener);
    pbuttons[13].display();
    pbuttons[13].hover(mouseX, mouseY);
    pbuttons[13].mousePressed(mouseX, mouseY);
    pD4Start.amp(dampener);
    pbuttons[14].display();
    pbuttons[14].hover(mouseX, mouseY);
    pbuttons[14].mousePressed(mouseX, mouseY);
    pCs4Start.amp(dampener);
    pbuttons[15].display();
    pbuttons[15].hover(mouseX, mouseY);
    pbuttons[15].mousePressed(mouseX, mouseY);
    pEb4Start.amp(dampener);

  }
  void keyPressed(){
     if(!pC3.isPlaying() && (key == 'q' || key == 'Q')){
      pC3.play();
      dampener -= 0.1;
      } else if(!pCs3.isPlaying() && (key == '2' || key == '@')){
        if(beginNote) {
          beginNote = false;
          pCs3StartTest.play();
        } else {
          pCs3.play();
          dampener -= 0.1;
        }
      } else if(!pD3.isPlaying() && (key == 'w' || key == 'W')){
      pD3.play();
      dampener -= 0.1;
      } else if(!pE3.isPlaying() && (key == 'e' || key == 'E')){
      pE3.play();
      dampener -= 0.1;
      } else if(!pF3.isPlaying() && (key == 'r' || key == 'R')){
      pF3.play();
      dampener -= 0.1;
      } else if(!pG3.isPlaying() && (key == 't'|| key == 'T')){
       pG3.play();
      dampener -= 0.1;
      } else if(!pGs3.isPlaying() && (key == '5' || key == '%')){
      pGs3.play();
      dampener -= 0.1;
      }
      else if(!pA3.isPlaying() && (key == 'y' || key == 'Y')){
      pA3.play();
      dampener -= 0.1;
      }
      else if(!pBb3.isPlaying() && (key == '6' || key == '^')){
      pBb3.play();
      dampener -= 0.1;
      }
      else if(!pB3.isPlaying() && (key == 'u' || key == 'U')){
      pB3.play();
      dampener -= 0.1;
      }
      else if(!pC4.isPlaying() && (key == 'i' || key == 'I')){
      pC4.play();
      dampener -= 0.1;
      }
       else if(!pD4Start.isPlaying() && (key == 'o' || key == 'O')){
        if(beginNote) {
          beginNote = false;
          pD4Start.play();
        } else {
          pD4Start.play();
          dampener -= 0.1;
        }
       }
     else if(!pCs4Start.isPlaying() && (key == '9' || key == '(')){
        if(beginNote) {
          beginNote = false;
          pCs4Start.play();
        } else {
          pCs4.play();
          dampener -= 0.1;
        }
         }
         else if(!pEb4Start.isPlaying() && (key == '0' || key == ')')){
        if(beginNote) {
          beginNote = false;
          pEb4Start.play();
        } else {
          pEb4Start.play();
          dampener -= 0.1;
        }
         }
 
  }
         
  void keyReleased(){
   beginNote = true;
   if(pC3.isPlaying() && (key == 'q' || key == 'Q')){
      pC3.stop();
      dampener = 1;
    }
   else if(pCs3.isPlaying() && (key == '2' || key == '@')){
     pCs3StartTest.stop();
     pCs3.stop();
     dampener = 1;
   }
   else if(pD3.isPlaying() && (key == 'w' || key == 'W')){
      pD3.stop();
      dampener = 1;
      }
   else if(pE3.isPlaying() && (key == 'e' || key == 'E')){
      pE3.stop();
      dampener = 1;
      }
   else if(pF3.isPlaying() && (key == 'r' || key == 'R')){
      pF3.stop();
      dampener = 1;
      }
   else if(pG3.isPlaying() && (key == 't' || key == 'T')){
      pG3.stop();
      dampener = 1;
      }
    else if(pGs3.isPlaying() && (key == '5' || key == '%')){
      pGs3.stop();
      dampener = 1;
      }
    else if(pA3.isPlaying() && (key == 'y' || key == 'Y')){
      pA3.stop();
      dampener = 1;
      }
    else if(pB3.isPlaying() && (key == 'u' || key == 'U')){
      pGs3.stop();
      dampener = 1;
      }
    else if(pC4.isPlaying() && (key == 'i' || key == 'I')){
      pC4.stop();
      dampener = 1;
      }
       else if(pD4Start.isPlaying() && (key == '2' || key == '@')){
     pD4Start.stop();
     pD4Start.stop();
     dampener = 1;
   }
    else if(pEb4Start.isPlaying() && (key == '0' || key == ')')){
     pEb4Start.stop();
     pEb4Start.stop();
     dampener = 1;
   }
   else if(pCs4Start.isPlaying() && (key == '9' || key == '(')){
     pCs4Start.stop();
     pC4.stop();
     dampener = 1;
   }

      
  }
  void mousePressed(){
    mainCursor = loadImage("fingerTwo.png");
    if(!pC3.isPlaying() && pbuttons[0].isClicked){ 
      pC3.play();
      dampener -= 0.01;
    } else if(!pCs3.isPlaying() && pbuttons[1].isClicked){ 
      pCs3.play();
      dampener -= 0.01;
    } else if(!pD3.isPlaying() && pbuttons[2].isClicked){ 
      pD3.play();
      dampener -= 0.01;
    } else if(!pE3.isPlaying() && pbuttons[4].isClicked){ 
      pE3.play();
      dampener -= 0.01;
    }
    else if(!pF3.isPlaying() && pbuttons[5].isClicked){ 
      pF3.play();
      dampener -= 0.01;
    }
     else if(!pG3.isPlaying() && pbuttons[6].isClicked){ 
      pG3.play();
      dampener -= 0.01;
    }
    else if(!pGs3.isPlaying() && pbuttons[7].isClicked){ 
      pGs3.play();
      dampener -= 0.01;
    }
    else if(!pA3.isPlaying() && pbuttons[8].isClicked){ 
      pA3.play();
      dampener -= 0.01;
    }
    else if(!pBb3.isPlaying() && pbuttons[9].isClicked){ 
      pBb3.play();
      dampener -= 0.01;
    }
    else if(!pB3.isPlaying() && pbuttons[10].isClicked){ 
      pB3.play();
      dampener -= 0.01;
    }
     else if(!pC4.isPlaying() && pbuttons[12].isClicked){ 
      pC4.play();
      dampener -= 0.01;
    }
    else if(!pD4Start.isPlaying() && pbuttons[13].isClicked){ 
      pD4Start.play();
      dampener -= 0.01;
    }
      else if(!pEb4Start.isPlaying() && pbuttons[15].isClicked){ 
      pEb4Start.play();
      dampener -= 0.01;
    }
     else if(!pCs4Start.isPlaying() && pbuttons[14].isClicked){ 
      pCs4Start.play();
      dampener -= 0.01;
    }
  }
  void mouseReleased(){
    mainCursor = loadImage("fingerOne.png");
    if(!pbuttons[0].isClicked || !mousePressed){
      pC3.stop();
      dampener = 1;
    }
    if(!pbuttons[1].isClicked || !mousePressed){
      pCs3.stop();
      dampener = 1;
    }
     if(!pbuttons[2].isClicked || !mousePressed){
      pD3.stop();
      dampener = 1;
    }
    if(!pbuttons[4].isClicked || !mousePressed){
      pE3.stop();
      dampener = 1;
    }
    if(!pbuttons[5].isClicked || !mousePressed){
      pF3.stop();
      dampener = 1;
    }
    if(!pbuttons[6].isClicked || !mousePressed){
      pG3.stop();
      dampener = 1;
    }
    if(!pbuttons[7].isClicked || !mousePressed){
      pGs3.stop();
      dampener = 1;
   }
   if(!pbuttons[8].isClicked || !mousePressed){
      pA3.stop();
      dampener = 1;
   } 
   if(!pbuttons[9].isClicked || !mousePressed){
      pBb3.stop();
      dampener = 1;
   }
    if(!pbuttons[10].isClicked || !mousePressed){
      pB3.stop();
      dampener = 1;
   }
    if(!pbuttons[12].isClicked || !mousePressed){
      pC4.stop();
      dampener = 1;
    }
    if(!pbuttons[13].isClicked || !mousePressed){
      pD4Start.stop();
      dampener = 1;
    }
    if(!pbuttons[14].isClicked || !mousePressed){
      pCs4Start.stop();
      dampener = 1;
    }
     if(!pbuttons[15].isClicked || !mousePressed){
      pEb4Start.stop();
      dampener = 1;
    }
  }
}
