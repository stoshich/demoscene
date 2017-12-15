import ddf.minim.*;
import ddf.minim.analysis.*;
 
Minim song;
AudioPlayer player;
BeatDetect beat;
int  k = 200;

void setup()
{

}
void draw()
{
 for (int i = 0; i < bsize ; i+=5)
  {
   float a = k + player.left.get(i)*100*i/bsize;
   ellipse(0, 0, a, a);
   fill(223,123,23);
   noStroke();
 } 
}