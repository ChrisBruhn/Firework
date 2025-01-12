import processing.sound.*;

class Explosion {
  
  void displayExplosion(int r, int g, int b, int alpha, float x, float y, float diameter) {
    noStroke();
    fill(r, g, b, alpha); // Sets the fill to the randomly generated color
    
    getSoundFile().play();
    
    for (int i = 0; i < 10; i++) {
      float angle = radians(random(360)); // Gets a random angle
      float radius = random(diameter, diameter * 2); // Gets a random radius from rocket
      float xOffset = cos(angle) * radius; // Sets the X offset of the explosion to cos(angle) * radius
      float yOffset = sin(angle) * radius; // Sets the Y offset of the explosion to sin(angle) * radius
      ellipse(x + xOffset, y + yOffset, random(5, 15), random(5, 15)); // Creates an ellipse for the explosion, with the offsets and a random size between 5 and 15
    }
  }
}
