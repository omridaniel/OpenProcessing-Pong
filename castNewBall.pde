void castNewBall() { // casting a new ball simply means to assign new coordinates to THE ball
  time=time-1;
  if (time>=0) { //Pre serve timer
    frameRate(1);
    textSize(100);
    fill(255, 0, 0);
    text(time, width/2, height/2);
    fill(255);
    ballStart=false;
  }
  if (time<=0) { //Allow ball to move
    ballStart=true;
    frameRate(100);
  }
  if (ballX>=800) {
    ballX=400;
    ballY=300;
    time=4;
    speedX=3;
    speedY=3;
    Paddle1y=250;
    Paddle2y=250;
  }
  if (ballX<=0) {
    ballX=400;
    ballY=300;
    time=4;
    speedX=3;
    speedY=3;
    speedX=speedX*(-1);
    Paddle1y=250;
    Paddle2y=250;
  }
  // first ball in the game should be randomly cast from left or right side
  // every next new ball should be cast from the side of the player who lost 
  // a point, but the vertical direction (up or down) should still be random
}

