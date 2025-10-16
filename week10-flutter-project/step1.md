# Étape 1 : Catalogue de Produits

## Modèle de Données

```dart
class Produit {
  final int id;
  final String nom;
  final double prix;
  final String description;
  
  Produit({
    required this.id,
    required this.nom,
    required this.prix,
    required this.description,
  });
}
```

## Page Catalogue

**Code à exécuter dans DartPad :**

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: CataloguePage()));

class Produit {
  final int id;
  final String nom;
  final double prix;
  final String description;
  
  Produit({required this.id, required this.nom, required this.prix, required this.description});
}

class CataloguePage extends StatelessWidget {
  final List<Produit> produits = [
    Produit(id: 1, nom: 'iPhone 15', prix: 999.99, description: 'Smartphone Apple dernière génération'),
    Produit(id: 2, nom: 'iPad Air', prix: 599.99, description: 'Tablette Apple légère et puissante'),
    Produit(id: 3, nom: 'MacBook Pro', prix: 1499.99, description: 'Ordinateur portable professionnel'),
    Produit(id: 4, nom: 'AirPods Pro', prix: 249.99, description: 'Écouteurs sans fil avec réduction de bruit'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalogue Produits'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: produits.length,
        itemBuilder: (context, index) {
          final produit = produits[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.shopping_bag, color: Colors.deepPurple),
              ),
              title: Text(produit.nom, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('${produit.prix}€'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}
```

**Catalogue de 4 produits.**

**Cliquez sur "Continuer".**

