/*
 Introducción a Processing.org
 Ejemplo 10b: Animación VI: uso de valores aleatorios con noise() en 2D.
 */

int factorEscala = 2;
float inicio1 = 0;
float inicio2 = 10;
float inc = 0.01;
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
  // círculo
  stroke(0, 0, 33);
  fill(233, 90, 80);
  ellipse(noise(inicio1) * 100 * factorEscala, noise(inicio2) * 100 * factorEscala, factorEscala * 60, factorEscala * 60);
  inicio1 = inicio1 + inc;
  inicio2 = inicio2 + inc;
}