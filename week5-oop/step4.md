# Étape 4 : Défi - Système de Gestion

`cd /root/semaine5_dart`{{execute}}

## Projet : Gestion de Personnel

`nano personnel.dart`{{execute}}

```dart
class Personne {
  String nom;
  int age;
  
  Personne(this.nom, this.age);
  
  void afficher() {
    print('Nom: $nom, Age: $age');
  }
}

class Employe extends Personne {
  String poste;
  double salaire;
  
  Employe(String nom, int age, this.poste, this.salaire) 
    : super(nom, age);
  
  @override
  void afficher() {
    super.afficher();
    print('Poste: $poste, Salaire: $salaire€');
  }
}

void main() {
  List<Employe> employes = [
    Employe('Marie', 25, 'Développeur', 45000),
    Employe('Pierre', 30, 'Manager', 60000),
  ];
  
  for (var emp in employes) {
    emp.afficher();
    print('---');
  }
}
```

Ctrl+O, Entrée, Ctrl+X  
`dart personnel.dart`{{execute}}

**POO maîtrisée. Prêt pour Flutter.**

**Cliquez sur "Continuer".**

