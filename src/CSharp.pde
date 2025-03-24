PImage startImage, logoImage;

void setup() {
  size(1024,540);
  surface.setResizable(true);
  logoImage = loadImage("cSharpLogo.png");
  surface.setVisible(logoImage);
  surface.setTitle("CSharp - Online Music Creator");
  startImage = loadImage("CSharpStartScreen.png");
}

void draw() {
  background(startImage);
}
