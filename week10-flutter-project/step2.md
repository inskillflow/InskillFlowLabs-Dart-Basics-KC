# Étape 2 : Panier d'Achat

## Gérer le Panier avec setState

**Application complète avec panier :**

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: AppPanier()));

class Produit {
  final int id;
  final String nom;
  final double prix;
  
  Produit({required this.id, required this.nom, required this.prix});
}

class AppPanier extends StatefulWidget {
  @override
  State<AppPanier> createState() => _AppPanierState();
}

class _AppPanierState extends State<AppPanier> {
  final List<Produit> produits = [
    Produit(id: 1, nom: 'iPhone', prix: 999.99),
    Produit(id: 2, nom: 'iPad', prix: 599.99),
    Produit(id: 3, nom: 'MacBook', prix: 1499.99),
  ];
  
  List<Produit> panier = [];
  
  void ajouterAuPanier(Produit produit) {
    setState(() {
      panier.add(produit);
    });
  }
  
  void retirerDuPanier(int index) {
    setState(() {
      panier.removeAt(index);
    });
  }
  
  double get total {
    double somme = 0;
    for (var p in panier) {
      somme += p.prix;
    }
    return somme;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ma Boutique'),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text('Panier: ${panier.length}', style: TextStyle(fontSize: 16)),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: produits.length,
              itemBuilder: (context, index) {
                final p = produits[index];
                return ListTile(
                  title: Text(p.nom),
                  subtitle: Text('${p.prix}€'),
                  trailing: IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    onPressed: () => ajouterAuPanier(p),
                  ),
                );
              },
            ),
          ),
          if (panier.isNotEmpty)
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.grey.shade200,
              child: Column(
                children: [
                  Text('Panier (${panier.length} articles)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  ...panier.asMap().entries.map((entry) {
                    int idx = entry.key;
                    Produit p = entry.value;
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(p.nom),
                        Row(
                          children: [
                            Text('${p.prix}€'),
                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () => retirerDuPanier(idx),
                            ),
                          ],
                        ),
                      ],
                    );
                  }).toList(),
                  Divider(),
                  Text('Total: ${total.toStringAsFixed(2)}€', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
```

**Application avec panier fonctionnel.**

**Cliquez sur "Continuer".**

