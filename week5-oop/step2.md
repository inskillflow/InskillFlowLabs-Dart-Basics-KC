# Étape 2 : Constructeurs Avancés

## Constructeurs Nommés

```dart
class Point {
  double x;
  double y;
  
  // Constructeur par défaut
  Point(this.x, this.y);
  
  // Constructeur nommé
  Point.origine() : x = 0, y = 0;
  Point.unitaire() : x = 1, y = 1;
}

void main() {
  Point p1 = Point(5, 10);
  Point p2 = Point.origine();
  Point p3 = Point.unitaire();
}
```

## Getters et Setters

```dart
class Rectangle {
  double longueur;
  double largeur;
  
  Rectangle(this.longueur, this.largeur);
  
  // Getter
  double get aire => longueur * largeur;
  
  // Setter
  set dimensions(List<double> dims) {
    longueur = dims[0];
    largeur = dims[1];
  }
}
```

## Propriétés Privées

```dart
class CompteBancaire {
  String _numero;  // _ = privé
  double _solde;
  
  CompteBancaire(this._numero, this._solde);
  
  double get solde => _solde;
  
  void deposer(double montant) {
    _solde += montant;
  }
}
```

**Cliquez sur "Continuer".**

