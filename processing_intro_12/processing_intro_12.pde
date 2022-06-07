/*
 Introducción a Processing.org
 Ejemplo 12: Interacción II: uso de valores ingresados por
 dispositivos de entrada como ratón y teclado mediante el
 uso de funciones de evento y variables de sistema.
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
}

// Función de evento
void mouseReleased() {
  /*
     Descomente la instrucción siguiente y evalúe
     el efecto resultante.
  */
  //background(0, 0, 80);
  strokeWeight(factorEscala);
  strokeJoin(ROUND);
  // círculo
  stroke(0, 0, 33, 60);
  fill(207, 65, 88, 60);
  ellipse(mouseX, mouseY, factorEscala * 30, factorEscala * 30);
}