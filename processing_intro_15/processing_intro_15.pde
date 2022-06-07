/*
 Introducción a Processing.org
 Ejemplo 15: Ejemplo anterior mediante funciones de usuario
*/

int x;
int y;

void setup() {
  smooth();
}

void draw() {
  background(204);
  deuterio(50, 50);
}

// Función de usuario que llama a
// otras dos funciones de usuario.
void deuterio(int posX, int posY) {
  nucleo(posX, posY);
  electron(posX, posY);
}

// Segunda función  de usuario
void nucleo(int posX, int posY) {
  noStroke();
  fill(255, 0, 0, 80);
  ellipse(posX, posY - 5, 10, 10);
  fill(0, 0, 255, 80);
  ellipse(posX, posY + 5, 10, 10);
}

// Tercera función  de usuario
void electron(int posX, int posY) {
  int t = 3;
  int randMin = -3;
  int randMax = 3;
  int mitadRango = 5;

  x += int(random(randMin, randMax));
  y += int(random(randMin, randMax));

  x = constrain(x, posX - mitadRango, posX + mitadRango);
  y = constrain(y, posY - mitadRango, posY + mitadRango);

  fill(0, 0, 0, 100);
  ellipse(x, y, t, t);
}
