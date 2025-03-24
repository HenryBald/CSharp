PImage startImage, logoImage, mainCursor;

void setup() {
  size(1024,540);
  surface.setResizable(true);
  logoImage = loadImage("cSharpLogo.png");
  surface.setIcon(logoImage);
  surface.setTitle("CSharp - Online Music Creator");
  startImage = loadImage("CSharpStartScreen.png");
  mainCursor = loadImage("4881475.png");
  mainCursor.resize(50,50);
  surface.setCursor(mainCursor, mouseX, mouseY);
}

void draw() {
  background(startImage);
}
