PVector position = new PVector();
PVector translation = new PVector();
float magnitude = 0.0;

void setup() {
  size(384, 256);
  magnitude = min(width, height) * 0.45;
  translation.set(width * 0.5, height * 0.5);
}

void draw() {
  background(0xffffffff);

  // Construct a unit vector from an angle.
  // A positive angle means clockwise (CW) rotation.
  float theta = frameCount * 0.01;
  PVector.fromAngle(theta, position);

  // Multiply the vector by a scalar value
  // to change its magnitude.
  position.mult(magnitude);

  // Display information on the sketch title.
  surface.setTitle(String.format("theta %.0f position [ %+.2f, %+.2f ]",
    degrees(theta), position.x, position.y));

  // Use heading and mag functions to read
  // properties of vector.
  // println(degrees(position.heading()));
  // println(position.mag());

  // Display scaled vector.
  stroke(0xffff007f);
  strokeWeight(1.5);
  line(0.0, 0.0, position.x, position.y);
  strokeWeight(10.0);
  point(position.x, position.y);

  // Display translation (sketch center).
  stroke(0xffff7f00);
  strokeWeight(1.5);
  line(0.0, 0.0, translation.x, translation.y);
  strokeWeight(10.0);
  point(translation.x, translation.y);

  position.add(translation);

  // Difference between position and translation.
  strokeWeight(1.5);
  stroke(0xffff007f);
  line(translation.x, translation.y,
    position.x, position.y);

  // Display translated position.
  stroke(0xff007fff);
  strokeWeight(1.5);
  line(0.0, 0.0, position.x, position.y);
  strokeWeight(10.0);
  point(position.x, position.y);
}
