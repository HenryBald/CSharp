// Reed Stringham
class BackgroundEffect {
  // Member variables
  int x, y, diam, speed;

  // Constructor
  BackgroundEffect() {
    x= int(random(width));
    y = -10;
    diam = int(random(1, 4));
    speed = int(random(1, 6));
  }

  // Member Methods
  void display() {
    fill(255);
    ellipse(x, y, diam, diam);
  }

  void move() {
    y+=speed;
  }

  boolean reachedBottom() {
    if (y>height+5) {
      return true;
    } else {
      return false;
    }
  }
}
