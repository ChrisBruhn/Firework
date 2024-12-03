class Explosion {
  void displayExplosion(int r, int g, int b, int alpha, float x, float y, float diameter) {
    noStroke();
    fill(r, g, b, alpha);

    for (int i = 0; i < 10; i++) {
      float angle = radians(random(360));
      float radius = random(diameter, diameter * 2);
      float xOffset = cos(angle) * radius;
      float yOffset = sin(angle) * radius;
      ellipse(x + xOffset, y + yOffset, random(5, 15), random(5, 15));
    }
  }
}
