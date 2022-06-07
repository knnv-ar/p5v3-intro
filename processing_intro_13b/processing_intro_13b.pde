/*
 Introducción a Processing.org
 Ejemplo 13: Interacción III: uso de valores ingresados por
 dispositivos de entrada como ratón y teclado mediante el
 uso de funciones de evento y variables de sistema.
 */

int factorEscala = 2;
int x;
int y;

void settings() {
  size (factorEscala * 100, factorEscala * 100);
  smooth();
}

void setup() {
  colorMode(HSB, 360, 100, 100, 100);

  strokeWeight(factorEscala);
  strokeJoin(ROUND);
  stroke(0, 0, 33, 60);
  fill(207, 65, 88, 60);
  
  x = width/2;
  y = height/2;
}

void draw() {
  background(204);
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == UP) {
        y -= 2;
      } 
      if (keyCode == DOWN) {
        y += 2;
      }
      if (keyCode == LEFT) {
        x -= 2;
      }
      if (keyCode == RIGHT) {
        x += 2;
      }
    }
  }
  ellipse(x, y, factorEscala * 30, factorEscala * 30);
}

void keyPressed() {
  if ((key == 'a') || (key == 'A')) {
    stroke(0, 0, 33, 60);
    fill(0, 0, 100, 60);
  } 
  else if ((key == 's') || (key == 'S')) {
    stroke(0, 0, 33, 60);
    fill(0, 0, 0, 60);
  }
  else if ((key == 'd') || (key == 'D')) {
    stroke(0, 0, 33, 60);
    fill(207, 65, 88, 60);
  }
}