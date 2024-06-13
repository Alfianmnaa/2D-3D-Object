float pitch = 0;
float yaw = 0;
float roll = 0;
boolean upPressed, downPressed, leftPressed, rightPressed, ltPressed, gtPressed;
PShape Alfian;

void setup() {
  size(1000, 800, P3D);
  Alfian = createShape(GROUP);
  
  //Huruf A
  PShape Adepan = createShape();
  Adepan.beginShape();
  Adepan.vertex(120, 0, 0);
  Adepan.vertex(0, 300, 0);  
  Adepan.vertex(80, 300, 0);  
  Adepan.vertex(150, 90, 0);
  Adepan.vertex(220, 300, 0);
  Adepan.vertex(300, 300, 0);
  Adepan.vertex(180, 0, 0);
  Adepan.endShape(CLOSE);
  
  PShape Ahorizontaldepan = createShape();
  Ahorizontaldepan.beginShape();
  Ahorizontaldepan.vertex(123, 170, 0);
  Ahorizontaldepan.vertex(103, 230, 0);
  Ahorizontaldepan.vertex(196, 230, 0);
  Ahorizontaldepan.vertex(176, 170, 0);
  Ahorizontaldepan.endShape(CLOSE);
  
  PShape Abelakang = createShape();
  Abelakang.beginShape();
  Abelakang.vertex(120, 0, -50);
  Abelakang.vertex(0, 300, -50);  
  Abelakang.vertex(80, 300, -50);  
  Abelakang.vertex(150, 90, -50);
  Abelakang.vertex(220, 300, -50);
  Abelakang.vertex(300, 300, -50);
  Abelakang.vertex(180, 0, -50);
  Abelakang.endShape(CLOSE);
  
  PShape Ahorizontalbelakang = createShape();
  Ahorizontalbelakang.beginShape();
  Ahorizontalbelakang.vertex(123, 170, -50);
  Ahorizontalbelakang.vertex(103, 230, -50);
  Ahorizontalbelakang.vertex(196, 230, -50);
  Ahorizontalbelakang.vertex(176, 170, -50);
  Ahorizontalbelakang.endShape(CLOSE);
  
  //Mengatur ketebalan atau lebar dari huruf 3d
  PShape A1 = createShape();
  A1.beginShape();
  addDepth(A1, 120, 0, 0, 0, 300, 0, 0, 300, -50, 120, 0, -50);
  A1.endShape(CLOSE);
   
  PShape A2 = createShape();
  A2.beginShape();
  addDepth(A2, 0, 300, 0, 80, 300, 0, 80, 300, -50, 0, 300, -50);
  A2.endShape(CLOSE);
 
  PShape A3 = createShape();
  A3.beginShape();
  addDepth(A3, 80, 300, 0, 150, 90, 0, 150, 90, -50, 80, 300, -50);
  A3.endShape(CLOSE);
  
  PShape A4 = createShape();
  A4.beginShape();
  addDepth(A4, 150, 90, 0, 220, 300, 0, 220, 300, -50, 150, 90, -50);
  A4.endShape(CLOSE);
  
  PShape A5 = createShape();
  A5.beginShape();
  addDepth(A5, 220, 300, 0, 300, 300, 0, 300, 300, -50, 220, 300, -50);
  A5.endShape(CLOSE);
  
  PShape A6 = createShape();
  A6.beginShape();
  addDepth(A6, 300, 300, 0, 180, 0, 0, 180, 0, -50, 300, 300, -50);
  A6.endShape(CLOSE);
  
  PShape A7 = createShape();
  A7.beginShape();
  addDepth(A7, 180, 0, 0, 120, 0, 0, 120, 0, -50, 180, 0, -50);
  A7.endShape(CLOSE);
  
  PShape A8 = createShape();
  A8.beginShape();
  addDepth(A8, 123, 170, 0, 176, 170, 0, 176, 170, -50, 123, 170, -50);
  A8.endShape(CLOSE);
  
  PShape A9 = createShape();
  A9.beginShape();
  addDepth(A9, 103, 230, 0, 196, 230, 0, 196, 230, -50, 103, 230, -50);
  A9.endShape(CLOSE);
  
  Alfian.addChild(Adepan);
  Alfian.addChild(Ahorizontaldepan);
  Alfian.addChild(Abelakang);
  Alfian.addChild(Ahorizontalbelakang);
  Alfian.addChild(A1);
  Alfian.addChild(A2);
  Alfian.addChild(A3);
  Alfian.addChild(A4);
  Alfian.addChild(A5);
  Alfian.addChild(A6);
  Alfian.addChild(A7);
  Alfian.addChild(A8);
  Alfian.addChild(A9);
  
  // Huruf N
  PShape Mdepan = createShape();
  Mdepan.beginShape();
  Mdepan.vertex(320, 0, 0);    // Mulai dari (320, 0)
  Mdepan.vertex(320, 300, 0);  // Turun ke bawah sampai (320, 300)
  Mdepan.vertex(400, 300, 0);  // Ke kanan ke (360, 300)
  Mdepan.vertex(400, 150, 0);  // Naik ke tengah ke (360, 140)
  Mdepan.vertex(470, 300, 0);  // Ke kanan dan ke bawah sampai (450, 300)
  Mdepan.vertex(530, 300, 0);  // Ke kanan lagi sampai (510, 300)
  Mdepan.vertex(600, 150, 0);  // Naik ke tengah ke (600, 140)
  Mdepan.vertex(600, 300, 0);  // Turun lagi sampai (600, 300)
  Mdepan.vertex(680, 300, 0);  // Ke kanan sampai (640, 300)
  Mdepan.vertex(680, 0, 0);    // Naik ke atas kembali ke (640, 0)
  Mdepan.vertex(590, 0, 0);    // Ke kiri sampai (550, 0)
  Mdepan.vertex(500, 180, 0);  // Turun ke bawah ke titik tengah (480, 220)
  Mdepan.vertex(410, 0, 0);    // Naik lagi ke atas (410, 0)
  Mdepan.endShape(CLOSE);
  
  PShape Mbelakang = createShape();
  Mbelakang.beginShape();
  Mbelakang.vertex(320, 0, -50);
  Mbelakang.vertex(320, 300, -50);
  Mbelakang.vertex(400, 300, -50);
  Mbelakang.vertex(400, 150, -50);
  Mbelakang.vertex(470, 300, -50);
  Mbelakang.vertex(530, 300, -50);
  Mbelakang.vertex(600, 150, -50);
  Mbelakang.vertex(600, 300, -50);
  Mbelakang.vertex(680, 300, -50);
  Mbelakang.vertex(680, 0, -50);
  Mbelakang.vertex(590, 0, -50);
  Mbelakang.vertex(500, 180, -50);
  Mbelakang.vertex(410, 0, -50);
  Mbelakang.endShape(CLOSE);
  
 PShape M1 = createShape();
  M1.beginShape();
  addDepth(M1, 320, 0, 0, 320, 300, 0, 320, 300, -50, 320, 0, -50);
  M1.endShape(CLOSE);

  PShape M2 = createShape();
  M2.beginShape();
  addDepth(M2, 320, 300, 0, 400, 300, 0, 400, 300, -50, 320, 300, -50);
  M2.endShape(CLOSE);

  PShape M3 = createShape();
  M3.beginShape();
  addDepth(M3, 400, 300, 0, 400, 150, 0, 400, 150, -50, 400, 300, -50);
  M3.endShape(CLOSE);

  PShape M4 = createShape();
  M4.beginShape();
  addDepth(M4, 400, 150, 0, 470, 300, 0, 470, 300, -50, 400, 150, -50);
  M4.endShape(CLOSE);

  PShape M5 = createShape();
  M5.beginShape();
  addDepth(M5, 470, 300, 0, 530, 300, 0, 530, 300, -50, 470, 300, -50);
  M5.endShape(CLOSE);

  PShape M6 = createShape();
  M6.beginShape();
  addDepth(M6, 530, 300, 0, 600, 150, 0, 600, 150, -50, 530, 300, -50);
  M6.endShape(CLOSE);

  PShape M7 = createShape();
  M7.beginShape();
  addDepth(M7, 600, 150, 0, 600, 300, 0, 600, 300, -50, 600, 150, -50);
  M7.endShape(CLOSE);

  PShape M8 = createShape();
  M8.beginShape();
  addDepth(M8, 600, 300, 0, 680, 300, 0, 680, 300, -50, 600, 300, -50);
  M8.endShape(CLOSE);

  PShape M9 = createShape();
  M9.beginShape();
  addDepth(M9, 680, 300, 0, 680, 0, 0, 680, 0, -50, 680, 300, -50);
  M9.endShape(CLOSE);

  PShape M10 = createShape();
  M10.beginShape();
  addDepth(M10, 680, 0, 0, 590, 0, 0, 590, 0, -50, 680, 0, -50);
  M10.endShape(CLOSE);

  PShape M11 = createShape();
  M11.beginShape();
  addDepth(M11, 590, 0, 0, 500, 180, 0, 500, 180, -50, 590, 0, -50);
  M11.endShape(CLOSE);

  PShape M12 = createShape();
  M12.beginShape();
  addDepth(M12, 500, 180, 0, 410, 0, 0, 410, 0, -50, 500, 180, -50);
  M12.endShape(CLOSE);

  PShape M13 = createShape();
  M13.beginShape();
  addDepth(M13, 410, 0, 0, 320, 0, 0, 320, 0, -50, 410, 0, -50);
  M13.endShape(CLOSE);

  Alfian.addChild(Mdepan);
  Alfian.addChild(Mbelakang);
  Alfian.addChild(M1);
  Alfian.addChild(M2);
  Alfian.addChild(M3);
  Alfian.addChild(M4);
  Alfian.addChild(M5);
  Alfian.addChild(M6);
  Alfian.addChild(M7);
  Alfian.addChild(M8);
  Alfian.addChild(M9);
  Alfian.addChild(M10);
  Alfian.addChild(M11);
  Alfian.addChild(M12);
  Alfian.addChild(M13);
  
  centerObject(Alfian);
}

void draw() {
  translate(width/2, height/2, 0);
  background(220);
  noStroke();
  
  if (upPressed) {
    pitch -= radians(1);
  }
  if (downPressed) {
    pitch += radians(1);
  }
  if (leftPressed) {
    yaw -= radians(1);
  }
  if (rightPressed) {
    yaw += radians(1);
  }
  
  if (ltPressed) {
    roll -= radians(1);
  }
  if (gtPressed) {
    roll += radians(1);
  }

  pitch = pitch % TWO_PI;
  yaw = yaw % TWO_PI;
  roll = roll % TWO_PI;
  
  rotateX(pitch);
  rotateY(yaw);
  rotateZ(roll);
  shape(Alfian);
}

void keyPressed() {
  if (key == 'w') {
    upPressed = true;
  }
  if (key == 's') {
    downPressed = true;
  }
  if (key == 'a') {
    leftPressed = true;
  }
  if (key == 'd') {
    rightPressed = true;
  }
  if (key == 'q') {
    ltPressed = true;
  }
  if (key == 'e') {
    gtPressed = true;
  }
}

void keyReleased() {
  if (key == 'w') {
    upPressed = false;
  }
  if (key == 's') {
    downPressed = false;
  }
  if (key == 'a') {
    leftPressed = false;
  }
  if (key == 'd') {
    rightPressed = false;
  }
  if (key == 'q') {
    ltPressed = false;
  }
  if (key == 'e') {
    gtPressed = false;
  }
}

void addDepth(PShape AM, float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, float x4, float y4, float z4){
  AM.vertex(x1, y1, z1);
  AM.vertex(x2, y2, z2);
  AM.vertex(x3, y3, z3);
  AM.vertex(x4, y4, z4);
  AM.vertex(x1, y1, z1);
}

void centerObject(PShape obj) {
  float minX = Float.MAX_VALUE;
  float minY = Float.MAX_VALUE;
  float minZ = Float.MAX_VALUE;
  float maxX = Float.MIN_VALUE;
  float maxY = Float.MIN_VALUE;
  float maxZ = Float.MIN_VALUE;
  
  for (int i = 0; i < obj.getChildCount(); i++) {
    PShape child = obj.getChild(i);
    for (int j = 0; j < child.getVertexCount(); j++) {
      PVector v = child.getVertex(j);
      minX = min(minX, v.x);
      minY = min(minY, v.y);
      minZ = min(minZ, v.z);
      maxX = max(maxX, v.x);
      maxY = max(maxY, v.y);
      maxZ = max(maxZ, v.z);
    }
  }
  
  float centerX = (minX + maxX) / 2;
  float centerY = (minY + maxY) / 2;
  float centerZ = (minZ + maxZ) / 2;
  
  obj.resetMatrix();
  obj.translate(-centerX, -centerY, -centerZ);
}
