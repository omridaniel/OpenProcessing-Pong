import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

//////////////////////////////////////////////////////
// Name: Omri Daniel                                //
// Date: Nov 17 2016                                // 
// Project Name: Pong Game                          //
// Desc: This is the Pong game we created in class  //
//       First to 7 points wins the game.           //
//////////////////////////////////////////////////////
//Sounds-----------------------------------
Minim minim;
AudioPlayer song;
//Sound Effects 
AudioSample hit;
//Score------------------------------------
int scoreP1=0;
int scoreP2=0;
//Paddles----------------------------------
int Paddle1x=0;
int Paddle1y=250;
//Paddle 2
int Paddle2x=770;
int Paddle2y=250;
//Ball------------------------------------
float ballX=400;
float ballY=300;
float speedX=3;
float speedY=3;
PImage ballPic;
boolean ballStart = false;
//Game Setup-----------------------------
PImage backgroundPic;
int time=4;
boolean gameStart=false;
int cheat=0;
boolean[] keys;  // add this array of keys to hold the state of all keys used in the game

void setup() {
  minim = new Minim(this);
  hit = minim.loadSample("hit.mp3"); //Sound effect
  backgroundPic = loadImage("space1.jpg"); //Background pic
  ballPic = loadImage("ball.png"); //Ball pic
  size(800, 600); // set the game screen, including size (800,600)
  PImage titlePic = loadImage("title.png"); //Title screen
  image(titlePic, 0, 0, 800, 600); 
  song=minim.loadFile("song.mp3"); //Background pic
  float speedX=3*int(random(-1, 1));//Generate random number for serve at start
  float speedY=3*int(random(-1, 1));
  if (speedX==0)speedX=-3;
  if (speedY==0)speedY=-3;
  //Control Setup
  keys=new boolean[4]; // give the array its dimencion: 4 elements 
  keys[0]=false; // give them values. When each key is not pressed its state is false
  keys[1]=false;
  keys[2]=false;
  keys[3]=false;
}
//--------------------------------------------------------------------------
void draw() {    // Main Program
  if (!song.isPlaying()) {
    song.rewind();
    song.play();
  }
  if (keyPressed) {
    gameStart=true;
  }
  if (gameStart==true) {
    reDrawGameField(); // constantly redraw the field and detect when the ball goes off the screen and score a point
    castNewBall(); // cast a new ball at the beginning of each set
    bounceBall(); // constantly move the ball in the current direction and bounce the ball when it hits an obstacle
    playerOne(); // constantly move the paddles (if key action is detected)
    playerTwo(); // constantly move the paddles (if key action is detected)
    cheat();//Chaet ;)
    gameEnd();//Ends the game when a player scores 7 points, allows play again if keypressed
  }  
  // display final score
}
//--------------------------------------------------------------------------
void keyPressed()  // add these two functions at the end of your program
{  // if any of the game keys is pressed the array variable changes to true
  // this will allow the execution of all the commands in the if statements above.
  if (key=='w')  keys[0]=true;   //W,S is for left paddle
  if (key=='s')  keys[1]=true;   
  if (key=='p')  keys[2]=true;   //P,L for right paddle
  if (key=='l')  keys[3]=true;
}
void keyReleased()
{  // if any of the game keys is released the array variable changes to false
  // this will block the execution of all the commands in the if statements above.
  if (key=='w') keys[0]=false;
  if (key=='s') keys[1]=false;
  if (key=='p') keys[2]=false;
  if (key=='l') keys[3]=false;
} 

