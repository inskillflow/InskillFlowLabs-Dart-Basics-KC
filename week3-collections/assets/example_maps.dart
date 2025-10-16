// Exemples de Maps en Dart

void main() {
  print('=== EXEMPLES DE MAPS ===\n');
  
  // Création
  Map<String, int> ages = {
    'Marie': 25,
    'Pierre': 30,
    'Julie': 28,
  };
  
  // Accès
  print('Age de Marie: ${ages['Marie']}');
  
  // Modification
  ages['Thomas'] = 35;  // Ajouter
  ages['Marie'] = 26;   // Modifier
  
  print('Ages: $ages');
  
  // Parcours
  print('\nTous les âges:');
  ages.forEach((nom, age) {
    print('$nom a $age ans');
  });
  
  // Map avec données structurées
  Map<String, dynamic> produit = {
    'nom': 'iPhone',
    'prix': 999.99,
    'stock': 10,
  };
  
  print('\nProduit: ${produit['nom']} - ${produit['prix']}€');
}

