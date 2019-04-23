void reDrawGameField() {
  //draw the borders of the playing field  
  background(backgroundPic);
  //Top border
  noFill();
  strokeWeight(5);
  stroke(255, 0, 0);
  arc(70, 0, 80, 80, radians(90), radians(180));
  line(70, 40, width/2, 40);
  stroke(0, 0, 255);
  arc(730, 0, 80, 80, radians(0), radians(90));
  line(730, 40, width/2, 40);
  //Center line
  stroke(255);
  line(width/2, 40, 400, 560);
  //Bottum border
  stroke(255, 0, 0);
  arc(70, 600, 80, 80, radians(180), radians(270));
  line(70, 560, width/2, 560);
  stroke(0, 0, 255);
  line(730, 560, width/2, 560);
  arc(730, 600, 80, 80, radians(270), radians(360));
  //Top screen text
  fill(255);
  textSize(36);
  fill(0, 0, 255);
  text("Player 1", 550, 30);
  fill(255, 0, 0);
  text("Player 2", 100, 30);
  fill(255);
  //Bottum screen text
  text("Ball Speed:",250,595);
  text(nfc(abs(speedX),1),450,595);
  // draw the two paddles and the ball
  noStroke();
  fill(255, 0, 0);
  rect(Paddle1x, Paddle1y, 32, 130); //Left paddle
  fill(0, 0, 255);
  rect(Paddle2x, Paddle2y, 32, 130); //Right paddle
  image(ballPic, ballX-30, ballY-30, 60, 60); //Ball
  // draw current score (Draw text)
  textSize(60);
  if (ballX>=width) { 
    scoreP1=scoreP1+1;
  }
  if (ballX<=0) { 
    scoreP2=scoreP2+1;
  }
  fill(0, 0, 255);
  text(scoreP2, 430, 105);
  fill(255, 0, 0);
  text(scoreP1, 330, 105);
}

