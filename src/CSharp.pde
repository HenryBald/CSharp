PImage startImage;

void setup() {
  size(1024,540);
  surface.setResizable(true);
  startImage = loadImage("CSharpStartScreen.png");
}

void draw() {
  background(startImage);
}
