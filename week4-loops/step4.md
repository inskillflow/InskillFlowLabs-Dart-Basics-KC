# Étape 4 : Défi - Analyseur de Données

`cd /root/semaine4_dart`{{execute}}

## Projet : Analyseur de Ventes

`nano analyseur.dart`{{execute}}

```dart
void main() {
  List<Map<String, dynamic>> ventes = [
    {'produit': 'iPhone', 'quantite': 5, 'prix': 999.99},
    {'produit': 'iPad', 'quantite': 3, 'prix': 599.99},
    {'produit': 'MacBook', 'quantite': 2, 'prix': 1499.99},
  ];
  
  print('=== RAPPORT DE VENTES ===\n');
  
  // Total des ventes
  double total = 0;
  for (var vente in ventes) {
    double montant = vente['quantite'] * vente['prix'];
    total += montant;
    print('${vente['produit']}: ${montant.toStringAsFixed(2)}€');
  }
  
  print('\nTotal: ${total.toStringAsFixed(2)}€');
  
  // Produit le plus vendu
  var plusVendu = ventes.reduce((a, b) => 
    a['quantite'] > b['quantite'] ? a : b
  );
  print('Plus vendu: ${plusVendu['produit']}');
}
```

Ctrl+O, Entrée, Ctrl+X  
`dart analyseur.dart`{{execute}}

**Félicitations. Projet complet.**

**Cliquez sur "Continuer".**

