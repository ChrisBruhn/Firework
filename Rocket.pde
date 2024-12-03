class Rocket {
  // Initializes the variable for explosionTime, xPosition, yPosition, diameter, alpha, r, g, b, angle and exploded
  float explosionTime;
  float xPosition, yPosition;
  float diameter;
  int alpha;
  int r, g, b;
  int angle;
  boolean exploded;

  Rocket() { /* Declares the random values for explosionTime, xPosition, yPosition, 
  red, green and blue for the color, angle. Sets the diameter from rocket to explosion to 5
  the alpha (transparency) to start off as 255 and the exploded boolean to start off as false
  */
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

  void moveRocket() { // Moves the rocket
    xPosition += angle; // Moves its x by the randomly generated value of angle
    yPosition -= 4; // Moves its y by -4, moving it upward
  }

  void shouldExplode() {
    if (explosionTime < frameCount || yPosition <= 50 || xPosition <= 20) { /* If it is time for the rocket to explode, 
    defined in the constructor with a random value between 150 and 400.
    Also checks if yPosition is lower than or equal to 50 or if xPosition is equal to
    or lower than 20, and explodes if true, to make sure
    that it doesn't go out of the visible screen
    */
      exploded = true; // Sets exploded to true so it won't explode again
      Explosion explosion = new Explosion(); // Creates a new instance of the Explosion class
      explosion.displayExplosion(r, g, b, alpha, xPosition, yPosition, diameter); // Displays the explosion
      alpha = max(0, alpha - 15); // Decreases the alpha by either 15 or setting it to 0
      diameter += 2; // Increases the diameter by 2
    } else if (!exploded) { // If it shouldn't explode yet, and hasn't exploded yet
      moveRocket(); // Move the rocket
      showRocket(); // Show the rocket, in its new position
    }
  }

  void showRocket() { // Function to show the rocket on the screen
    fill(r, g, b, alpha); // Sets the fill to the color of the rocket
    noStroke();
    circle(xPosition, yPosition, diameter); // Draws the circle at the x and y position with the diameter
  }
}
