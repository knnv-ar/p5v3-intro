/*
 Introducción a Processing.org
 Ejemplo 05: Animación I: uso de los bloques
 setup() y draw() y el operador incremental.
 */

int factorEscala = 4;
float posicion = -100 * factorEscala;

void settings() {
  size (factorEscala * 100, factorEscala * 100);
}

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(0, 90, 50);
  strokeWeight(2 * factorEscala);
  strokeJoin(ROUND);
  // rectángulo
  stroke(0, 0, 0);
  fill(120, 56, 56);
  rect(posicion + (factorEscala * 10), factorEscala * 10, factorEscala * 80, factorEscala * 30);
  // círculo
  stroke(0, 0, 33);
  fill(233, 90, 80);
  ellipse(posicion + (factorEscala * 60), factorEscala * 60, factorEscala * 60, factorEscala * 60);
  // línea
  stroke(0, 0, 66);
  line(posicion + (factorEscala * 63), factorEscala * 20, posicion + (factorEscala * 20), factorEscala * 80);
  // punto
  stroke(0, 0, 99);
  point(posicion + (factorEscala * 65), factorEscala * 65);

  // variable y operador incremental
  posicion++;
}