class Ball
{
  PVector ball = new PVector(0, height/2);
  int size;

  Ball()
  {
    ball.x=0;
    ball.y=height/2;
    size = 50;
  }
  void render()
  {
    fill(0,0,0);
    ellipse(ball.x,ball.y,size,size);
    if(ball.x > width - size/2)
    {
      ball.x = - ball.x;
    }
  }
  void move()
  {
    ball.x=ball.x+5;
  }
  void finish()
  {
    ball.x=ball.x+0;
    get((int)ball.x,(int)ball.y);
  }
}