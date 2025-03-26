//William Barney/Kirubashini
PImage startImage, logoImage, mainCursor;
Button[] buttons = new Button[2];
float l, r, result;
char op;
boolean left, time4Drums;

void setup() {
  size(1024,540);
  surface.setResizable(true);
  logoImage = loadImage("NewC#Logo.png");
  surface.setIcon(logoImage);
  surface.setTitle("CSharp - Online Music Creator");
  startImage = loadImage("CSharpStartScreen.png");
  mainCursor = loadImage("4881475.png");
  mainCursor.resize(50,50);
  surface.setCursor(mainCursor, mouseX, mouseY);
  
  l = 0.0;
  r = 0.0;
  result = 0.0;
  op = ' ';
  left = true;
  time4Drums = false;

  //buttons core
  buttons[0] = new Button(315, 380, 300, 184, "PLAY", false);
  buttons[1] = new Button(705, 380, 300, 184, "EXIT", false);

}




void draw() {
  background(startImage);
    for (int i=0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
    buttons[i].mousePressed(mouseX, mouseY);
    if(buttons[i].isClicked) {
      if (buttons[i].val == "Drumset") {
        time4Drums = true;
      }
      //check if other instrument here
    }
    //Always make sure to turn it to false after mousePressed, but after changing the screen and stuff
    buttons[i].isClicked = false;
  }
  updateDisplay();
 

  //println("Left:" + l + " Right:" + r + " Result:" + result + " Op:" + op + "L:" + left);
}

  void updateDisplay(){
  }

void gameOver(){
  
}
void mousePressed() {
  
}
void playNote(){
 
}

void mouseReleased(){
  
}

void stopNote(){
  
}

//Who did the wrong spelling of effect? you can "-> A <- ffect" somebody with something, the
    //side effect is "-> E <- ffect"
void applyAffect(){
  
}
  //again here to. wow.
void removeAffect(){
  
}

void selectInstrument(){
  
}
void swicthInstrument(){
  
}
