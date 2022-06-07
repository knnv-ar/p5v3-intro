/*
 Introducción a Processing.org
 Ejemplo 08: Animación IV: bucle bidireccional.
 */

int factorEscala = 2;
int posicion = -100 * factorEscala;
int direccion = 1;

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
  ellipse(posicion + (factorEscala * 60), factorEscala * 60, factorEscala * 60, factorEscala * 60);

  // actualización +1 del valor de la variable posicion
  // * dirección: posicion = posicion + (1 * direccion);
  posicion = posicion + direccion;

  // evaluación
  if ((posicion > (100 * factorEscala)) || ((posicion < (-100 * factorEscala)))) {
    direccion *= -1;
  }
}