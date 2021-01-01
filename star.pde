class Star{
  float x;
  float y;
  float z;

  float pz;

  //color
  float red;
  float green;
  float blue;


  Star() {
  x = random(-width, width);
  y = random(-height, height);
  z = random(width);
  red = random(255);
  green = random(255);
  blue = random(255);
  }
  

  void update(){
    z = z - speed; //star moving speed;
    if(z < 1){
      z = width;
      x = random(-width, width);
      y = random(-height, height);
      pz = z;
    }
  }

  void show(){

    noStroke();
    float sx = map(x / z, 0, 1, 0, width );
    float sy = map(y / z, 0, 1, 0, height );


    float r = map(z, 0, width, 8, 0);
    fill(red, green, blue);
    //ellipse(sx, sy, r, r);

    float px = map(x / pz, 0, 1, 0, width );
    float py = map(y / pz, 0, 1, 0, height );
    
    pz = z;

    stroke(red, green, blue);
    line(px, py, sx, sy);
    px = x;
    py = y;
  }
}

