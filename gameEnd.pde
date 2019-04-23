void gameEnd(){
  if (scoreP1==7) { // exit when one player scores 7 points
      PImage P2Wins = loadImage("end2.png");
      image(P2Wins, 0, 0);
      fill(255);
      textSize(60);
      text("Final Score:", 180, 320);
      text("-", 545, 320);
      fill(0, 0, 255);
      text(scoreP1, 510, 320);
      fill(255, 0, 0);
      text(scoreP2, 570, 320);
      gameStart=false;
      scoreP1=0;
      scoreP2=0;
      cheat=0;
      if (keyPressed) {
        gameStart=true;
      }
    }
    if (scoreP2==7) { // exit when one player scores 7 points
      PImage P1Wins = loadImage("end1.png");
      image(P1Wins, 0, 0);
      fill(255);
      textSize(60);
      text("Final Score:", 180, 320);
      text("-", 545, 320);
      fill(0, 0, 255);
      text(scoreP1, 510, 320);
      fill(255, 0, 0);
      text(scoreP2, 570, 320);
      gameStart=false;
      scoreP2=0;
      scoreP1=0;
      cheat=0;
      if (keyPressed) {
        gameStart=true;
      }
    }
}
