//William Barney/Kirubashini
ArrayList<BackgroundEffect> backgroundeffects = new ArrayList<BackgroundEffect>();
// Ignore layerImage
PImage startImage, logoImage, mainCursor;
Button[] buttons = new Button[2];
float l, r, result;
char op;
boolean left, time4Drums;
Timer beTime;

void setup() {
  size(1024, 540);
  surface.setResizable(true);
  beTime = new Timer(50);
  beTime.start();
  //surface.setIcon(logoImage);
  surface.setTitle("CSharp - Online Music Creator");
  startImage = loadImage("CSharpStartScreen.png");
  logoImage = loadImage("NewC#.png");
  logoImage.resize(440, 237);
  mainCursor = loadImage("4881475.png");
  mainCursor.resize(50, 50);
  surface.setCursor(mainCursor, mouseX, mouseY);

  l = 0.0;
  r = 0.0;
  result = 0.0;
  op = ' ';
  left = true;
  time4Drums = false;

  //buttons core
  buttons[0] = new Button(315, 380, 300, 184, "PLAY", false, "q");
  buttons[1] = new Button(705, 380, 300, 184, "EXIT", false, "q");
}




void draw() {
  background(startImage);
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
  for (int i=0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
    buttons[i].mousePressed(mouseX, mouseY);
    if (buttons[i].isClicked) {
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

void updateDisplay() {
}

void gameOver() {
}
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
