/*
 Introducción a Processing.org
 Ejemplo 04: Variables
 */

int ESCALA = 4;

void settings() {
  size (ESCALA * 100, ESCALA * 100);
}
void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  background(0, 90, 50);
  strokeWeight(2 * ESCALA);
  strokeJoin(ROUND);
  // rectángulo
  stroke(0, 0, 0);
  fill(120, 56, 56);
  rect(ESCALA * 10, ESCALA * 10, ESCALA * 80, ESCALA * 30);
  // círculo
  stroke(0, 0, 33);
  fill(233, 90, 80);
  ellipse(ESCALA * 60, ESCALA * 60, ESCALA * 60, ESCALA * 60);
  // línea
  stroke(0, 0, 66);
  line(ESCALA * 63, ESCALA * 20, ESCALA * 20, ESCALA * 80);
  // punto
  stroke(0, 0, 99);
  point(ESCALA * 65, ESCALA * 65);
}