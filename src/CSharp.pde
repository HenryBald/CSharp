PImage startImage;

void setup() {
  size(1024,540);
  surface.setResizable(true);
  surface.setTitle("CSharp - Online Music Creator");
  startImage = loadImage("CSharpStartScreen.png");
}

void draw() {
  background(startImage);
}
