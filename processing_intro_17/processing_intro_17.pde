/*
 Introducción a Processing.org
 Ejemplo 17: Objetos: idem funciones de usuario
 pero esta vez a partir de clases
*/

Isotopo deuterio; // Declaración del objeto

void setup() {
  smooth();
  deuterio = new Isotopo(50, 50); // Construcción del objeto
}

void draw() {
  background(204);
  deuterio.presentar(); // Llamado a evento de objeto
}

// Definición de la clase
class Isotopo {

  // Campos
  int x, y;
  int xFijo, yFijo;
  int t = 3;
  int randMin = -3;
  int randMax = 3;
  int mitadRango = 5;

  // Constructor
  Isotopo(int posX, int posY) {
    xFijo = posX;
    yFijo = posY;
  }

  // Método
  void presentar() {
    //nucleo
    noStroke();
    fill(255, 0, 0, 80);
    ellipse(xFijo, yFijo - 5, 10, 10);
    fill(0, 0, 255, 80);
    ellipse(xFijo, yFijo + 5, 10, 10);

    // electrón
    fill(0, 0, 0, 100);

    x += int(random(randMin, randMax));
    y += int(random(randMin, randMax));

    x = constrain(x, xFijo - mitadRango, xFijo + mitadRango);
    y = constrain(y, yFijo - mitadRango, yFijo + mitadRango);
    ellipse(x, y, t, t);
  }
}
