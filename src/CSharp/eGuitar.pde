class eGuitar {
  Button[] egbuttons = new Button[20];
  eGuitar() {
    egbuttons[0] = new Button(315, 380, 300, 184, 100, " ", true, "playsNote", "eGuitar", false);
  }
void keyPressed(){
if (key == 0 || keyCode == 96 || keyCode == 48){
    //egC3.play();
    //egC3.loop();
    }
}
void keyReleased(){
 if (key == 0 || keyCode == 96 || keyCode == 48){
    //egC3.stop();
    }
}
void mousePressed(){

}
void mouseReleased(){

}
}
