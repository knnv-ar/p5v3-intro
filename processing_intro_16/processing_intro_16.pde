/*
 Introducción a Processing.org
 Ejemplo 16: Arrays: idem anterior con más electrones
*/

int numElectrones = 4;
int[] x = new int[numElectrones]; // Declaración y creación de array
int[] y = new int[numElectrones]; // Declaración y creación de array

void setup() {
  smooth();
}

void draw() {
  background(204);
  deuterio(50, 50);
}

void deuterio(int posX, int posY) {
  nucleo(posX, posY);
  electron(posX, posY);
}

void nucleo(int posX, int posY) {
  noStroke();
  fill(255, 0, 0, 80);
  ellipse(posX, posY - 5, 10, 10);
  fill(0, 0, 255, 80);
  ellipse(posX, posY + 5, 10, 10);
}

void electron(int posX, int posY) {
  int t = 3;
  int randMin = -3;
  int randMax = 3;
  int mitadRango = 20;

  fill(0, 0, 0, 100);

  // Bloque for() que asigna valores a los
  // array
  for (int i = 0; i < numElectrones; i++) {
    x[i] += int(random(randMin, randMax));
    y[i] += int(random(randMin, randMax));

    x[i] = constrain(x[i], posX - mitadRango, posX + mitadRango);
    y[i] = constrain(y[i], posY - mitadRango, posY + mitadRango);
    ellipse(x[i], y[i], t, t);
  }
}

