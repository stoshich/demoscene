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

}