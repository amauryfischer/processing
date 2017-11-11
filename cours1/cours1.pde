Ball balls[];
int BALLS = 10;
/**
 * 
**/
void setup() {
 size(640,480);
 balls = new Ball[BALLS];
 for ( int i =0; i < BALLS; i++) {
 balls[i] = new Ball( random( width ), random( height ), random(-2,2), random(-2,2));
 }
 frameRate( 25 );
 smooth();
}
void draw() {
 background(0);
 strokeWeight( 2 );
 for ( int i =0; i < BALLS; i++) {
   ellipse(balls[i].getX(),balls[i].getY(),10,10);
 }
}

class Ball {
 float x, y, dx, dy;
 Ball( float x, float y, float dx, float dy ) {
 this.x = x;
 this.y = y;
 this.dx = dx;
 this.dy = dy;
 }
 float getX() {
  return this.x;
 }
  float getY() {
  return this.x;
 }
  float getDX() {
  return this.x;
 }
  float getDY() {
  return this.x;
 }
 void move() {
   this.x = this.x + this.dx;
   this.y = this.y + this.dy;
 }
}