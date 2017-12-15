import ddf.minim.*;
import ddf.minim.analysis.*;
 

Minim song;
AudioPlayer player;
BeatDetect beat;

int  k = 200;

void setup()
{
  fullScreen();
  song = new Minim(this);
  player = song.loadFile("LeavetheLightsOn.mp3");
  beat = new BeatDetect();
  player.loop();
}
 
void draw()
{ 
  background(47, 55, 78);
  beat.detect(player.mix);
  translate(width/2, height/2);
  stroke(-1, 50);
  int bsize = player.bufferSize();
  for (int i = 0; i < bsize; i+=2)
  {
    float x = (k)*cos(i*2*PI/bsize);
    float y = (k)*sin(i*2*PI/bsize);
    float x2 = (k + player.left.get(i)*100)*cos(i*2*PI/bsize);
    float y2 = (k + player.left.get(i)*100)*sin(i*2*PI/bsize);
    strokeWeight(5);
    line(x/2, y/2, x2, y2);
    line(x, y, x2, y2);
  }
  for (int i = 0; i < bsize ; i+=5)
  {
   float a = k + player.left.get(i)*100*i/bsize;
   ellipse(0, 0, a, a);
   fill(223,123,23);
   noStroke();
 }
}