float rotx, roty;
void setup() {
  size(800, 800, P3D);
}

void draw() {
  background(255);
  ball(width/2, height/2, 0, 300);
  cube(width/2, height/2, 0, #0000FF, 300);
  
}

void ball(float x, float y, float z, float size) {
  pushMatrix();
  translate(width/2, height/2, 0);

  rotateX(rotx); //rotate around x axis
  rotateY(roty); //y
  //rotateZ(); //z
  
  noFill();
  strokeWeight(3);
  sphere(300);
  popMatrix();
}

void cube(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);

  rotateX(rotx); //rotate around x axis
  rotateY(roty); //y
  //rotateZ(); //z
  fill(c);
  stroke(0);
  strokeWeight(3);
  box(size); //side length
  popMatrix();
}

void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY)*0.01; 
  roty = roty + (pmouseX - mouseX)*-0.01;
}
