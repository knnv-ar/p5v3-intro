/*
 Introducción a Processing.org
 Ejemplo 14: Representación del núcleo y electrón
 de un deuterio (isótopo del hidrógeno c/ 1 netrón,
 1 protón y 1 electrón.
*/

int x;
int y;
int t = 3;
int randMin = -3;
int randMax = 3;
int mitadRango = 5;

void setup() {
  smooth();
  x = width/2;
  y = height/2;
}

void draw() {
  background(204);

  //nucleo
  noStroke();
  fill(255, 0, 0, 80);
  ellipse(width/2, height/2 - 5, 10, 10);
  fill(0, 0, 255, 80);
  ellipse(width/2, height/2 + 5, 10, 10);

  //electrón
  x += int(random(randMin, randMax));
  y += int(random(randMin, randMax));

  x = constrain(x, (width/2) - mitadRango, (width/2) + mitadRango);
  y = constrain(y, (height/2) - mitadRango, (height/2) + mitadRango);

  fill(0, 0, 0, 100);
  ellipse(x, y, t, t);
}
