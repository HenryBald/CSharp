// Reed Stringham
class BackgroundEffect {
  // Member variables
  int x, x1, y, diam, speed;
  char noteType;
  PImage note;

  // Constructor
  BackgroundEffect() {
    int random = int(random(1, 6));
    if (random == 5) {
      noteType = 'a';
      note = loadImage("WholeNote.png");
      note.resize(25,25);
      speed = 1;
    } else if (random == 4) {
      noteType = 'b';
      note = loadImage("HalfNote.png");
      note.resize(50,50);
      speed = 2;
    } else if (random == 3) {
      noteType = 'c';
      note = loadImage("QuarterNote.png");
      note.resize(50,50);
      speed = 3;
    } else if (random == 2) {
      noteType = 'd';
      note = loadImage("EighthNote.png");
      note.resize(30,50);
      speed = 4;
    } else {
      noteType = 'e';
      note = loadImage("SixteenthNote.png");
      note.resize(50,50);
      speed = 5;
    }
    x = int(random(width));
    x1 = int(random(width));
    y = -50;
    diam = int(12);
  }

  // Member Methods
  void display() {
    fill(255);
    if (noteType == 'a') {
      image(note,x,y);
    } else if (noteType == 'b') {
      image(note,x,y);
    } else if (noteType == 'c') {
      image(note,x,y);
    } else if (noteType == 'd') {
      image(note,x,y);
    } else {
      image(note,x,y);
    }
  }

  void move() {
    y += speed;
  }
  
    boolean reachedBottom() {
      if (y > height + 25) {
        return true;
      } else {
        return false;
      }
    }
  }
