# Flyweight

**Personne autrice : James Bélisle et Nola Bellerose** <br/>
**(optionnel) Patrons liés : Factory**

## Fonctionnement du patron

![patron de conception](https://refactoring.guru/images/patterns/diagrams/flyweight/solution3-en.png?id=e861e35c1214c46ac7333a127462de68)
Diagramme UML de la structure du patron

## Avantages et désavantages du patron

**Avantages**

- Permet une bonne performance lorsqu’on utilise beaucoup de fois le même objet dans le programme
  -Réduit l’utilisation de mémoire du programme

**Désavantages**

- Augmente la complexité (ajoute plus de classes et relations) du code.
- Peut être incompatible si les objets ne sont pas génériques ou réutilisés souvent (YAGNI)

## Exemple d'utilisation

![diagramme](https://i.imgur.com/LCc9ZfX.png)
###### figure 1: Diagramme UML de la structure d'une fourmilière
Dans la **figure 1**, la fourmillière est optimisée pour réutiliser des informations comme la taille, le type et la couleur de la fourmie. Dans un contexte d'un engin de jeu, on pourrait aussi y glisser le modèle 3d, la texture, etc.

## Dans un contexte de code
###### Exemple en Lua
```lua
local fourmi = Fourmi.new()

local fourmi_simulee1 = FourmiSimulee.new(fourmi) --passer la référence
local fourmi_simulee2 = FourmiSimulee.new(fourmi)
local fourmi_simulee3 = FourmiSimulee.new(fourmi) 

-- ici toutes les "fourmi_simulee" héritent de "fourmi" 
-- et partagent ses attributs
```
En centralisant les informations communes, il n'y a pas de duplication de variables primitives, ni 20 références vers le même objet. La référence vers "fourmi" sert à centraliser toutes ces variables en utilisant qu'une seule référence, ce qui est beaucoup plus léger.

## Exemples de classe
###### Exemples en C#
Fourmi.cs
```cs
Class Fourmi {
  private Color _color;
  private int _size;
  private TypeFourmi _type;

  Fourmi(){
    _color = new Color("red");
    _size = 4;
    _type = new Ouvriere(); //ouvrière est un type de fourmi
  }
}
```

FourmiSimulee.cs
```cs
Class FourmiSimulee {
  private Fourmi _modeleFourmi;
  private Vector3 _position;
  private int _niveauFaim;
  private int _niveauSante;

  FourmiSimulee(Fourmi f){
    _fourmi = f
    //initialisation du reste des propriétés
  }
}
```

Avec ces deux classes, il est possible d'économiser les bits dédié à chaque fourmi. Le constructeur ne fait que des nouvelles données pour ce qui est nécessaire.

Donc quand on ajoute une nouvelle fourmi, en réalité on ne fait qu'une fourmi simulée et on lui donne le modèle de la fourmilière. Autrement dit, `Fourmi` pourrait être renommé `ModeleFourmi`, puisque c'est essentiellement un modèle, pour donner ça:

```cs
Fourmi modeleFourmi = new Fourmi();

FourmiSimulee fourmi1 = new FourmiSimulee(modeleFourmi);
```
## Références

- Refactoring.Guru. (2026, January 1). Flyweight. https://refactoring.guru/design-patterns/flyweight
- GeeksforGeeks. (2026, May 7). Flyweight design pattern. GeeksforGeeks. https://www.geeksforgeeks.org/system-design/flyweight-design-pattern
- Hello Byte. (2024, July 27). Flyweight design Pattern: easy guide for beginners [Video]. YouTube. https://www.youtube.com/watch?v=6cj-VxC8CxI
