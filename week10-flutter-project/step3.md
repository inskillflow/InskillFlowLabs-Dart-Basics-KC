# Étape 3 : Page de Détails Produit

## Navigation vers Détails

```dart
// Depuis le catalogue
onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PageDetails(produit: produits[index]),
    ),
  );
}
```

## Page Détails

**Code complet :**

```dart
class PageDetails extends StatelessWidget {
  final Produit produit;
  
  PageDetails({required this.produit});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(produit.nom),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 250,
            color: Colors.grey.shade200,
            child: Icon(Icons.shopping_bag, size: 100, color: Colors.grey),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(produit.nom, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text('${produit.prix}€', style: TextStyle(fontSize: 24, color: Colors.green)),
                SizedBox(height: 20),
                Text(produit.description, style: TextStyle(fontSize: 16)),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Ajouter au panier
                      Navigator.pop(context);
                    },
                    child: Text('Ajouter au panier'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                    ),
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

**Page détails avec retour.**

**Cliquez sur "Continuer".**

