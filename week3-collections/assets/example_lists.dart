// Exemples de Lists en Dart

void main() {
  print('=== EXEMPLES DE LISTS ===\n');
  
  // Création
  List<String> fruits = ['Pomme', 'Banane', 'Orange'];
  List<int> nombres = [1, 2, 3, 4, 5];
  
  // Accès
  print('Premier fruit: ${fruits[0]}');
  print('Dernier fruit: ${fruits[fruits.length - 1]}');
  
  // Modification
  fruits.add('Kiwi');
  fruits.insert(1, 'Mangue');
  fruits.remove('Banane');
  
  print('Fruits: $fruits');
  
  // Méthodes
  print('Contient Pomme? ${fruits.contains("Pomme")}');
  print('Index de Orange: ${fruits.indexOf("Orange")}');
  
  // Itération
  print('\nTous les fruits:');
  for (var fruit in fruits) {
    print('- $fruit');
  }
}

