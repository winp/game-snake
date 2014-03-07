Snake Viper;

void Init()
{
  PImage headImg = loadImage("head.jpg");
  PImage bodyImg = loadImage("body.jpg");
  PImage tailImg = loadImage("tail.jpg");
  Viper = new Snake(headImg, bodyImg, tailImg, 10, 100);
  Viper.Init(600, 100, 0, 10, 0, 0);
  Viper.Draw();
  // Viper.Init(mouseX, mouseY, 0, 10 + (frameCount/10) % 10, 0, ((frameCount/10) % 10) * 0.05);
}

void Update()
{
  float xMove = mouseX - 320;
  float yMove = mouseY - 240;
  float dist = -10;
  float angle = atan2(yMove, xMove);
  Viper.Move(dist, 0);
  Viper.Draw();
  rect(320, 240, 10, 10);
}
