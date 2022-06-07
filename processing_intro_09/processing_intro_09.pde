/*
 Introducción a Processing.org
 Ejemplo 09: Animación V: uso de valores aleatorios con random().
 */

int factorEscala = 2;

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
  ellipse(random(factorEscala * 100), random(factorEscala * 100), factorEscala * 60, factorEscala * 60);
}