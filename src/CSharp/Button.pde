// Kirubashini (and a little bit of William)
class Button {
  // Member Variables
  int x, y, w, h;
  color c1, c2;
  String val, hiddenTag, pageOn;
  boolean on, isClicked, isNote;

  // Constructor
  Button(int x, int y, int w, int h, String val, boolean isNote, String hiddenTag, String pageOn) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.hiddenTag = hiddenTag;
    w = 30;
    h = 30;
//later we will want different button constructors for different shapes, or a variable to specify which shape button they will want
  //Also we probably will want the buttons clear, exept to the second color, which can be a black with low alpha value for rollover, that way we can just customize the looks of the button in the GUI, not in each specific button
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
    
    float maxTextSize = min(w, h) * 0.6;
    textSize(maxTextSize);
    
    while (textWidth(val) > w * 0.8) {
      maxTextSize -= 1;
      textSize(maxTextSize);
    }
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
  
  void mouseReleased() {}
}
