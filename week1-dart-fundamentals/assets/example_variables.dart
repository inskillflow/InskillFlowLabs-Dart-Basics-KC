// ============================================
// EXEMPLE: Variables et Types de Données
// ============================================
// Ce fichier démontre l'utilisation des différents types en Dart

void main() {
  print('=== EXEMPLES DE VARIABLES EN DART ===');
  print('');
  
  // ============================================
  // 1. NOMBRES ENTIERS (int)
  // ============================================
  print('--- Nombres Entiers (int) ---');
  int age = 25;
  int annee = 2025;
  int temperature = -5;
  int zero = 0;
  
  print('Age: $age');
  print('Année: $annee');
  print('Température: $temperature°C');
  print('Zéro: $zero');
  print('');
  
  // ============================================
  // 2. NOMBRES DÉCIMAUX (double)
  // ============================================
  print('--- Nombres Décimaux (double) ---');
  double prix = 19.99;
  double taille = 1.75;
  double pi = 3.14159;
  
  print('Prix: $prix €');
  print('Taille: $taille m');
  print('Pi: $pi');
  print('');
  
  // ============================================
  // 3. TEXTE (String)
  // ============================================
  print('--- Texte (String) ---');
  String prenom = 'Julie';
  String nom = "Dupont";  // Guillemets simples ou doubles
  String ville = 'Paris';
  String message = 'Bonjour tout le monde!';
  
  print('Prénom: $prenom');
  print('Nom: $nom');
  print('Ville: $ville');
  print('Message: $message');
  print('');
  
  // ============================================
  // 4. BOOLÉENS (bool)
  // ============================================
  print('--- Booléens (bool) ---');
  bool estMajeur = true;
  bool estEnLigne = false;
  bool aTermine = true;
  
  print('Est majeur: $estMajeur');
  print('Est en ligne: $estEnLigne');
  print('A terminé: $aTermine');
  print('');
  
  // ============================================
  // 5. VARIABLE AUTOMATIQUE (var)
  // ============================================
  print('--- Variables avec var ---');
  var nombre = 42;              // Dart comprend: int
  var texte = 'Hello';          // Dart comprend: String
  var decimal = 3.14;           // Dart comprend: double
  var actif = true;             // Dart comprend: bool
  
  print('Nombre (var → int): $nombre');
  print('Texte (var → String): $texte');
  print('Décimal (var → double): $decimal');
  print('Actif (var → bool): $actif');
  print('');
  
  // ============================================
  // 6. OPÉRATIONS MATHÉMATIQUES
  // ============================================
  print('--- Opérations Mathématiques ---');
  int a = 10;
  int b = 3;
  
  print('a = $a, b = $b');
  print('Addition: $a + $b = ${a + b}');
  print('Soustraction: $a - $b = ${a - b}');
  print('Multiplication: $a × $b = ${a * b}');
  print('Division: $a ÷ $b = ${a / b}');
  print('Division entière: $a ~/ $b = ${a ~/ b}');
  print('Modulo (reste): $a % $b = ${a % b}');
  print('');
  
  // ============================================
  // 7. INTERPOLATION DE STRING
  // ============================================
  print('--- Interpolation de String ---');
  String nomComplet = '$prenom $nom';
  print('Nom complet: $nomComplet');
  print('Dans 5 ans, j\'aurai ${age + 5} ans');
  print('Le double de $nombre est ${nombre * 2}');
  print('');
  
  // ============================================
  // 8. MODIFICATION DE VARIABLES
  // ============================================
  print('--- Modification de Variables ---');
  int compteur = 0;
  print('Compteur initial: $compteur');
  
  compteur = 5;
  print('Après modification: $compteur');
  
  compteur = compteur + 10;
  print('Après ajout de 10: $compteur');
  print('');
  
  // ============================================
  // MESSAGE FINAL
  // ============================================
  print('========================================');
  print('Vous connaissez maintenant tous les types de base en Dart!');
}

