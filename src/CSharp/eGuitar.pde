//william
class eGuitar {
  Button[] egbuttons = new Button[20];
  
  eGuitar() {
  egbuttons[0] = new Button(180, 500, 73, 85, 100, " ", true, "playsNote", "eGuitar", false);
  }
void keyTyped(){
  egbuttons[0].display();
  //egbuttons[3].display();
  //egbuttons[4].display();
  if (keyPressed && key == 'e' || key == 'E'){
    egE2.play();
    egE2.loop();
    }
}
void keyReleased(){
 if (key == 0 || keyCode == 96 || keyCode == 48 && !keyPressed){
    egE2.stop();
    }
}
void mousePressed(){
    egbuttons[0].hover(mouseX, mouseY);
  //egbuttons[3].hover(mouseX, mouseY);
  //egbuttons[4].hover(mouseX, mouseY);
  egbuttons[0].mousePressed(mouseX, mouseY);
  //egbuttons[3].mousePressed(mouseX, mouseY);
  //egbuttons[4].mousePressed(mouseX, mouseY);
  if(egbuttons[0].isClicked && mousePressed){
    egE2.play();
    //egE2.loop();
  }
}
void mouseReleased(){
  if(!egbuttons[0].isClicked || !mousePressed){
    egE2.stop();
  }
}
}
