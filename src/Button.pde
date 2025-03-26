class Button {
  // Member Variables
  int x, y, w, h;
  color c1, c2;
  String val;
  boolean on, isClicked, isNote;

  // Constructor
  Button(int x, int y, int w, int h, String val, boolean isNote) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    w = 30;
    h = 30;
    c1 = color(#FFFFFF);
    c2 = color(#808080);
    this.val = val;
    on=false;
    isClicked = false;
    this.isNote = isNote;
  }

  // Member Methods
  void display() {
    if (on) {
      fill(c2);
    } else {
      fill(c1);
    }
    stroke(255);
    rectMode(CENTER);
    rect(x, y, w, h, 5);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(65);
    fill(0,0,0);
    text(val, x, y);
  }

  boolean hover(int mx, int my) {
    if (mx > x-w/2 && mx < x+w/2 && my > y-h/2 && my < y+h/2) {
      on = true;
      return on;
    } else {
      on = false;
      return on;
    }
  }
  
  void mousePressed(int mx, int my) {
    if(mx > x-w/2 && mx < x+w/2 && my > y-h/2 && my < y+h/2) {
      isClicked = true;
    } else {
      isClicked = false;
    }
  }
}
