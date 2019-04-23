void playerOne() {   // to Move Paddle
  if ( keys[0]) // if each key is pressed execute the statements inside the braces
  {  
    Paddle1y-=5;  // that's where you will put your commands to move the paddle up
  }
  if ( keys[1]) 
  {
    Paddle1y+=5; // that's where you will put your commands to move the paddle down
  }
  if (Paddle1y<=0) { //Constrain
    Paddle1y+=5;
  }
  if (Paddle1y>=470) { //Constrain
    Paddle1y-=5;
  }
}

