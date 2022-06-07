/*
 Introducción a Processing.org
 Ejemplo 19 final: Interacción mediante multiples teclas presionadas.
 Interesante ejemplo aplicado de clon de juego Pong, realizado por
 odin4000 y optimizado por seltar.
 URL: http://processing.org/discourse/yabb2/YaBB.pl?board=Syntax;action=display;num=1232739411
 */

int x = 10;        //rect1 X
int y = 125;       //rect1 Y
int x2 = 390;      //rect2 X
int y2 = 125;      //rect2 Y
int bx = 200;      //ball X
int by = 125;      //ball Y
int c = -1;        //ball x movement
int v = 0;         //ball y movement
int p1 = 0;        //Left player points
int p2 = 0;        //right player points

// Array for controller keys
boolean[] keys = new boolean[4];
final int Q = 0;
final int A = 1;
final int O = 2;
final int L = 3;


void setup() {
  size(400, 250);
  rectMode(CENTER);
  ellipseMode(CENTER);
  smooth();
  strokeWeight(2);
  frameRate(130);
  PFont arial;
  arial = loadFont("Arial-Black-48.vlw");
  textFont(arial, 48);

  // Init all controller keys to "not pressed"
  for (int i = 0; i< 4; i++) {
    keys[i] = false;
  }
}

void draw() {
  background(100);
  text(p1, 165, 35);           //This is the first player's points.
  text(p2, 203, 35);           //This is the second player's points.
  line(200, 0, 200, 250);


  ellipse(bx, by, 10, 10);    //The Pong Ball

  bx = bx + c;                //Default ball movements.
  by = by + v;

  if (bx == 20 && by >= y-25 && by <= y+25) {     //Movements if ball touch left player.
    if (by < y) {
      c = +2;
      v = -2;
    }
    if (by > y) {
      c = +2;
      v = +2;
    }
    if (by == y) {
      c = +2;
      v = 0;
    }
  }

  if (bx == 380 && by >= y2-25 && by <= y2+25) {    //Movements if ball touch right player.
    if (by < y2) {
      c = -2;
      v = -2;
    }
    if (by > y2) {
      c = -2;
      v = +2;
    }
    if (by == y2) {
      c = -2;
      v = 0;
    }
  }

  if (bx < 0) {       //If the ball pass left limit.
    bx = 200;
    by = 150;
    v = 0;
    c = -1;
    p2 = p2+1;
  }

  if (bx > 400) {     //If the ball pass right limit.
    bx = 200;
    by = 150;
    v = 0;
    c = +1;
    p1 = p1+1;
  }

  if (by > 250) {   //The ball touch the lower limit.
    v = -2;
  }

  if (by < 0) {     //The ball touch the upper limit.
    v = +2;
  }

  rect(x, y, 10, 50);       //This is the left pannel.

  rect(x2, y2, 10, 50);     //This is the right pannel.


  if (keys[Q] == true) {  //Move the left player up.
    y = max(25, y-2);
  }
  if (keys[A] == true) {  //Move the left player down.
    y = min(225, y+2);
  }
  if (keys[O] == true) {  //Move the right player up.
    y2 = max(25, y2-2);
  }
  if (keys[L] == true) {  //Move the right player down.
    y2 = min(225, y2+2);
  }
}

void keyPressed() {
  if (key == 'q') {
    keys[Q] = true;
  } 
  else if (key == 'a') {
    keys[A] = true;
  } 
  else if (key == 'o') {
    keys[O] = true;
  } 
  else if (key == 'l') {
    keys[L] = true;
  }
}

void keyReleased() {
  if (key == 'q') {
    keys[Q] = false;
  } 
  else if (key == 'a') {
    keys[A] = false;
  } 
  else if (key == 'o') {
    keys[O] = false;
  } 
  else if (key == 'l') {
    keys[L] = false;
  }
} 

