 import processing.sound.*;
import ddf.minim.*;
// William, Kirubashini, Henry, and Santhosh

// for recording audio
Minim minim;
AudioRecorder recorder;
AudioInput in;

ArrayList<BackgroundEffect> backgroundeffects = new ArrayList<BackgroundEffect>();
ArrayList<Trivia> questions = new ArrayList<Trivia>();
ArrayList<Button> triviaButtons = new ArrayList<Button>();
int currentQuestion = 0;
// Ignore layerImage
PImage logoImage, mainCursor, background, Drums;
Button[] buttons = new Button[13];
float l, r, result;
char op, screen;
boolean left, time4Drums, metOnScreen, recorded, buttonsAreOkay;
String explanation = "";
String feedback = "";
Metronome m1;
Timer beTime;
//Sound effects that affect
int gainVar = 0, reverbVar = 0, delayVar = 0;
Effect[] effects = new Effect[1];
//guitar sound files
SoundFile egA2, egA3, egB2, egB3, egBb2, egBb3, egCs3, egC3, egC4, egD3, egE2, egE3, egEb3, egFs2, egFs3, egF2, egF3, egGs2, egGs3, egG2, egG3;
//piano sound files
SoundFile pC3, pCs3, pD3, pEb3, pE3, pF3, pFs3, pG3, pGs3, pA3, pBb3, pB3, pC4;
eGuitar theEGuitarYipee = new eGuitar();
Piano thePianoYipee = new Piano();
Drumset theDrumsetYipee = new Drumset();
//scroller
float scx, scy;
int scrollDiam = 75;
boolean overScroll = false;
boolean locked = false;
float xOffset = 0.0;
float yOffset = 0.0;

void setup() {
  size(1024, 540);
  surface.setResizable(true);
  beTime = new Timer(250);
  beTime.start();
  m1 = new Metronome();
  minim = new Minim(this);
  recorder = minim.createRecorder(in, "myrecording.wav");

  surface.setTitle("CSharp - Online Music Creator");
  background = loadImage("CSharpStartScreen.png");
  logoImage = loadImage("NewC#Logo.png");
  logoImage.resize(50, 50);
  surface.setIcon(logoImage);
  background = loadImage("CSharpStartScreen.png");
  logoImage = loadImage("NewC#.png");
  logoImage.resize(440, 237);
  mainCursor = loadImage("4881475.png");
  mainCursor.resize(50, 50);
  Drums = loadImage("Drums.png");
  Drums.resize(640,360);
  surface.setCursor(mainCursor, 25, 25);
  screen = '1';
  l = 0.0;
  r = 0.0;
  result = 0.0;
  op = ' ';
  left = true;
  time4Drums = false;
  buttonsAreOkay = true;
   scy = 160;
  //Hi Santhosh! i like what you did, but I would trynto make the questions a tiny bit mor clear if possible
  // the second part of the first question just reads out loud weird
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "Remember a quarter note that counts in one beat and half of that is 8 meaning it would be a eight note since it counts at half a beat", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  questions.add(new Trivia ("Whnhjhhhhr a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));


  //buttons core
  //buttons[#] = new Button(xPos, yPos, width, height, textSize, "text to display", does it play a note?, "what page it goes to(if it is a note, just say plays note)", "what page it is displaying on", is it a selection button (clear until hover, then glows)?);
  //none of these buttons should be note buttons, those go in the constructors of their respective instrument class
  buttons[0] = new Button(315, 380, 300, 184, 120, "PLAY", false, "selectPage", "start", false);
  buttons[1] = new Button(705, 380, 300, 184, 120, "EXIT", false, "exit", "start", false);
  buttons[2] = new Button(100, 200, 300, 184, 40, "/\\ \n/     \\ \n|__*| ", false, "start", "selectPage", false);
  buttons[3] = new Button(805, 35, 100, 100, 30, "Trivia", false, "book", "selectPage", false);
  buttons[4] = new Button(680, 345, 220, 100, 100, " ", false, "keyboard", "selectPage", true);
  buttons[5] = new Button(500, 200, 300, 50, 40, "Begin", false, "Trivia", "selectPage", false);
  buttons[6] = new Button(878, 49, 284, 99, 40, " ", false, "selectPage", "keyboard", true);
  buttons[7] = new Button(945, 270, 110, 200, 100, " ", false, "effectsPage", "selectPage", true);
  buttons[8] = new Button(33, 35, 65, 40, 100, " ", false, "selectPage", "settingsPage", true);
  buttons[9] = new Button(600, 254, 258, 80, 100, " ", false, "keyboard", "keyboard", true);
  buttons[10] = new Button(380, 350, 150, 80, 100, " ", false, "Drumset", "selectionScreen", true);
  buttons[11] = new Button(760, 485, 175, 100, 200, " ", false, "Guitar", "selectionsScreen", true);
  buttons[12] = new Button(878, 247, 284, 99, 40, " ", false, "Recording", "keyboard", false);


  //sounds core
  //eletric guitar sounds
  egE2 = new SoundFile(this, "egE2.mp3");
  egF2 = new SoundFile(this, "egF2.mp3");
  egFs2 = new SoundFile(this, "egFs2.mp3");
  egG2 = new SoundFile(this, "egG2.mp3");
  egGs2 = new SoundFile(this, "egGs2.mp3");
  egA2 = new SoundFile(this, "egA2.mp3");
  egBb2 = new SoundFile(this, "egBb2.mp3");
  egB2 = new SoundFile(this, "egB2.mp3");
  egC3 = new SoundFile(this, "egC3.mp3");
  egCs3 = new SoundFile(this, "egCs3.mp3");
  egD3 = new SoundFile(this, "egD3.mp3");
  egEb3 = new SoundFile(this, "egEb3.mp3");
  egE3 = new SoundFile(this, "egE3.mp3");
  egF3 = new SoundFile(this, "egF3.mp3");
  egFs3 = new SoundFile(this, "egFs3.mp3");
  egG3 = new SoundFile(this, "egG3.mp3");
  egGs3 = new SoundFile(this, "egGs3.mp3");
  egA3 = new SoundFile(this, "egA3.mp3");
  egBb3 = new SoundFile(this, "egBb3.mp3");
  egB3 = new SoundFile(this, "egB3.mp3");
  egC4 = new SoundFile(this, "egC4.mp3");
  
  //piano sounds
  pC3 = new SoundFile(this, "pC3.mp3");
  pCs3 = new SoundFile(this, "pCs3.mp3");
  pD3 = new SoundFile(this, "pD3.mp3");
  pEb3 = new SoundFile(this, "pEb3.mp3");
  pE3 = new SoundFile(this, "pE3.mp3");
  pF3 = new SoundFile(this, "pF3.mp3");
  pFs3 = new SoundFile(this, "pFs3.mp3");
  pG3 = new SoundFile(this, "pG3.mp3");
  pGs3 = new SoundFile(this, "pGs3.mp3");
  pA3 = new SoundFile(this, "pA3.mp3");
  pBb3 = new SoundFile(this, "pBb3.mp3");
  pB3 = new SoundFile(this, "pB3.mp3");
  pC4 = new SoundFile(this, "pC4.mp3");
}




void draw() {
  background.resize(width, height);
  background(background);
  mainCursor.resize(50, 50);
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
    if (buttons[0].isClicked && mousePressed && buttonsAreOkay) {
      screen = '2';
      buttons[0].isClicked = false;
      buttonsAreOkay = false;
    } else if (buttons[1].isClicked && mousePressed && buttonsAreOkay) {
      exit();
    }
    //Always make sure to turn it to false after mousePressed, but after changing the screen and stuff
  } else if (screen == '2') {
    background = loadImage("selectionScreen1.png");
    mainCursor = loadImage("4881475.png");
    buttons[2].display();
    buttons[3].display();
    buttons[4].display();
    buttons[6].display();
    buttons[7].display();
    buttons[10].display();
    buttons[11].display();
    buttons[2].hover(mouseX, mouseY);
    buttons[3].hover(mouseX, mouseY);
    buttons[4].hover(mouseX, mouseY);
    buttons[6].hover(mouseX, mouseY);
    buttons[7].hover(mouseX, mouseY);
    buttons[10].hover(mouseX,mouseY);
    buttons[11].hover(mouseX,mouseY);
    buttons[2].mousePressed(mouseX, mouseY);
    buttons[3].mousePressed(mouseX, mouseY);
    buttons[4].mousePressed(mouseX, mouseY);
    buttons[6].mousePressed(mouseX, mouseY);
    buttons[7].mousePressed(mouseX, mouseY);
    buttons[10].mousePressed(mouseX,mouseY);
    buttons[11].mousePressed(mouseX,mouseY);
    if (buttons[2].isClicked && mousePressed && buttonsAreOkay) {
      screen = '1';
      buttons[2].isClicked = false;
      background = loadImage("CSharpStartScreen.png");
      buttonsAreOkay = false;
    } else if (buttons[4].isClicked && mousePressed && buttonsAreOkay) {
      screen = '8';
      buttons[4].isClicked = false;
      background = loadImage("KeyboardGUI.png");
      buttonsAreOkay = false;
    } else if (buttons[11].isClicked && mousePressed && buttonsAreOkay) {
      screen = '4';
      buttons[11].isClicked = false;
      background = loadImage("KeyboardGUI.png");
      buttonsAreOkay = false;
    } else if (buttons[3].isClicked && mousePressed && buttonsAreOkay) {
      screen = '3';
      buttons[3].isClicked = false;
      background = loadImage("Trivias.png");
      buttonsAreOkay = false;
    } else if (buttons[7].isClicked && mousePressed && buttonsAreOkay) {
      screen = '6';
      buttons[7].isClicked = false;
      background = loadImage("cSharpSettingsPage.png");
      buttonsAreOkay = false;
    } else if(buttons[10].isClicked && mousePressed && buttonsAreOkay){
      screen = '7';
      background = loadImage("coolStage.png");
      buttonsAreOkay = false;
    }
  } else if (screen == '3') {
    background = loadImage("Trivias.png");
    buttons[5].display();
    buttons[5].hover(mouseX, mouseY);
    buttons[5].mousePressed(mouseX, mouseY);
    PFont font;
    font = createFont("SpongeTitle.ttf", 25);
    textFont(font);

    textAlign(CENTER);
    text("Welcome to the trivia game: \n This is where you can unlock new instruments", width/2, 100);


    if (buttons[5].isClicked && mousePressed && buttonsAreOkay) {
      screen = '5';
      buttons[5].isClicked = false;
      buttonsAreOkay = false;
    }
  } else if (screen == '4') {
    background = loadImage("KeyboardGUI.png");
    theEGuitarYipee.neededStuffOrSomething();
    buttons[6].display();
    buttons[6].hover(mouseX, mouseY);
    buttons[6].mousePressed(mouseX, mouseY);
    buttons[9].display();
    buttons[9].hover(mouseX, mouseY);
    buttons[9].mousePressed(mouseX, mouseY);
    buttons[12].display();
    buttons[12].hover(mouseX, mouseY);
    buttons[12].mousePressed(mouseX, mouseY);
    if (buttons[9].isClicked && mousePressed && metOnScreen == false && buttonsAreOkay) {
      displayMet();
      buttons[9].isClicked = false;
      buttonsAreOkay = false;
    } else if (buttons[9].isClicked && mousePressed && metOnScreen == true && buttonsAreOkay) {
      metOnScreen = false;
      buttons[9].isClicked = false;
      buttonsAreOkay = false;
    }
    if (buttons[6].isClicked && mousePressed && buttonsAreOkay) {
      screen = '2';
      buttons[6].isClicked = false;
      background = loadImage("selectionScreen1.png");
      buttonsAreOkay = false;
      metOnScreen = false;
    }
    if (buttons[12].isClicked && mousePressed && !recorder.isRecording() && buttonsAreOkay) {
      recorder.beginRecord();
      buttonsAreOkay = false;
    } else if (buttons[12].isClicked && mousePressed && recorder.isRecording() && buttonsAreOkay) {
      recorder.endRecord();
      buttonsAreOkay = false;
    }
    if (mouseX > scx-scrollDiam && mouseX < scx+scrollDiam && mouseY > scy-scrollDiam && mouseY < scy+scrollDiam) {
      overScroll = true;
      if(!locked) {
        stroke(100);
        fill(203, 35, 29);
      }
    } else {
      stroke(153);
      fill(237, 31, 31);
      overScroll = false;
    }
      circle(63, scy, 70);
  } else if (screen == '5') {
    background(255);

    text(questions.get(currentQuestion).question, width / 2, 100);

    String[] options = questions.get(currentQuestion).options;
    for (int i = 0; i < options.length; i++) {
      text(options[i], width / 2, 150 + (i * 40));
    }
  
  } else if (screen == '6') {
//the effects screen
    buttons[8].display();
    buttons[8].hover(mouseX, mouseY);
    buttons[8].mousePressed(mouseX, mouseY);
    if (buttons[8].isClicked && mousePressed && buttonsAreOkay) {
      screen = '2';
      buttons[8].isClicked = false;
      background = loadImage("selectionScreen1.png");
      buttonsAreOkay = false;
    }
  } else if (screen == '7'){
// this is the drumset screen 
   background = loadImage("coolStage.png");
   image(Drums, 192, 90);

  } else if (screen == '8') {
    background = loadImage("KeyboardGUI.png");
    thePianoYipee.pianoRefresher();
    //mainCursor = loadImage("fingerOne.png");
    buttons[6].display();
    buttons[6].hover(mouseX, mouseY);
    buttons[6].mousePressed(mouseX, mouseY);
    buttons[9].display();
    buttons[9].hover(mouseX, mouseY);
    buttons[9].mousePressed(mouseX, mouseY);
    buttons[12].display();
    buttons[12].hover(mouseX, mouseY);
    buttons[12].mousePressed(mouseX, mouseY);
    if (buttons[9].isClicked && mousePressed && metOnScreen == false && buttonsAreOkay) {
      displayMet();
      buttons[9].isClicked = false;
      buttonsAreOkay = false;
    } else if (buttons[9].isClicked && mousePressed && metOnScreen == true && buttonsAreOkay) {
      metOnScreen = false;
      buttons[9].isClicked = false;
      buttonsAreOkay = false;
    }
    if (buttons[6].isClicked && mousePressed && buttonsAreOkay) {
      screen = '2';
      buttons[6].isClicked = false;
      background = loadImage("selectionScreen1.png");
      buttonsAreOkay = false;
      metOnScreen = false;
    }
    if (buttons[12].isClicked && mousePressed && !recorder.isRecording() && buttonsAreOkay) {
      recorder.beginRecord();
      buttonsAreOkay = false;
    } else if (buttons[12].isClicked && mousePressed && recorder.isRecording() && buttonsAreOkay) {
      recorder.endRecord();
      buttonsAreOkay = false;
    }
    if (mouseX > scx-scrollDiam && mouseX < scx+scrollDiam && mouseY > scy-scrollDiam && mouseY < scy+scrollDiam) {
      overScroll = true;
      if(!locked) {
        stroke(100);
        fill(203, 35, 29);
      }
    } else {
      stroke(153);
      fill(237, 31, 31);
      overScroll = false;
    }
      circle(63, scy, 70);
  }
  if (metOnScreen) {
    m1.display();
  }
}

void mousePressed() {
  if(overScroll) {
    locked = true;
    fill(203, 35, 29);
  } else {
    locked = false;
  }
  xOffset = mouseX-scx;
  yOffset = mouseY-scy;
  if (screen == '4') {
    theEGuitarYipee.mousePressed();
  } else if (screen == '8') {
    thePianoYipee.mousePressed();
  }
}

void mouseReleased() {
  locked = false;
  buttonsAreOkay = true;
  if (screen == '4') {
    theEGuitarYipee.mouseReleased();
  } else if (screen == '8') {
    thePianoYipee.mouseReleased();
  }
}

void mouseDragged() {
  if(locked) {
    scx = mouseX-xOffset;
    scy = mouseY-yOffset;
    if(scy <= 89){
      scy = 90;
    }
    if(scy >= 251){
      scy = 250;
    }
  }
}

void keyPressed() {
  if (screen == '4') {
    theEGuitarYipee.keyPressed();
  } else if (screen == '8') {
    thePianoYipee.keyPressed();
  }
}

void keyReleased() {
  if (screen == '4') {
    theEGuitarYipee.keyReleased();
  } else if (screen == '8') {
    thePianoYipee.keyReleased();
  }
}

void checkAnswer(int chosenOption) {
  Trivia currentTrivia = questions.get(currentQuestion);
  // if user gets the correct answer the message feedback will be outputted
  if (chosenOption == currentTrivia.correctAnswer) {
    feedback = "Great Job!";
    // adds to the int currentQuestion so it can move to next question
    currentQuestion++;
    // to check if user inputted wrong choice
  } else if (chosenOption != currentTrivia.correctAnswer) {
    // the explanation will be outputted
    explanation = currentTrivia.explanation;
    currentQuestion++;
  }
}


//println("Left:" + l + " Right:" + r + " Result:" + result + " Op:" + op + "L:" + left);

void playNote() {
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

void displayMet()
{
  metOnScreen = true;
}
