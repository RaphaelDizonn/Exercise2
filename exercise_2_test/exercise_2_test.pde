PImage img1, img2, img3;
float x;
float velocity = 5;

void setup() {
  size(640, 480, P2D);
 img1 = loadImage("background.jpg");
  img2 = loadImage("randomhorse.png");
  img3 = loadImage("treepng.png"); 
  x = width/3;
  imageMode(CENTER);
}

void draw() {
    imageMode(CORNER);
  image(img1, 0, 0, width, height); 
  
  x += velocity;
  if (x > width/2 || x < 0) {
    velocity *= -1;
}
 image(img3, 520, 300, 100, 100);
 image(img3, 20, 300, 100, 100);
image(img3, 300, 300, 100, 100);
  for (int i=0; i<2; i++) {
  image(img2, x , 350 + (i * 50), 200, 100);
  

}
}
