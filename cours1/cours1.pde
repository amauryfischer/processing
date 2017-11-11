/**
* !IMPORTANT!
* Si vous ne connaissez pas les classes lisez ceci :
* https://github.com/amauryfischer/processing/tree/master/class
* n'hésitez pas a me faire des remontées si vous ne comprenez pas
* bon chance :p
**/

//On crée une classe nommée Ball
class Ball {
  
 // la classe possède 4 proprietes, sa position x et y et son vecteur vitesse x et y
 float x, y, dx, dy;
 
 //constructeur de la classe, décrivant la maniere dont est crée une nouvelle balle (avec new Ball() )
 Ball() {
 this.x = random( width ); //le x de cette balle prend une valeur aléatoire entre 0 et width
 this.y = random( height );
 this.dx = random(-5,5);//le vecteur vitesse dx de cette balle prend une valeur aléatoire entre -5 et 5
 this.dy = random(-5,5);
 }
 
 // myBall.getX() renverra la position en X de la balle
 float getX() {
  return this.x;
 }
 
 // myBall.getY() renverra la position en Y de la balle
 float getY() {
  return this.y;
 }
 
 // myBall.getDX() renverra le vecteur vitesse en X (dx) de la balle
 float getDX() {
  return this.dx;
 }
 
 // myBall.getDY() renverra le vecteur vitesse en Y (dy) de la balle
 float getDY() {
  return this.dy;
 }
 
 //fonction que l'on prévoie d'appeller chaque fois qu'on veut faire bouger une balle.
 //on peut l'appeller avec myBall.move()
 void move() {
   // on augmente x de dx pour faire avancer la balle dans la bonne direction (pareil pour y)
   this.x = this.x + this.dx;
   this.y = this.y + this.dy;
   
   /**
   * on veut éviter que la balle sorte de l'écran, donc si on atteint un bord,
   * on change la direction en multipliant le vecteur vitesse par -1
   * (du coup le prochain myBall.move() fera bouger la direction dans l'autre sens)
   **/
   
   // la position de la balle sort de l'écran quand sa position est plus petite que 0 ou plus grande que le max.
   float balle_et_rayon_x = this.x - HALF_SIZE_BALL;
   float balle_moins_rayon_x = this.x + HALF_SIZE_BALL;
   if (balle_et_rayon_x <= 0 || balle_moins_rayon_x >= width) {
     this.dx = (-1) * this.dx;
   }
   
   // paeil pour Y
   float balle_et_rayon_y = this.y - HALF_SIZE_BALL;
   float balle_moins_rayon_y = this.y + HALF_SIZE_BALL;
   if (balle_et_rayon_y <= 0 || balle_moins_rayon_y >= height) {
     this.dy = (-1) * this.dy;
   }
 }
 
}
// on en a finis avec la classe Ball

//On crée plusieurs variables accessible partout dans le code
Ball balls[]; //correspond a un tableau de balles
int BALLS = 10; //on prévoit d'avoir 10 balles
int HALF_SIZE_BALL = 10; //on prévoit une taille de balles de 20

//la fonction setup est appellée au démarrage du programme
void setup() {
 size(640,480);// on définit la taille de l'écran
 
 balls = new Ball[BALLS];// on crée un nouveau tableau de Balle de taille 10 (car BALLS = 10)
 // ATTENTION ici le tableau existe mais il n'est pas encore remplis de balle
 
 //on remplis le tableau de balle
 for ( int i =0; i < BALLS; i++) {
 balls[i] = new Ball();//a chaque itération on crée une balle dans le tableau.
 // itération 1   balls=[Ball,rien,rien,rien...rien]
 // itération 2 balls=[Ball,Ball,rien.....rien] etc...
 }
 frameRate( 25 );//on définit la vitesse de rafraichissement
 smooth();// ca devient plus jolie... enfin je crois...
}

//la fonction draw() est appellée en permanence tant que le programme tourne
void draw() {
 background(0);//ATTENTION on dessine un écran noir cela permet notamment d'effacer les anciens dessins du précédant draw()
 
 //on veut que chaque boule bouge, donc petite boucle for :
 for ( int i =0; i < BALLS; i++) {
   /**
   * On appelle move() sur la balle actuelle qui va (comme on l'a définis avant)
   * 1) avancer la balle
   * 2) changer la direction si on est sortit de l'écran
   **/
   balls[i].move();
   
   //on dessine la balle a partir de sa position X et Y actuelle qui viennent d'etre changé par move()
   ellipse(balls[i].getX(),balls[i].getY(),HALF_SIZE_BALL*2,HALF_SIZE_BALL*2);
 }
}