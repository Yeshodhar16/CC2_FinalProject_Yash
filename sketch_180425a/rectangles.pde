class rectangles
{
  boolean DrawRectangles;
  PVector position = new PVector(0, height/2);
  int col;
  rectangles()
  {
    position.x=width/2;
    position.y=height/2;
      DrawRectangles=true;
  }

  void Render()
  {
    if (DrawRectangles == true)
    {
      col= (int)random(10);
      if (col>5)
      {
        fill(chill);
      } else
      {
        fill(trap);
      }
      get((int)position.x, (int)position.y);
      rect(random(width), position.y, 500, 500);
    }
  }

  void end()
  {
    if (key == 'd')
    {
      DrawRectangles = false;
    }
  }
}