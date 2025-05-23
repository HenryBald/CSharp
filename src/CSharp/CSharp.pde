import processing.sound.*;
import ddf.minim.*;
// William, Kirubashini, Henry, and Santhosh

// for recording audio
Minim minim;
AudioRecorder recorder;
AudioInput out;

Sound vol;
SoundFile soundPlaying, metTick;
ArrayList<BackgroundEffect> backgroundeffects = new ArrayList<BackgroundEffect>();
ArrayList<Trivia> questions = new ArrayList<Trivia>();
ArrayList<Button> triviaButtons = new ArrayList<Button>();
int currentQuestion = 0;
//Ignore layerImage
PImage logoImage, mainCursor, background, Drums, instructions, miniPiano, miniGuitar, home;
Button[] buttons = new Button[23];
float l, r, result;
char op, screen;
boolean left, time4Drums, metOnScreen, recorded, buttonsAreOkay, backfxOff;
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
SoundFile pC3, pCs3StartTest, pCs3, pD3, pEb3, pE3, pF3, pFs3, pG3, pGs3, pA3, pBb3, pB3, pC4, pD4Start, pD4, pCs4Start, pCs4, pEb4Start;

SoundFile dS1, dB2, dC3, dT4, dC5, dH6, dR7, dR8, dS9, dF0, dH1, dL2, dS3;
eGuitar theEGuitarYipee = new eGuitar();
Piano thePianoYipee = new Piano();
Drumset theDrumsetYipee = new Drumset();
//scroller
float scx, scy, scx2, scy2;
boolean overScroll = false, overScroll2 = false;
boolean locked = true, locked2 = true;
float yOffset = 0.0, yOffset2 = 0.0;

void setup() {
  size(1024, 540);
  surface.setResizable(true);
  beTime = new Timer(250);
  beTime.start();
  m1 = new Metronome();
  minim = new Minim(this);
  // out = minim.getLineOut(Minim.MONO, 2048);
  recorder = minim.createRecorder(out, "myrecording.wav");

  surface.setTitle("CSharp - Online Music Creator");
  background = loadImage("CSharpStartScreen.png");
  logoImage = loadImage("NewC#Logo.png");
  logoImage.resize(50, 50);
  surface.setIcon(logoImage);
  background = loadImage("CSharpStartScreen.png");
  logoImage = loadImage("NewC#.png");
  logoImage.resize(440, 237);
  //mainCursor = loadImage("4881475.png");
  //mainCursor.resize(50, 50);
  Drums = loadImage("Drums.png");
  Drums.resize(640, 360);
  instructions = loadImage("instructions.png");
  
  home = loadImage("Home.png");
  home.resize(5 , 5);
  
  //surface.setCursor(mainCursor, 25, 25);
  screen = '1';
  l = 0.0;
  r = 0.0;
  result = 0.0;
  op = ' ';
  left = true;
  time4Drums = false;
  buttonsAreOkay = true;
  scy = 160;
  scx = 63;
  scy2 = 435;
  scx2 = 497;
  backfxOff = false;
  //questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "Remember a quarter note that counts in one beat and half of that is 8 meaning it would be a eight note since it counts at half a beat", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  //questions.add(new Trivia ("Whnhjhhhhr a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  //questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  //questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  //questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  //questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  //questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  //questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));
  //questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1, new String[]{"Whole Note", "Eight Note", "Half Note", "Sixteenth Note"} ));


  //buttons core
  //buttons[#] = new Button(xPos, yPos, width, height, textSize, "text to display", does it play a note?, "what page it goes to(if it is a note, just say plays note)", "what page it is displaying on", is it a selection button (clear until hover, then glows)?);
  //none of these buttons should be note buttons, those go in the constructors of their respective instrument class
  buttons[0] = new Button(315, 380, 300, 184, 120, "PLAY", false, "selectPage", "start", false);
  buttons[1] = new Button(705, 380, 300, 184, 120, "EXIT", false, "exit", "start", false);
  
  buttons[2] = new Button(35,40 , 50 , 50 ,50, " ", false, "start", "selectPage", true);
 
  buttons[3] = new Button(805, 35, 100, 100, 30, "Trivia", false, "book", "selectPage", false);
  buttons[4] = new Button(680, 345, 220, 100, 100, " ", false, "keyboard", "selectPage", true);
  buttons[5] = new Button(500, 200, 300, 50, 40, "Begin", false, "Trivia", "selectPage", false);
  buttons[6] = new Button(294, 252, 340, 80, 40, " ", false, "selectPage", "keyboard", true);
  buttons[7] = new Button(945, 270, 110, 200, 100, " ", false, "effectsPage", "selectPage", true);
  buttons[8] = new Button(85, 150, 75, 120, 100, " ", false, "selectPage", "settingsPage", true);
  buttons[9] = new Button(600, 254, 258, 80, 100, " ", false, "keyboard", "keyboard", true);
  buttons[10] = new Button(380, 350, 150, 80, 100, " ", false, "Drumset", "selectionScreen", true);
  buttons[11] = new Button(760, 485, 175, 100, 200, " ", false, "Guitar", "selectionsScreen", true);
  buttons[12] = new Button(878, 247, 284, 99, 40, " Instructions ", false, "Recording", "keyboard", false);
  buttons[13] = new Button(900, 80, 300, 75, 100, " ", false, "instrcutionsForDrums", "selectionScreen", true);
  buttons[14] = new Button(50, 20, 100, 40, 30, "Back", false, "Drumset", "Instructions", false);
  buttons[15] = new Button(878, 49, 284, 99, 40, " ", false, "startPage", "keyboard", true);
  buttons[16] = new Button(878, 150, 284, 99, 40, " ", false, "effectsPage", "keyboard", true);
  buttons[17] = new Button(785, 345, 120, 50, 100, " ", false, "backGroundfxswitchON", "settingsPage", true);
  buttons[18] = new Button(945, 345, 120, 50, 100, " ", false, "backGroundfxswitchOFF", "settingsPage", true);
  buttons[19] = new Button(125, 20, 250, 40, 30, "Change Insrument", false, "selectPage", "Drumset", false);
  buttons[20] = new Button(50, 20, 100, 40, 30, "Back", false, "Drumset", "Instructions", false);
  buttons[21] = new Button(50, 20, 100, 40, 30, "Back", false, "Piano", "Instructions", false);
  buttons[22] = new Button(120, 375, 100, 25, 30, "", false, "Instructions", "selectPage", true);



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
  pCs3StartTest = new SoundFile(this, "pCs3StartTest.mp3");
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
  pCs4 = new SoundFile(this, "pCs4.mp3");
  pD4Start = new SoundFile(this, "pD4Start.mp3");
  pD4 = new SoundFile(this, "pD4.mp3");
  pCs4Start = new SoundFile(this, "pCs4Start.mp3");
  pEb4Start = new SoundFile(this, "pEb4Start.mp3");


  // drum sounds
  dS1 = new SoundFile(this, "snare.mp3");
  dB2 = new SoundFile(this, "base.mp3");
  dC3 = new SoundFile(this, "crash.mp3");
  dT4 = new SoundFile(this, "triangle.mp3");
  dC5 = new SoundFile(this, "cowbell.mp3");
  dH6 = new SoundFile(this, "hihat.mp3");
  dR7 = new SoundFile(this, "ride.mp3");
  dR8 = new SoundFile(this, "snareRoll.mp3");
  dS9 = new SoundFile(this, "sideStick.mp3");
  dF0 = new SoundFile(this, "floorTom.mp3");
  dH1 = new SoundFile(this, "highTom.mp3");
  dL2 = new SoundFile(this, "lowTom.mp3");
  dS3 = new SoundFile(this, "splash.mp3");


  metTick = new SoundFile(this, "metronomeclick.mp3");

  vol = new Sound(this);
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
      if (!backfxOff) {
        b.display();
      }
      b.move();
      if (b.reachedBottom()) {
        backgroundeffects.remove(i);
      }
      image(logoImage, 292, 30);
    }

    buttons[0].display();
    buttons[1].display();
    buttons[0].hover(mouseX, mouseY);
    //buttons[1].hover(mouseX, mouseY);
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
    home = loadImage("Home.png");
    home.resize(80,80);
    image (home, -5, 10);
    
    
    
    
    //mainCursor = loadImage("4881475.png");
    buttons[2].display();
    // buttons[3].display();
    buttons[4].display();
    buttons[7].display();
    buttons[10].display();
    buttons[11].display();
    buttons[22].display();
    buttons[2].hover(mouseX, mouseY);
    buttons[3].hover(mouseX, mouseY);
    buttons[4].hover(mouseX, mouseY);
    buttons[6].hover(mouseX, mouseY);
    buttons[7].hover(mouseX, mouseY);
    buttons[10].hover(mouseX, mouseY);
    buttons[11].hover(mouseX, mouseY);
    buttons[22].hover(mouseX, mouseY);
    buttons[2].mousePressed(mouseX, mouseY);
    buttons[3].mousePressed(mouseX, mouseY);
    buttons[4].mousePressed(mouseX, mouseY);
    buttons[6].mousePressed(mouseX, mouseY);
    buttons[7].mousePressed(mouseX, mouseY);
    buttons[10].mousePressed(mouseX, mouseY);
    buttons[11].mousePressed(mouseX, mouseY);
    buttons[22].mousePressed(mouseX, mouseY);

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
      background = loadImage("effectsPage.png");
      buttonsAreOkay = false;
    } else if (buttons[10].isClicked && mousePressed && buttonsAreOkay) {
      screen = '7';
      background = loadImage("coolStage.png");
      buttonsAreOkay = false;
    }else if (buttons[22].isClicked && mousePressed && buttonsAreOkay) {
      screen = 'c';
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
    miniGuitar = loadImage("Miniguitar.png");
    miniGuitar.resize(235,235);
    image(miniGuitar, 250, -15);
    buttons[6].display();
    buttons[6].hover(mouseX, mouseY);
    buttons[6].mousePressed(mouseX, mouseY);
    buttons[9].display();
    buttons[9].hover(mouseX, mouseY);
    buttons[9].mousePressed(mouseX, mouseY);
    buttons[12].display();
    buttons[12].hover(mouseX, mouseY);
    buttons[12].mousePressed(mouseX, mouseY);
    buttons[15].display();
    buttons[15].hover(mouseX, mouseY);
    buttons[15].mousePressed(mouseX, mouseY);
    buttons[16].display();
    buttons[16].hover(mouseX, mouseY);
    buttons[16].mousePressed(mouseX, mouseY);

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
    if (buttons[15].isClicked && mousePressed && buttonsAreOkay) {
      screen = '1';
      buttons[15].isClicked = false;
      background = loadImage("CSharpStartScreen.png");
      buttonsAreOkay = false;
      metOnScreen = false;
    }
    if (buttons[16].isClicked && mousePressed && buttonsAreOkay) {
      screen = '6'; // for some reason, screen needed to be one character, and we are out of numbers but this is essentially screen 10
      buttons[16].isClicked = false;
      buttonsAreOkay = false;
      metOnScreen = false;
    }
    
    if (buttons[12].isClicked && mousePressed && buttonsAreOkay) {
    screen = 'b';
      
    }
      
      
      
      //  recorder.beginRecord();
    //  buttonsAreOkay = false;
    //} else if (buttons[12].isClicked && mousePressed && recorder.isRecording() && buttonsAreOkay) {
    //  recorder.endRecord();
    //  buttonsAreOkay = false;
    //}8
    if (mouseX > scx-75 && mouseX < scx+75 && mouseY > scy-75 && mouseY < scy+75) {
      overScroll = true;
      if (locked) {
        stroke(100);
        fill(203, 35, 29);
      }
    } else {
      stroke(153);
      fill(237, 31, 31);
      overScroll = false;
    }
    circle(scx, scy, 70);
  } else if (screen == '5') {
    background(255);

    text(questions.get(currentQuestion).question, width / 2, 100);

    String[] options = questions.get(currentQuestion).options;
    for (int i = 0; i < options.length; i++) {
      text(options[i], width / 2, 150 + (i * 40));
    }
  } else if (screen == '6') {
    //the settings screen
    background = loadImage("effectsPage.png");
    buttons[8].display();
    buttons[8].hover(mouseX, mouseY);
    buttons[8].mousePressed(mouseX, mouseY);
    buttons[17].display();
    buttons[17].hover(mouseX, mouseY);
    buttons[17].mousePressed(mouseX, mouseY);
    buttons[18].display();
    buttons[18].hover(mouseX, mouseY);
    buttons[18].mousePressed(mouseX, mouseY);
    effects[0] = new Effect();
    if (buttons[8].isClicked && mousePressed && buttonsAreOkay) {
      screen = '2';
      buttons[8].isClicked = false;
      background = loadImage("selectionScreen1.png");
      buttonsAreOkay = false;
    }
    if (buttons[17].isClicked && mousePressed && buttonsAreOkay) {
      backfxOff = false;
      buttonsAreOkay = false;
    }
    if (buttons[18].isClicked && mousePressed && buttonsAreOkay) {
      backfxOff = true;
      buttonsAreOkay = false;
    }
    if (mouseX > scx2-35 && mouseX < scx2+35 && mouseY > scy2-35 && mouseY < scy2+35) {
      overScroll2 = true;
      if (locked2) {
        stroke(10);
        fill(203, 35, 29);
      }
    } else {
      stroke(10);
      fill(203, 35, 29);
      overScroll2 = false;
    }
    circle(scx2, scy2, 35);
    effects[0].apply();
    effects[0].neededStuffOrSomething();
  } else if (screen == '7') {
    // this is the drumset screen
    background = loadImage("coolStage.png");
    image(Drums, 192, 90);
    image(instructions, 735, 0 );
    theDrumsetYipee.drumsRefresh();
    buttons[13].display();
    buttons[19].display();

    buttons[13].hover(mouseX, mouseY);
    buttons[19].hover(mouseX, mouseY);

    buttons[13].mousePressed(mouseX, mouseY);
    buttons[19].mousePressed(mouseX, mouseY);

    if (buttons[19].isClicked && mousePressed && buttonsAreOkay) {
      screen = '2';
      buttons[19].isClicked = false; // ✅ reset the click flag
      buttonsAreOkay = false;
    }




    if (buttons[13].isClicked && mousePressed && buttonsAreOkay) {
      screen = '9';
      buttons[13].isClicked = false; // ✅ reset the click flag
      buttonsAreOkay = false;
    }
  } else if (screen == '8') {// OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOSJ#NSWHIJSIWH 
    background = loadImage("KeyboardGUI.png");
    thePianoYipee.pianoRefresher();
    //mainCursor = loadImage("fingerOne.png");
    //miniPiano = loadImage("miniPiano.png");
    //image(miniPiano, 325, 40);
    buttons[6].display();
    buttons[6].hover(mouseX, mouseY);
    buttons[6].mousePressed(mouseX, mouseY);
    buttons[9].display();
    buttons[9].hover(mouseX, mouseY);
    buttons[9].mousePressed(mouseX, mouseY);
    buttons[12].display();
    buttons[12].hover(mouseX, mouseY);
    buttons[12].mousePressed(mouseX, mouseY);
    buttons[15].display();
    buttons[15].hover(mouseX, mouseY);
    buttons[15].mousePressed(mouseX, mouseY);
    buttons[16].display();
    buttons[16].hover(mouseX, mouseY);
    buttons[16].mousePressed(mouseX, mouseY);

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
    if (buttons[15].isClicked && mousePressed && buttonsAreOkay) {
      screen = '1';
      buttons[15].isClicked = false;
      background = loadImage("CSharpStartScreen.png");
      buttonsAreOkay = false;
      metOnScreen = false;
    }
    if (buttons[16].isClicked && mousePressed && buttonsAreOkay) {
      screen = '6'; // for some reason, screen needed to be one character, and we are out of numbers but this is essentially screen 10
      buttons[16].isClicked = false;
      buttonsAreOkay = false;
      metOnScreen = false;
    }
    if (buttons[12].isClicked && mousePressed && buttonsAreOkay) {
    screen = 'a';
        
    }

      
      
    //  recorder.beginRecord();
    //  buttonsAreOkay = false;
    //} else if (buttons[12].isClicked && mousePressed && recorder.isRecording() && buttonsAreOkay) {
    //  recorder.endRecord();
    //  buttonsAreOkay = false;
    //}
    if (mouseX > scx-75 && mouseX < scx+75 && mouseY > scy-75 && mouseY < scy+75) {
      overScroll = true;
      if (locked) {
        stroke(100);
        fill(203, 35, 29);
      }
    } else {
      stroke(153);
      fill(237, 31, 31);
      overScroll = false;
    }

    circle(scx, scy, 70);
  }
  if (metOnScreen) {
    m1.display();
    m1.hoverUp(mouseX, mouseY);
    m1.hoverDown(mouseX, mouseY);
    m1.play();
  } else if (screen == '9') {
    background(200);
    //PFont font;
    //font = createFont("SpongeTitle.ttf", 25);
    //textFont(font);
    //textAlign(CENTER);
    textSize(30);
    text("Welcome to the instruction section for drums.\n this is where you can learn which key corresponds to which instrument\n and how to switch to special modes.", width/2, 50);
    text("Key q && Q is the snare\n Key w && W is the base\n Key e && E is the crash symbols\n Key r && R is Triangle\n Key t && T is cowbell", 200, 200);
    text("to turn the snare off go to the settings and click approprate box\n to side rim on snare click the key a || A\n REMEMBER mouse clicks are NOT available to use in special sounds like a drum roll", 500, 400);
    buttons[14].display();
    buttons[14].hover(mouseX, mouseY);
    buttons[14].mousePressed(mouseX, mouseY);

    if (buttons[14].isClicked && mousePressed && buttonsAreOkay) {
      screen = '7';
      buttonsAreOkay = false;
    }
  }
  else if (screen == 'a') {
     background(200);
    //PFont font;
    //font = createFont("SpongeTitle.ttf", 25);
    //textFont(font);
    //textAlign(CENTER);
    textSize(20);
    text("Welcome to the instruction section for piano.\n this is where you can learn which key corresponds to which instrument\n and basic concepts such as what an octave is:", width/2, 50);
    text("An octave is the interval between two of the same notes but one has a higher pitch or lower pitch. ", width/2, 100);
    text("Template: The first key is C3 which is assigned to the letter Q && q: Remeber the 3 represents the\n octave so its C at the third octive.\n D third octave is in key  W && w \n E third octave is in key e && E\n F third octave in r && R \n g third octave in t && T \n A third octave in key y && Y \n B third octave in key u && U \n ", width/2, 300);
    text("Template: Then starting with C and 4th octave ( notice new poctive so there will be a higher pitch ) is key i && I\n \n D fourth octave is o && O \n C Sharp in foruth octave is key 9 && ( \n E Flat at fourth octave is key 0 && ) \n more keys coming soon......  ", width/2, 450);

    buttons[21].display();
    buttons[21].hover(mouseX, mouseY);
    buttons[21].mousePressed(mouseX, mouseY);
    
      if (buttons[21].isClicked && mousePressed && buttonsAreOkay) {
      screen = '8'; // for some reason, screen needed to be one character, and we are out of numbers but this is essentially screen 10
      buttons[21].isClicked = false;
      buttonsAreOkay = false;
      }
  }
  else if (screen == 'b') {
     background(200);
    //PFont font;
    //font = createFont("SpongeTitle.ttf", 25);
    //textFont(font);
    //textAlign(CENTER);
    textSize(15);
      text("Welcome to the instruction section for electric guitar.\n this is where you can learn which key corresponds to which instrument\n and basic concepts such as what an octave is:", width/2, 50);
      text("An octave is the interval between two of the same notes but one has a higher pitch or lower pitch\n Also, for out electric guitar there are only octaves 2 and 3. ", width/2, 115);
      text("Template: the First key is E2 which is assigned to letter E && e: Remember the 2 represents the\n octave so its E at second octive\n F at second octave is in key R && r\n G at second octave is in key T && t\n A in second octave is in key Y && y\n B second octave is in key U && u\n ", width/2, 200);
      text("Template:Then starting with C at third octave ( notice new octave so there will be a higher pitch ) is key I && i \n D third octave is O && o \n E third octave is at key P && p \n F at third octave is in key [ && { \n G at third octave is in key ] && } \n A at third octave is in key Q && q \n B at third octave is in key W && w.  ", width/2, 300);
      text("Now moving on the the flats and sharps..\n F sharp/ G flat in second octave is in key 5 && %\n G sharp and A flat at second opctive is in key 6 && ^\n A sharp and B flat at second octave is in key 7 && &\n C sharp and D Flat at third octave is in key 9 && ( \n D sharp and E flat in third octave is in key 0 && )\n  F sharp and G flat third octave is in key + && = \n  ",width/2,450);
        text("Welcome to the instruction sections for electric guitar.\n this is where you can learn which key corresponds to which instrument\n and basic concepts such as what an octive is:", width/2, 50);
      text("An Octive is the interval between two of the same notes but one has a higher pitch or lower pitch\n Also for electric guitar there are only octive 2 and 3. ", width/2, 115);
      text("Template: the First key is E2 which is assigned to letter E && e: Remember the 2 represents the\n octive so its E at second octive\n F at second octive is in key R && r\n G at second octive is in key T && t\n A in second octive is in key Y && y\n B second octive is in key U && u\n ", width/2, 200);
      text("Template:Then starting with C at third octive ( notice new octive so there will be a higher pitch ) is key I && i \n D third octive is O && o \n E third octive is at key P && p \n F at third octive is in key [ && { \n G at third octive is in key ] && } \n A at third octive is in key Q && q \n B at third octive is in key W && w.  ", width/2, 300);
      text("Now moving on the the flats and sharps..\n F sharp/ G flat in second octive is in key 5 && %\n G sharp and A flat at second opctive is in key 6 && ^\n A sharp and B flat at second octive is in key 7 && &\n C sharp and D Flat at third octive is in key 9 && ( \n D sharp and E flat in third octive is in key 0 && )\n  F sharp and G flat third octive is in key + && = \n  ",width/2,450);

    buttons[20].display();
    buttons[20].hover(mouseX, mouseY);
    buttons[20].mousePressed(mouseX, mouseY);
if (buttons[20].isClicked && mousePressed && buttonsAreOkay) {
      screen = '4'; // for some reason, screen needed to be one character, and we are out of numbers but this is essentially screen 10
      buttons[20].isClicked = false;
      buttonsAreOkay = false;
      }  
}else if ( screen == 'c' ){
  background(255);
  textSize(20);
  text("Instructions",1,1);
  buttons[21].display();
    buttons[21].hover(mouseX, mouseY);
    buttons[21].mousePressed(mouseX, mouseY);
    
      if (buttons[21].isClicked && mousePressed && buttonsAreOkay) {
      screen = '2'; // for some reason, screen needed to be one character, and we are out of numbers but this is essentially screen 10
      buttons[21].isClicked = false;
      buttonsAreOkay = false;
      }
}
  
} 
void mousePressed() {
  if (overScroll) {
    locked = false;
    fill(237, 31, 31);
  } else {
    locked = true;
  }
  if (overScroll2) {
    locked2 = false;
    fill(237, 31, 31);
  } else {
    locked2 = true;
  }
  yOffset = mouseY-scy;
  yOffset2 = mouseY-scy2;
  if (screen == '4') {
    theEGuitarYipee.mousePressed();
  } else if (screen == '8') {
    thePianoYipee.mousePressed();
  } else if ( screen == '7') {
    theDrumsetYipee.mousePressed();
  }
}

void mouseReleased() {
  locked = true;
  locked2 = true;
  float volumeNum = norm(scy, 250, 90);
  vol.volume(volumeNum);

  buttonsAreOkay = true;
  if (screen == '4') {
    theEGuitarYipee.mouseReleased();
  } else if (screen == '8') {
    thePianoYipee.mouseReleased();
  } else if ( screen == '7') {
    theDrumsetYipee.mouseReleased();
  }
}

void mouseDragged() {
  if (!locked) {
    if (scy < 89) {
      locked = true;
      scy = 90;
    } else if (scy > 251) {
      locked = true;
      scy = 250;
    } else {
      scy = mouseY-yOffset;
    }
  }
  if (!locked2) {
    if (scy2 <226) {
      locked2 = true;
      scy2 = 227;
    } else if (scy2 > 461) {
      locked2 = true;
      scy2 = 460;
    } else {
      scy2 = mouseY-yOffset2;
    }
  }
}

void keyPressed() {
  if (screen == '4') {
    theEGuitarYipee.keyPressed();
  } else if (screen == '8') {
    thePianoYipee.keyPressed();
  } else if ( screen == '7') {
    theDrumsetYipee.keyPressed();
  }
}

void keyReleased() {
  if (screen == '4') {
    theEGuitarYipee.keyReleased();
  } else if (screen == '8') {
    thePianoYipee.keyReleased();
  } else if ( screen == '7' ) {
    theDrumsetYipee.keyReleased();
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
