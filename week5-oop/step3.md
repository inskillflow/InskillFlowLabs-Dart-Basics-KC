# Étape 3 : Héritage

## Concept d'Héritage

Classe enfant hérite de classe parente.

```dart
class Animal {
  String nom;
  
  Animal(this.nom);
  
  void faireDuBruit() {
    print('Son générique');
  }
}

class Chien extends Animal {
  Chien(String nom) : super(nom);
  
  @override
  void faireDuBruit() {
    print('$nom fait: Woof!');
  }
}

void main() {
  Chien rex = Chien('Rex');
  rex.faireDuBruit();  // Rex fait: Woof!
}
```

## Préparation Flutter

```dart
// Console
class Animal {
  void afficher() {}
}

class Chien extends Animal {
  @override
  void afficher() {}
}

// Flutter
class MonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Hello');
  }
}
```

**extends et @override partout en Flutter.**

**Cliquez sur "Continuer".**

