import processing.sound.*;
// William, Kirubashini, Henry, and Santhosh
ArrayList<BackgroundEffect> backgroundeffects = new ArrayList<BackgroundEffect>();
ArrayList<Trivia> questions = new ArrayList<Trivia>();
ArrayList<Button> triviaButtons = new ArrayList<Button>(); 
int currentQuestion = 0;
// Ignore layerImage
PImage logoImage, mainCursor, background;
Button[] buttons = new Button[6];
float l, r, result;
char op, screen;
boolean left, time4Drums;
String explanation = "";
String feedback = "";
Timer beTime;
//guitar sound files
SoundFile egA2, egA3, egB2, egB3, egBb2, egBb3, egCs3, egC3, egC4, egD3, egE2, egE3, egEb3, egFs2, egFs3, egF2, egF3, egGs2, egGs3, egG2, egG3;
//piano sound files
SoundFile hellothere;
eGuitar theEGuitarYipee = new eGuitar();

void setup() {
  size(1024, 540);
  surface.setResizable(true);
  beTime = new Timer(250);
  beTime.start();

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
  surface.setCursor(mainCursor, 25, 25);
  screen = '1';
  l = 0.0;
  r = 0.0;
  result = 0.0;
  op = ' ';
  left = true;
  time4Drums = false;
//Hi Santhosh! i like what you did, but I would trynto make the questions a tiny bit mor clear if possible
// the second part of the first question just reads out loud weird
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "Remember a quarter note that counts in one beat and half of that is 8 meaning it would be a eight note since it counts at half a beat", 1,new String[]{"Whole Note","Eight Note","Half Note","Sixteenth Note"} ));
  questions.add(new Trivia ("Whnhjhhhhr a musical note that is half the length of a quarter note?", "", 1,new String[]{"Whole Note","Eight Note","Half Note","Sixteenth Note"} ));
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1,new String[]{"Whole Note","Eight Note","Half Note","Sixteenth Note"} ));
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1,new String[]{"Whole Note","Eight Note","Half Note","Sixteenth Note"} ));
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1,new String[]{"Whole Note","Eight Note","Half Note","Sixteenth Note"} ));
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1,new String[]{"Whole Note","Eight Note","Half Note","Sixteenth Note"} ));
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1,new String[]{"Whole Note","Eight Note","Half Note","Sixteenth Note"} ));
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1,new String[]{"Whole Note","Eight Note","Half Note","Sixteenth Note"} ));
  questions.add(new Trivia ("What is the word used for a musical note that is half the length of a quarter note?", "", 1,new String[]{"Whole Note","Eight Note","Half Note","Sixteenth Note"} ));


  //buttons core
  buttons[0] = new Button(315, 380, 300, 184, 120, "PLAY", false, "selectPage", "start", false);
  buttons[1] = new Button(705, 380, 300, 184, 120, "EXIT", false, "exit", "start", false);
  buttons[2] = new Button(100, 200, 300, 184, 40, "/\\ \n/     \\ \n|__*| ", false, "start", "selectPage", false);
  buttons[3] = new Button(805, 35, 100, 100, 30, "Trivia", false, "book", "selectPage", false);
  buttons[4] = new Button(680, 345, 220, 100, 100,  " ", false, "keyboard", "selectPage", true);
  buttons[5] = new Button(500, 200, 300, 50, 40,  "Begin", false, "Trivia", "selectPage", false);

  
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
      buttons[3].isClicked = false;
      background = loadImage("Trivias.png");
     
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
    text("Welcome to the trivia game: \n This is where you can unlock new instruments", width/2,100);
  
 
 if (buttons[5].isClicked && mousePressed) {
     screen = '5';
     buttons[5].isClicked = false;
 }
     
  }
    else if(screen == '4'){
      background = loadImage("KeyboardGUI.png");
      theEGuitarYipee.keyTyped();
      theEGuitarYipee.keyReleased();
      theEGuitarYipee.mousePressed();
      theEGuitarYipee.mouseReleased();
    }
    else if(screen == '5'){
   background(255);
   
    text(questions.get(currentQuestion).question, width / 2, 100);
    
    String[] options = questions.get(currentQuestion).options;
    for (int i = 0; i < options.length; i++) {
        text(options[i], width / 2, 150 + (i * 40)); 
    }
  }
}

void mousePressed() {

}

void checkAnswer(int chosenOption) {
  Trivia currentTrivia = questions.get(currentQuestion);
// if user gets the correct answer the message feedback will be outputted
  if (chosenOption == currentTrivia.correctAnswer) {
     feedback = "Great Job!";
  // adds to the int currentQuestion so it can move to next question
    currentQuestion++;
    // to check if user inputted wrong choice
  } else if(chosenOption != currentTrivia.correctAnswer) {
    // the explanation will be outputted
    explanation = currentTrivia.explanation;
    currentQuestion++;
  }
}


//println("Left:" + l + " Right:" + r + " Result:" + result + " Op:" + op + "L:" + left);

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
