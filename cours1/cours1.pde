Ball balls[];
int BALLS = 10;
int HALF_SIZE_BALL = 10;
/**
 * 
**/
void setup() {
 size(640,480);
 balls = new Ball[BALLS];
 for ( int i =0; i < BALLS; i++) {
 balls[i] = new Ball();
 }
 frameRate( 25 );
 smooth();
}
void draw() {
 background(0);
 strokeWeight( 2 );
 for ( int i =0; i < BALLS; i++) {
   balls[i].move();
   ellipse(balls[i].getX(),balls[i].getY(),HALF_SIZE_BALL*2,HALF_SIZE_BALL*2);
 }
}

class Ball {
 float x, y, dx, dy;
 Ball() {
 this.x = random( width );
 this.y = random( height );
 this.dx = random(-5,5);
 this.dy = random(-5,5);
 }
 float getX() {
  return this.x;
 }
  float getY() {
  return this.y;
 }
  float getDX() {
  return this.dx;
 }
  float getDY() {
  return this.dy;
 }
 void move() {
   this.x = this.x + this.dx;
   this.y = this.y + this.dy;
   if (this.x <= (0+HALF_SIZE_BALL) || this.x >= (width-HALF_SIZE_BALL)) {
     this.dx = (-1) * this.dx;
   }
   if (this.y <= (0+HALF_SIZE_BALL) || this.y >= (height-HALF_SIZE_BALL)) {
     this.dy = (-1) * this.dy;
   }
 }
}