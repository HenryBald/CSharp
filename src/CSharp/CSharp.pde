import processing.sound.*;
// William, Kirubashini, Henry, and Santhosh
ArrayList<BackgroundEffect> backgroundeffects = new ArrayList<BackgroundEffect>();
// Ignore layerImage
PImage logoImage, mainCursor, background;
Button[] buttons = new Button[5];
float l, r, result;
char op, screen;
boolean left, time4Drums;
Timer beTime;
//guitar sound files
SoundFile egA2, egA3, egB2, egB3, egBb2, egBb3, egCs3, egC3, egC4, egD3, egE2, egE3, egEb3, egFs2, egFs3, egF2, egF3, egGs2, egGs3, egG2, egG3;
//piano sound files
SoundFile hellothere;

void setup() {
  size(1024, 540);
  surface.setResizable(true);
  beTime = new Timer(250);
  beTime.start();
  //surface.setIcon(logoImage);

  surface.setTitle("CSharp - Online Music Creator");
  background = loadImage("CSharpStartScreen.png");
  logoImage = loadImage("NewC#Logo.png");
  logoImage.resize(50, 50);
  background = loadImage("CSharpStartScreen.png");
  logoImage = loadImage("NewC#.png");
  logoImage.resize(440, 237);
  mainCursor = loadImage("4881475.png");
  mainCursor.resize(50, 50);
  surface.setCursor(mainCursor, mouseX, mouseY);

  screen = '1';
  l = 0.0;
  r = 0.0;
  result = 0.0;
  op = ' ';
  left = true;
  time4Drums = false;

  //buttons core
  buttons[0] = new Button(315, 380, 300, 184, 120, "PLAY", false, "selectPage", "start", false);
  buttons[1] = new Button(705, 380, 300, 184, 120, "EXIT", false, "exit", "start", false);
  buttons[2] = new Button(100, 200, 300, 184, 40, "/\\ \n/     \\ \n|__*| ", false, "start", "selectPage", false);
  buttons[3] = new Button(805, 35, 100, 100, 30, "Trivia", false, "book", "selectPage", false);
  buttons[4] = new Button(680, 345, 220, 100, 100,  " ", false, "keyboard", "selectPage", true);
  
//sounds core
  //eletric guitar sounds
  egC4 = new SoundFile(this, "egC4.mp3");
  egE3 = new SoundFile(this, "egE3.mp3");
  //piano sounds
}




void draw() {
  background.resize(width, height);
  background(background);
  if (screen == '1') {
    if (beTime.isFinished()) {
      backgroundeffects.add(new BackgroundEffect());
      beTime.start();
    }
    for (int i = backgroundeffects.size() - 1; i >= 0; i--) {
      BackgroundEffect b = backgroundeffects.get(i);
      b.display();
      b.move();
      if (b.reachedBottom()) {
        backgroundeffects.remove(i);
      }
      image(logoImage, 292, 30);
    }

    buttons[0].display();
    buttons[1].display();
    buttons[0].hover(mouseX, mouseY);
    buttons[1].hover(mouseX, mouseY);
    buttons[0].mousePressed(mouseX, mouseY);
    buttons[1].mousePressed(mouseX, mouseY);
    if (buttons[0].isClicked && mousePressed) {
      screen = '2';
      buttons[0].isClicked = false;
    } else if (buttons[1].isClicked && mousePressed) {
      exit();
    }
    //Always make sure to turn it to false after mousePressed, but after changing the screen and stuff
  } else if (screen == '2') {
    background = loadImage("selectionScreen1.png");
    buttons[2].display();
    buttons[3].display();
    buttons[4].display();
    buttons[2].hover(mouseX, mouseY);
    buttons[3].hover(mouseX, mouseY);
    buttons[4].hover(mouseX, mouseY);
    buttons[2].mousePressed(mouseX, mouseY);
    buttons[3].mousePressed(mouseX, mouseY);
    buttons[4].mousePressed(mouseX, mouseY);
    if (buttons[2].isClicked && mousePressed) {
      screen = '1';
      buttons[2].isClicked = false;
      background = loadImage("CSharpStartScreen.png");
    }
    if (buttons[4].isClicked && mousePressed) {
      screen = '4';
      buttons[4].isClicked = false;
      background = loadImage("KeyboardGUI.png");
    }
    else if(buttons[3].isClicked && mousePressed){
      screen = '3';
    }
    else if(screen == '3'){
      
    }
    else if(screen == '4'){
      background = loadImage("KeyboardGUI.png");
    }
  }
}


//println("Left:" + l + " Right:" + r + " Result:" + result + " Op:" + op + "L:" + left);


void mousePressed() {
}
void playNote() {
}

void mouseReleased() {
}

void stopNote() {
}

//Who did the wrong spelling of effect? you can "-> A <- ffect" somebody with something, the
//side effect is "-> E <- ffect"
void applyAffect() {
}
//again here to. wow.
void removeAffect() {
}

void selectInstrument() {
}
void swicthInstrument() {
}
