Explication du fonctionnement des class
=======================================

comment créer une nouvelle classe :
-----------------------------------

```
class Voiture {
}
```

tout ce qui va se trouver a l'intérieur de { et } correspondra uniquemment a nos voitures.

comment créer une voiture :
---------------------------

Il faut d'abord décrire la construction de la voiture à l'intérieur de la class Voiture
```
class Voiture {
  Voiture(){
    //on ne met rien ici pour le moment
  }
}
```
Nous pouvons maintenant créer des voitures de la maniere suivante

```
Voiture maVoiture = new Voiture();
 /**
 * Le premier Voiture indique le type de la variable (ici on veut créer une voiture)
 * maVoiture est le nom de la variable
 * new Voiture() permet de créer la voiture a partir de la classe Voiture.
 **/
```


comment créer une voiture utile :
---------------------------------

Maintenant que nous avons vu comment créer une voiture essayons de voir comment ajouter des specificité a nos voitures
pour les différencier les unes des autres.

```
class Voiture {

  /**
  *   On prévoit ici que notre voiture possède un nombre de siege.
  *   Mais on ne sait pas encore combien (ca dépendra d'une voiture à l'autre)
  **/

  int nombreDeSieges;

  /**
  * cette function est appellée lorsqu'on crée une nouvelle voiture.
  * new Voiture(8) va donc entrainer nombreDeSieges = 8 au début de cette fonction.
  **/
  Voiture(int nombreDeSieges){
    /**
    * this fait référence a la voiture que nous sommes entrain de créer.
    * grace a ce code on applique a la voiture le nombre de sieges envoyé en parametres lors de new Voiture(8)
    **/
    this.nombreDeSieges = nombreDeSieges;
  }
}
```

Maintenant nous pouvons créer différentes voitures
```
Voiture amauryCar = new Voiture(4); //une voiture a 4 sièges
Voiture amauryCar2 = new Voiture(6); //une voiture à 6 sièges
```


comment créer des méthodes de classes :
---------------------------------------

améliorons un peu notre classe voiture :
```
class Voiture {

  int nombreDeSieges;

  Voiture(int nombreDeSieges){
    this.nombreDeSieges = nombreDeSieges;
  }

  /**
  * on veut renvoyer un int donc on commence la fonction par le mot clef int.
  * on ajoute ensuite le nom qu'on souhaite donner a la fonction, et le morceau de code correspondant
  **/
  int getNombreDeSieges(){
    // on renvoie le nombre de sieges
    return this.nombreDeSieges;
  }

  // on veut simplement changer le nombre de sieges, on ne renvoie rien donc on utilise le mot clef void
  void setNombreDeSieges(int nouveauNombreDeSieges){
    //on change de nombre de sieges
    this.nombreDeSieges = nouveauNombreDeSieges;
  }
}
```

on peut maintenant savoir a tout moment combien de sieges a la voiture et changer le nombre de sieges.

```
Voiture amauryCar = new Voiture(4); //une voiture a 4 sièges
Voiture amauryCar2 = new Voiture(6); //une voiture à 6 sièges

amauryCar.getNombreDeSieges() //renvoie le nombre 4
amauryCar2.getNombreDeSieges() //renvoie le nombre 6

amauryCar.setNombreDeSieges(10) // change le nombre de sieges a 10

amauryCar.getNombreDeSieges() // renvoie le nombre 10
```

Félicitations vous etes maintenant prêt a manipuler des classes :)
