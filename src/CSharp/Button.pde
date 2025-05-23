// Kirubashini (and a little bit of William)
class Button {
  // Member Variables
  int x, y, w, h, size;
  color c1, c2, c3, c4;
  String val, hiddenTag, pageOn;
  boolean on, isClicked, isNote, selectyThing;
//
  // Constructor
  Button(int x, int y, int w, int h, int size, String val, boolean isNote, String hiddenTag, String pageOn, boolean selectyThing) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.hiddenTag = hiddenTag;
//later we will want different button constructors for different shapes, or a variable to specify which shape button they will want
  //Also we probably will want the buttons clear, exept to the second color, which can be a black with low alpha value for rollover, that way we can just customize the looks of the button in the GUI, not in each specific button
    c1 = color(255, 255, 255);
    c2 = color(#808080);
    c3 = color(241, 232, 250, 25);
    c4 = color(130, 0);
    //c4 = color(154, 18, 175, 40);
    this.val = val;
    on = false;
    isClicked = false;
    this.isNote = isNote;
    this.selectyThing = selectyThing;
    this.size = size;
  }

  // Member Methods
  void display() {
    if (selectyThing) {
      fill(c4);
      if(on) {
        fill(c3);
      }
    } else if(isNote) {
      fill(c4);
    } else if (!selectyThing && !isNote && on) {
      fill(c2);
    } else {
      fill(c1);
    }
    stroke(255, 0);
    rectMode(CENTER);
    rect(x, y, w, h, 5);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(size);
    text(val, x, y, w, h);
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
      //
      //if(mousePressed) {
      //  println(hiddenTag + " " + pageOn);
      //}
      //
    } else {
      isClicked = false;
    }
  }
  
  void mouseReleased() {}
}
