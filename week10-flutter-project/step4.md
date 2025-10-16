# Étape 4 : Application E-Commerce Complète

## Code Final Complet

**Application avec :**
- Catalogue produits
- Navigation vers détails
- Panier fonctionnel
- Total calculé

**Exécutez dans DartPad :**

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ECommerceApp()));

class Produit {
  final int id;
  final String nom;
  final double prix;
  final String description;
  
  Produit({required this.id, required this.nom, required this.prix, required this.description});
}

class ECommerceApp extends StatefulWidget {
  @override
  State<ECommerceApp> createState() => _ECommerceAppState();
}

class _ECommerceAppState extends State<ECommerceApp> {
  final List<Produit> produits = [
    Produit(id: 1, nom: 'iPhone 15', prix: 999.99, description: 'Smartphone Apple'),
    Produit(id: 2, nom: 'iPad Air', prix: 599.99, description: 'Tablette Apple'),
    Produit(id: 3, nom: 'MacBook Pro', prix: 1499.99, description: 'Ordinateur portable'),
    Produit(id: 4, nom: 'AirPods Pro', prix: 249.99, description: 'Écouteurs sans fil'),
  ];
  
  List<Produit> panier = [];
  
  void ajouterAuPanier(Produit p) {
    setState(() {
      panier.add(p);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${p.nom} ajouté au panier')),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ma Boutique'),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: Stack(
              children: [
                Icon(Icons.shopping_cart),
                if (panier.isNotEmpty)
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: BoxConstraints(minWidth: 16, minHeight: 16),
                      child: Text(
                        '${panier.length}',
                        style: TextStyle(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PagePanier(panier: panier)),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: produits.length,
        itemBuilder: (context, index) {
          final p = produits[index];
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey.shade200,
                    child: Center(child: Icon(Icons.shopping_bag, size: 60)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(p.nom, style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('${p.prix}€', style: TextStyle(color: Colors.green)),
                      SizedBox(height: 5),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => ajouterAuPanier(p),
                          child: Text('Ajouter'),
                          style: ElevatedButton.styleFrom(padding: EdgeInsets.all(8)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class PagePanier extends StatelessWidget {
  final List<Produit> panier;
  
  PagePanier({required this.panier});
  
  @override
  Widget build(BuildContext context) {
    double total = panier.fold(0, (sum, p) => sum + p.prix);
    
    return Scaffold(
      appBar: AppBar(title: Text('Panier')),
      body: panier.isEmpty
        ? Center(child: Text('Panier vide'))
        : Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: panier.length,
                  itemBuilder: (context, index) {
                    final p = panier[index];
                    return ListTile(
                      title: Text(p.nom),
                      subtitle: Text('${p.prix}€'),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.grey.shade200,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total:', style: TextStyle(fontSize: 20)),
                        Text('${total.toStringAsFixed(2)}€', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Commander'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
    );
  }
}
```

**Application e-commerce fonctionnelle.**

**Félicitations ! Projet final terminé.**

**Cliquez sur "Continuer".**

