ArrayList<Rocket> rockets = new ArrayList<Rocket>();

void setup() {
  size(1000, 1000);
}

void draw() {
  background(20, 30, 40);
  if (frameCount % 10 == 0) {
    rockets.add(new Rocket());
  }

  for (int i = rockets.size() - 1; i >= 0; i--) {
    Rocket rocket = rockets.get(i);
    rocket.shouldExplode();

    if (rocket.exploded && rocket.alpha <= 0) {
      rockets.remove(i);
    }
  }
}
