void timer() { //Pre game/serve timer
  int time = 6;//Pre match timer
  frameRate(1);
  time=time-1;
  textSize(36);
  text(time, 100, 100);
  if (time>=0) {
    frameRate=100;
    ballStart=true;
  }
}

