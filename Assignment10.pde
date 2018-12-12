float x, y, z, scale, xRotation, yRotation,angle, SpeedBoost, 
xView, yView, zView, upX, upY, upZ, PictoScale, CamView, 
extents = 250;
boolean PrettyPicture;
void setup() {
  surface.setResizable(true);
  surface.setTitle("Meshes");
  surface.setTitle("Camera");
  pixelDensity(displayDensity());
  size(1000, 1000, P3D);
  noStroke();
  colorMode(RGB, 1, 1, 1);
  angle = 0;
  SpeedBoost = 5.0;
  x = width / 2.0;
  y = height / 2.0;
  z = CamView = (height / 2.0) / tan(PI * 60.0 / 360.0);
  xView = x;
  yView = y;
  zView = 0;
  upX = 0;
  upY = 1;
  upZ = 0;
  PictoScale = 2.0;
  PrettyPicture = false;
  x = width / 2.0;
  y = height / 2.0;
  z = -50;
  scale = min(width, height) / 2.0;
}

void draw() {
  background(255,255,255);
  directionalLight(1, 0.95, 0.84, -0.5, 0.5, -0.5);
  pointLight(0.5, 0.25, 0, x, height, 0);

  xRotation = map(mouseY, -height / 2.0, height / 2.0, 0, TWO_PI);
  yRotation = map(mouseX, -width / 2.0, width / 2.0, 0, TWO_PI);

  pushMatrix();
//Make box.
  translate(x, y, z);
  rotateY(yRotation);
  rotateX(xRotation);
  scale(scale);
  beginShape();
  fill(255, 0, 0);
  vertex(-1, -1, 1);
  vertex(1, -1, 1);
  fill(1, 255, 0);
  vertex(1, 1, 1);
  vertex(-1, 1, 1);  

  beginContour();
  vertex(-0.5, 0.5, 1);
  vertex(0.5, 0.5, 1);
  vertex(0.5, -0.5, 1);
  vertex(-0.5, -0.5, 1);
  endContour();
  endShape(CLOSE);
  
  beginShape(QUADS);
  fill(6,82,95);
  vertex(1, -1, 1);
  vertex(1, -1, -1);
  fill(255,94,156);
  vertex(1, 1, -1);
  vertex(1, 1, 1);
  endShape();

  beginShape();
  fill(2,2,2);
  vertex(1, -1, -1);
  vertex(-1, -1, -1);
  fill(100,0,0);
  vertex(-1, 1, -1); 
  vertex(1, 1, -1);
  endShape(CLOSE);

  beginShape();
  fill(100,100,100);
  vertex(-1, -1, -1);
  vertex(-1, -1, 1);
  fill(2,255,92);
  vertex(-1, 1, 1);
  vertex(-1, 1, -1);
  endShape(CLOSE);

  beginShape();
  fill(62,153,200);
  vertex(-1, 1, 1);
  vertex(1, 1, 1);
  fill(200,153,102);
  vertex(1, 1, -1);
  vertex(-1, 1, -1);
  endShape(CLOSE);

  beginShape();
  fill(62,158,81);
  vertex(-1, -1, -1);
  vertex(1, -1, -1);
  fill(2,9,255);
  vertex(1, -1, 1);
  vertex(-1, -1, 1);
  endShape(CLOSE);  
  popMatrix();
  
 pointLight(255, 127, 127, 0, 0, -extents);
  pointLight(127, 255, 127, width, 0, -extents);
  pointLight(127, 127, 255, width, 0, extents);
  pointLight(255, 127, 255, 0, 0, extents);
  directionalLight(127, 127, 127, 0, 0, -1);


  if (PrettyPicture) {
    ortho(-width / PictoScale, 
      width / PictoScale, 
      -height / PictoScale, 
      height / PictoScale, 
      z / 1000.0, z * 1000.0);
  } else {
    perspective(PI / 3.0, 
      float(width) / float(height), 
      z / 2000.0, z * 2000.0);
  }
  camera(x, y, z, 
    xView, yView, zView, 
    upX, upY, upZ);

  keys();
  drawObjects();
}

void drawObjects() {
  //Pretty ball.
  fill(0,0,255);
  pushMatrix();
  translate(width * .5, height / 2.0, -height / 1.5);
  sphere(height / 2.5);
  popMatrix();
}
// Size change.
void keys() {
  if (keyPressed) {
    if (y > 0
      && (key == 'w' || key == 'W' || keyCode == UP)) {
      y -= SpeedBoost;
      yView = y;
    }
    if (x > -extents
      && (key == 'a' || key == 'A' || keyCode == LEFT)) {
      x -= SpeedBoost;
      xView = x;
    }
    if (y < height - 10
      && (key == 's' || key == 'S' || keyCode == DOWN)) {
      y += SpeedBoost;
      yView = y;
    }
    if (x < extents
      && (key == 'd' || key == 'D' || keyCode == RIGHT)) {
      x += SpeedBoost;
      xView = x;
    }
    if (z > -extents
      && (key == 'q' || key == 'Q')) {
      if (PrettyPicture) {
        PictoScale += 0.01;
      }
      z -= SpeedBoost;
      zView = z - CamView;
    }
    if (z < extents
      && (key == 'e' || key == 'E')) {
      if (PrettyPicture) {
        PictoScale -= 0.01;
      }
      z += SpeedBoost;
      zView = z - CamView;
    }
  }
}


void mousePressed() {
  //The earth pops into a wormhole.
  PrettyPicture = !PrettyPicture;
}
