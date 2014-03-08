Snake Viper;
Food Mango;
int Score; 

void Init()
{
  Viper = new Snake(color(160, 220, 160), color(150, 200, 150), 10, 100, 5);
  Viper.Init(300, 100, -1, 0);
  Mango = new Food(color(240, 240, 120), (int) random(10, 630), (int) random(10, 470), 20);
}

void Update()
{
  if(mouseX != pmouseX || mouseY != pmouseY) Viper.Move(mouseX, mouseY);
  if(mousePressed) Viper.Grow(1);
  Viper.Draw();
  if(Mango.Dist(Viper.HeadX(), Viper.HeadY()) < Mango.Weight)
  {
    Score++;
    Viper.Grow(Viper.Block);
    Mango = new Food(color(240, 240, 120), (int) random(10, 630), (int) random(10, 470), 20);
  }
  Mango.Draw();
  Viper.BodyClr = (Viper.TailDist(Viper.HeadX(), Viper.HeadY()) < 10)? color(240, 100, 100) : color(150, 200, 150);
  ShowScore();
}

void ShowScore()
{
  fill(220);
  textAlign(RIGHT, CENTER);
  textSize(24);
  text(Score, 630, 20);
  textAlign(LEFT, CENTER);
  text("Snake v0.1", 5, 20);
}
/*
void log_Write(int[] arr)
{
  for(int i=0; i<arr.length; i++)
    print(arr[i] + "|");
  println();
}
*/
