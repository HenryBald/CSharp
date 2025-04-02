// William, Kirubashini, Henry, and Santhosh
ArrayList<BackgroundEffect> backgroundeffects = new ArrayList<BackgroundEffect>();
// Ignore layerImage
PImage logoImage, mainCursor, background;
Button[] buttons = new Button[4];
float l, r, result;
char op, screen;
boolean left, time4Drums;
Timer beTime;

void setup() {
  size(1024, 540);
  surface.setResizable(true);
  beTime = new Timer(50);
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
  buttons[0] = new Button(315, 380, 300, 184, "PLAY", false, "selectPage", "start");
  buttons[1] = new Button(705, 380, 300, 184, "EXIT", false, "exit", "start");
  buttons[2] = new Button(100, 200, 300, 184, "/\\ \n/     \\ \n|__*| ", false, "start", "selectPage");
  buttons[3] = new Button(805, 35 ,100, 100, "Trivia", false, "book", "selectPage");

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
    buttons[2].hover(mouseX, mouseY);
    buttons[3].hover(mouseX, mouseY);
    buttons[2].mousePressed(mouseX, mouseY);
    buttons[3].mousePressed(mouseX, mouseY);
    if (buttons[2].isClicked && mousePressed) {
      screen = '1';
      buttons[2].isClicked = false;
      background = loadImage("CSharpStartScreen.png");
    }
    else if(buttons[3].isClicked && mousePressed){
      screen = '3';
    }
    else if(screen == '3'){
      
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
