color chill;
color trap;
rectangles r;
Ball b;
PVector ball;
String[] chillSongs;
String[] trapSongs;
String song;
void setup()
{
  textAlign(CENTER);
  background(0);
  rectMode(CENTER);
  background(0);
  fullScreen();
  colorMode(RGB);
  chill=color(#7107ED);
  trap=color(#FFC903);
  r= new rectangles();
  b= new Ball();
  textSize(20);
  fill(255);
  text("Press 'd' to stop", 100, height/3-200);
  text("Press 'a' to start", 100, height/3-230);
  textSize(30);
  fill(255);
  text("Yellow= Trap Songs", 150, height-10);
  text("Blue= Chill Songs", 130, height-40);
}

void draw()
{
  r.Render();
  b.render();
  move();
}

void move()
{
  if (key == 'a')
  {
    b.move();
    fill(255);
    textSize(20);
    
  }
}

void keyReleased()
{
  if (key== 'd')
  {
    b.finish();
    r.end();
    if (blue(get((int)b.ball.x, (int)b.ball.y-50))>180)
    {
      background(0);
      chillSongs= loadStrings("chillMusic.txt");
      int ran=(int)random(chillSongs.length);
      song = chillSongs[ran];
      fill(#05CCED);
      textSize(40);
      text(song, width/2, height/2-200);
      textSize(20);
      text("Press 'r' to reload", 100, height/3-200);
    } else
    {
      background(0);
      trapSongs= loadStrings("trapMusic.txt");
      int ran1=(int)random(trapSongs.length);
      song = trapSongs[ran1];
      fill(#EDE205);
      textSize(40);
      text(song, width/2, height/2-200);
      textSize(20);
      text("Press 'r' to reload", 100, height/3-200);
    }
  }
  if (key == 'r')
  {
    background(0);
    b.ball.x=0;
    r.DrawRectangles=true;
    fill(255);
    textSize(20);
    text("Press 'a' to start", 100, height/3-230);
    text("Press 'd' to stop", 100, height/3-200);
    textSize(30);
    fill(255);
    text("Yellow= Trap Songs", 150, height-10);
    text("Blue= Chill Songs", 130, height-40);
  }
}