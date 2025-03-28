// Reed Stringham
class BackgroundEffect {
  // Member variables
  int x, y, diam, speed;

  // Constructor
  BackgroundEffect() {
    x = int(random(width));
    y = -10;
    diam = int(12);
    speed = int(random(1, 6));
  }

  // Member Methods
  void display() {
    fill(255);
    ellipse(x, y, diam, diam);  // The ellipse is at position (x, y)
    rect(x + 5, y - 12, 2, 20);   // The rectangle is at position (x + 1, y + 1)
  }

  void move() {
    y += speed;  // Move both shapes together by updating the y position
  }

  boolean reachedBottom() {
    if (y > height + 25) {
      return true;
    } else {
      return false;
    }
  }
}
