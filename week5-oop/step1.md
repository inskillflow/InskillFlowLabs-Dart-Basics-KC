# Étape 1 : Classes et Objets

`cd /root/semaine5_dart`{{execute}}

## Définir une Classe

```dart
class NomClasse {
  // Propriétés (variables)
  Type propriete1;
  Type propriete2;
  
  // Constructeur
  NomClasse(this.propriete1, this.propriete2);
  
  // Méthodes (fonctions)
  void faireQuelqueChose() {
    // Code
  }
}
```

## Exemple : Classe Produit

`nano produit.dart`{{execute}}

```dart
class Produit {
  String nom;
  double prix;
  int stock;
  
  Produit(this.nom, this.prix, this.stock);
  
  void afficher() {
    print('Produit: $nom');
    print('Prix: $prix€');
    print('Stock: $stock unités');
  }
  
  double calculerTotal() {
    return prix * stock;
  }
  
  bool estDisponible() {
    return stock > 0;
  }
}

void main() {
  Produit iphone = Produit('iPhone 15', 999.99, 10);
  iphone.afficher();
  
  print('Valeur stock: ${iphone.calculerTotal()}€');
  print('Disponible: ${iphone.estDisponible()}');
}
```

Ctrl+O, Entrée, Ctrl+X  
`dart produit.dart`{{execute}}

## Préparation Flutter

```dart
// Console
class Produit {
  String nom;
  double prix;
  Produit(this.nom, this.prix);
}

// Flutter
class ProduitWidget extends StatelessWidget {
  final Produit produit;
  
  ProduitWidget({required this.produit});
  
  Widget build(context) {
    return Card(
      child: Text(produit.nom),
    );
  }
}
```

**Même concept de classe.**

**Cliquez sur "Continuer".**

