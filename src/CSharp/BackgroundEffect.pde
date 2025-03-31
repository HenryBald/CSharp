// Reed Stringham
class BackgroundEffect {
  // Member variables
  int x, x1, y, diam, speed;
  char noteType;

  // Constructor
  BackgroundEffect() {
    int random = int(random(1, 7));
    if (random == 6) {
      noteType = 'a';
    } else if (random == 5) {
      noteType = 'b';
    } else if (random == 4) {
      noteType = 'c';
    } else if (random == 3) {
      noteType = 'd';
    } else if (random == 2) {
      noteType = 'e';
    } else if (random == 1) {
      noteType = 'f';
    }
    x = int(random(width));
    x1 = int(random(width));
    y = -10;
    diam = int(12);
  }

  // Member Methods
  void display() {
    fill(255);
    if (noteType == 'a') {
      ellipse(x, y, diam, diam);  // The ellipse is at position (x, y)
      rect(x + 5, y - 12, 2, 20);   // The rectangle is at position (x + 1, y + 1)
    } else if (noteType == 'b') {
      ellipse(x1, y, diam, diam);  // The ellipse is at position (x, y)
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
