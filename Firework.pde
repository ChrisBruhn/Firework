ArrayList<Rocket> rockets = new ArrayList<Rocket>(); // Initializes the ArrayList of Rockets

void setup() {
  size(1000, 1000);
}

void draw() {
  background(20, 30, 40);
  if (frameCount % 10 == 0) { // Checks if the amount of frames divided by 10 has a remainder of 0
    rockets.add(new Rocket()); // If true, adds another rocket to create
  }
  createRockets();
}

void createRockets() { // Function to create the rockets
  for (int i = rockets.size() - 1; i >= 0; i--) { // Loops through the amount of rockets
    Rocket rocket = rockets.get(i); // Gets rocket
    rocket.shouldExplode(); // Checks if it should explode yet

    if (rocket.exploded && rocket.alpha <= 0) {
      rockets.remove(i); // Removes the rocket if it has exploded
    }
  }
}
