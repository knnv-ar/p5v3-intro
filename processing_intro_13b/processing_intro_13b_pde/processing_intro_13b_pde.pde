/*
 Introducción a Processing.org
 Ejemplo 13b: Interacción IV: seguimiento de brillo mediante webcam
 Autor: Golan Levin.
 */

import processing.video.*;

Capture webcap;

void setup() {
  size(320, 240);
  colorMode(HSB, 360, 100, 100, 100);

  // Utiliza la entrada de video por defecto
  webcap = new Capture(this, width, height);
  webcap.start();  
  noStroke();
  smooth();
}

void draw() {
  if (webcap.available()) {
    webcap.read();
    image(webcap, 0, 0, width, height); // Dibuja la captura de webcam en lapantalla
    int brightestX = 0;                 // coordenada-X del pixel de video más brillante
    int brightestY = 0;                 // coordenada-Y del pixel de video más brillante
    float brightestValue = 0;           // Brightness of the brightest video pixel
    // Búsqueda del pixel más brillante: cálculo de cada índice de pixel en el video en cada
    // fila de pixeles y en cada pixel de la fila-Y en la imagen de video
    webcap.loadPixels();
    int index = 0;
    for (int y = 0; y < webcap.height; y++) {
      for (int x = 0; x < webcap.width; x++) {
        // Obtiene el color existente del pixel
        int pixelValue = webcap.pixels[index];
        // Determina el nivel de brillo del pixel
        float pixelBrightness = brightness(pixelValue);
        // Si dicho valor es más brillante que cualquier anterior,
        // entonces almacena el brillo del pixel, así como su posición
        if (pixelBrightness > brightestValue) {
          brightestValue = pixelBrightness;
          brightestY = y;
          brightestX = x;
        }
        index++;
      }
    }
    // Dibuja un círculo con centro en el pixel más brillante
    stroke(0, 0, 33, 60);
    fill(207, 65, 88, 60);
    strokeWeight(5);
    ellipse(brightestX, brightestY, 60, 60);
    point(brightestX, brightestY);
  }
}
