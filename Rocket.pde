class Rocket {
  float explosionTime;
  float xPosition, yPosition;
  float diameter;
  int alpha;
  int r, g, b;
  int angle;
  boolean exploded;

  Rocket() {
    explosionTime = random(150, 400);
    xPosition = random(width);
    yPosition = height;
    diameter = 5;
    alpha = 255;
    r = (int) random(255);
    g = (int) random(255);
    b = (int) random(255);
    angle = (int) random(-2, 2);
    exploded = false;
  }

  void moveRocket() {
    xPosition += angle;
    yPosition -= 4;
  }

  void shouldExplode() {
    if (explosionTime < frameCount) {
      exploded = true;
      Explosion explosion = new Explosion();
      explosion.displayExplosion(r, g, b, alpha, xPosition, yPosition, diameter);
      alpha = max(0, alpha - 15);
      diameter += 2;
    } else if (!exploded) {
      moveRocket();
      showRocket();
    }
  }

  void showRocket() {
    fill(r, g, b, alpha);
    noStroke();
    circle(xPosition, yPosition, diameter);
  }
}
