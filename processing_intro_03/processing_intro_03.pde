/*
 Introducción a Processing.org
 Ejemplo 03: Diversas funciones y uso de constantes
 */

  /*
 Introducción a Processing.org
 Ejemplo 03: Diversas funciones y uso de constantes
 */
void settings() {
  size (2 * 100, 2 * 100);
}
void setup () {
  colorMode(HSB, 360, 100, 100, 100);
  background(0, 90, 50);
  strokeWeight(4);
  strokeJoin(ROUND);
  // rectángulo
  stroke(0, 0, 0);
  fill(120, 56, 56);
  rect(2 * 10, 2 * 10, 2 * 80, 2 * 30);
  // círculo
  stroke(0, 0, 33);
  fill(233, 90, 80);
  ellipse(2 * 60, 2 * 60, 2 * 60, 2 * 60);
  // línea
  stroke(0, 0, 66);
  line(2 * 63, 2 * 20, 2 * 20, 2 * 80);
  // punto
  stroke(0, 0, 99);
  point(2 * 65, 2 * 65);
}