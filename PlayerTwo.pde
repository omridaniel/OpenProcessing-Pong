void playerTwo() {   // to Move Paddle
  if ( keys[2]) 
  {
    Paddle2y-=5; // that's where you will put your commands to move the paddle up
  }
  if ( keys[3]) 
  {
    Paddle2y+=5; // that's where you will put your commands to move the paddle down
  }
  if (Paddle2y<=0) { //Constrain
    Paddle2y+=5;
  }
  if (Paddle2y>=470) { //Constrain
    Paddle2y-=5;
  }
}

