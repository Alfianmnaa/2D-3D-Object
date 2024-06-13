PShape Alfian;
float tx = -350, ty = -200; // Translasi
float speed = 2; // Kecepatan translasi
float angle = 0; // Rotasi
float angleSpeed = PI / 180; // Kecepatan rotasi
float scaleFactor = 1; // Scaling
float scaleSpeed = 0.01; // Kecepatan scaling
boolean mirror = false; // Mirroring
boolean mPressed = false; // Status tombol 'm'

void setup() {
  size(1200, 1000);
  Alfian = createShape(GROUP);
  PShape a1 = createShape();
  a1.beginShape();
  // Membuat huruf "A" besar menggunakan vertex
  a1.vertex(120, 0);
  a1.vertex(0, 300);  
  a1.vertex(80, 300);  
  a1.vertex(150, 90);
  a1.vertex(220, 300);
  a1.vertex(300, 300);
  a1.vertex(180, 0);
  a1.endShape(CLOSE);

  // Membuat penghubung di tengah huruf "A"
  PShape a2 = createShape();
  a2.beginShape();
  a2.vertex(123, 170);
  a2.vertex(103, 230);
  a2.vertex(196, 230);
  a2.vertex(176, 170);
  a2.endShape(CLOSE);
  
   //Huruf M
  PShape m = createShape();
  m.beginShape();
  m.vertex(320, 0);    // Mulai dari (320, 0)
  m.vertex(320, 300);  // Turun ke bawah sampai (320, 300)
  m.vertex(400, 300);  // Ke kanan ke (360, 300)
  m.vertex(400, 150);  // Naik ke tengah ke (360, 140)
  m.vertex(470, 300);  // Ke kanan dan ke bawah sampai (450, 300)
  m.vertex(530, 300);  // Ke kanan lagi sampai (510, 300)
  m.vertex(600, 150);  // Naik ke tengah ke (600, 140)
  m.vertex(600, 300);  // Turun lagi sampai (600, 300)
  m.vertex(680, 300);  // Ke kanan sampai (640, 300)
  m.vertex(680, 0);    // Naik ke atas kembali ke (640, 0)
  m.vertex(590, 0);    // Ke kiri sampai (550, 0)
  m.vertex(500, 180);  // Turun ke bawah ke titik tengah (480, 220)
  m.vertex(410, 0);    // Naik lagi ke atas (410, 0)
  m.endShape(CLOSE);
  
  // Menggabungkan shape
  Alfian.addChild(a1);
  Alfian.addChild(a2);
  Alfian.addChild(m);
}

void draw() {
  background(255);
  
  // Periksa tombol yang ditekan dan sesuaikan transformasi
  if (keyPressed) {
    if (key == 'w') {
      ty -= speed; // Translasi ke atas
    } else if (key == 's') {
      ty += speed; // Translasi ke bawah
    } else if (key == 'a') {
      tx -= speed; // Translasi ke kiri
    } else if (key == 'd') {
      tx += speed; // Translasi ke kanan
    } else if (key == 'r') {
      angle += angleSpeed; // Rotasi searah jarum jam
    } else if (key == 't') {
      angle -= angleSpeed; // Rotasi berlawanan arah jarum jam
    } else if (key == 'f') {
      scaleFactor += scaleSpeed; // Perbesar ukuran
    } else if (key == 'g') {
      scaleFactor -= scaleSpeed; // Perkecil ukuran
    } else if (key == 'm' && !mPressed) {
      mirror = !mirror; // Aktifkan/Nonaktifkan mirroring
      mPressed = true; // Set mPressed menjadi true
    }
  } else {
    mPressed = false; // Set mPressed menjadi false saat tidak ada tombol ditekan
  }
  
  translate(width / 2 + tx, height / 2 + ty); // Translasi
  rotate(angle); // Rotasi
  scale(scaleFactor, mirror ? -scaleFactor : scaleFactor); // Scaling dan Mirroring
  
  shape(Alfian, 0, 0); // Menampilkan huruf "A"
}

void mouseMoved() {
  // Cetak koordinat mouse ke konsol saat mouse bergerak
  println("Mouse position: (" + mouseX + ", " + mouseY + ")");
}
