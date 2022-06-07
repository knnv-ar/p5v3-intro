/*
 Introducción a Processing.org
 Ejemplo 11: Interacción I: uso de valores ingresados por
 dispositivos de entrada como ratón y teclado mediante el
 uso de variables de sistema.
 */

int factorEscala = 2;

void settings() {
  size (factorEscala * 100, factorEscala * 100);
  smooth();
}
void setup() {
  colorMode(HSB, 360, 100, 100, 100);
}
void draw() {
  background(0, 0, 80);
  strokeWeight(factorEscala);
  strokeJoin(ROUND);
  // círculo
  stroke(0, 0, 33, 60);
  fill(207, 65, 88, 60);
  
  // mouseX y mouseY son variables de sistema.
  ellipse(mouseX, mouseY, factorEscala * 30, factorEscala * 30);
}