//William Barney/Kirubashini
PImage startImage, logoImage, mainCursor;
Button[] buttons = new Button[2];
float l, r, result;
char op;
boolean left;

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

  //buttons core
  buttons[0] = new Button(315, 380, 300, 184, "PLAY", true);
  buttons[1] = new Button(705, 380, 300, 184, "EXIT", true);

}




void draw() {
  background(startImage);
    for (int i=0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
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

void applyAffect(){
  
}

void removeAffect(){
  
}

void selectInstrument(){
  
}
void swicthInstrument(){
  
}
