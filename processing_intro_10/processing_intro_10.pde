/*
 Introducción a Processing.org
 Ejemplo 10: Animación VI: uso de valores aleatorios con noise().
 */

int factorEscala = 2;
float inicio = 0;
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
  ellipse(noise(inicio) * 100 * factorEscala, noise(inicio) * 100 * factorEscala, factorEscala * 60, factorEscala * 60);
  inicio = inicio + inc;
}