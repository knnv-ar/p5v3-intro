/*
 Introducción a Processing.org
 Ejemplo 18: Arrays de objetos: idem anterior con arrays de objetos
*/

int numIsotopos = 4;

Isotopo[] deuterios = new Isotopo[numIsotopos]; // Declaración y creación del array de objetos

void setup() {
  smooth();
  // Bloque for() que permite crear los objetos
  // del array
  for (int i = 0; i < deuterios.length; i++) {
    int x = 20 + (i*20);
    int y = 20 + (i*20);
    deuterios[i] = new Isotopo(x, y); //Creación de cada objeto del array
  }
}

void draw() {
  background(204);
  // Bloque for() que permite llamar al método
  // de todos los objetos del array
  for (int i = 0; i < deuterios.length; i++) {
    deuterios[i].presentar();
  }
}

class Isotopo {

  int x, y;
  int xFijo, yFijo;
  int t = 3;
  int randMin = -3;
  int randMax = 3;
  int mitadRango = 5;

  Isotopo(int posX, int posY) {
    xFijo = posX;
    yFijo = posY;
  }

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

