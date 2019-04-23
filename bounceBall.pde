void bounceBall() {
  if (ballStart==true) { //Ball speed/movement
    ballX=ballX+speedX;
    ballY=ballY+speedY;
    if (ballY>height-70||ballY<70) {   // if the ball hits top or bottom border, change the vertical direction to opposite
      speedY=speedY*(-1);
    }
  }
  if (ballX<=60) {   // if the ball hits the left paddle, change horizontal direction to the right
    if (ballY>=Paddle1y && ballY <= Paddle1y+125) {
      speedX=speedX*(-1);
      speedX=speedX/0.965;
      speedY=speedY/0.97;
      hit.trigger();
      ballX=63;
    }
  }
  if (ballX>=745) {   // if the ball hits the right paddle, change horizontal direction to the left
    if (ballY>= Paddle2y && ballY <=Paddle2y+125) {
      speedX=speedX*(-1);
      speedX=speedX/0.965;
      speedY=speedY/0.97;
      hit.trigger();
      ballX=743;
    }
  }
}

