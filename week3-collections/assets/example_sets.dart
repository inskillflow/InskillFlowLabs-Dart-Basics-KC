// Exemples de Sets en Dart

void main() {
  print('=== EXEMPLES DE SETS ===\n');
  
  // Création
  Set<String> villes = {'Paris', 'Lyon', 'Marseille'};
  
  // Doublons automatiquement éliminés
  Set<int> nombres = {1, 2, 3, 2, 1};
  print('Set (sans doublons): $nombres');
  
  // Opérations ensemblistes
  Set<int> a = {1, 2, 3};
  Set<int> b = {3, 4, 5};
  
  print('A: $a');
  print('B: $b');
  print('Union: ${a.union(b)}');
  print('Intersection: ${a.intersection(b)}');
  print('Différence A-B: ${a.difference(b)}');
  
  // Éliminer doublons d'une List
  List<String> avecDoublons = ['A', 'B', 'A', 'C', 'B'];
  Set<String> sansDoublons = avecDoublons.toSet();
  
  print('\nAvec doublons: $avecDoublons');
  print('Sans doublons: $sansDoublons');
}

