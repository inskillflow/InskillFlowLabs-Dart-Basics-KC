// ============================================
// EXEMPLE: Fonctions en Dart
// ============================================
// Ce fichier démontre différents types de fonctions

// ============================================
// 1. FONCTION SIMPLE (void, sans paramètres)
// ============================================
void afficherBienvenue() {
  print('╔════════════════════════════════╗');
  print('║   Bienvenue en Dart!           ║');
  print('╚════════════════════════════════╝');
}

// ============================================
// 2. FONCTION AVEC UN PARAMÈTRE
// ============================================
void direBonjour(String nom) {
  print('Bonjour $nom! Ravi de vous voir!');
}

// ============================================
// 3. FONCTION AVEC PLUSIEURS PARAMÈTRES
// ============================================
void presenterPersonne(String nom, int age, String ville) {
  print('Je m\'appelle $nom.');
  print('J\'ai $age ans.');
  print('J\'habite à $ville.');
}

// ============================================
// 4. FONCTION AVEC RETOUR (int)
// ============================================
int additionner(int a, int b) {
  return a + b;
}

int multiplier(int a, int b) {
  return a * b;
}

// ============================================
// 5. FONCTION AVEC RETOUR (double)
// ============================================
double calculerMoyenne(double note1, double note2, double note3) {
  double total = note1 + note2 + note3;
  double moyenne = total / 3;
  return moyenne;
}

// ============================================
// 6. FONCTION AVEC RETOUR (String)
// ============================================
String creerSalutation(String nom, String moment) {
  if (moment == 'matin') {
    return 'Bonjour $nom! Bonne journée!';
  } else if (moment == 'soir') {
    return 'Bonsoir $nom! Bonne soirée!';
  } else {
    return 'Salut $nom!';
  }
}

// ============================================
// 7. FONCTION AVEC RETOUR (bool)
// ============================================
bool estPair(int nombre) {
  return nombre % 2 == 0;
}

bool estMajeur(int age) {
  return age >= 18;
}

// ============================================
// 8. FONCTIONS MATHÉMATIQUES
// ============================================
int carre(int nombre) {
  return nombre * nombre;
}

int cube(int nombre) {
  return nombre * nombre * nombre;
}

double calculerAire(double longueur, double largeur) {
  return longueur * largeur;
}

double calculerPerimetre(double longueur, double largeur) {
  return 2 * (longueur + largeur);
}

// ============================================
// 9. FONCTION QUI APPELLE D'AUTRES FONCTIONS
// ============================================
void afficherInfosRectangle(double longueur, double largeur) {
  print('Rectangle:');
  print('  Longueur: $longueur cm');
  print('  Largeur: $largeur cm');
  print('  Aire: ${calculerAire(longueur, largeur)} cm²');
  print('  Périmètre: ${calculerPerimetre(longueur, largeur)} cm');
}

// ============================================
// 10. FONCTION AVEC PARAMÈTRES NOMMÉS
// ============================================
void creerProfil({required String nom, required int age, String ville = 'Inconnue'}) {
  print('--- PROFIL ---');
  print('Nom: $nom');
  print('Age: $age ans');
  print('Ville: $ville');
}

// ============================================
// PROGRAMME PRINCIPAL
// ============================================
void main() {
  print('=== EXEMPLES DE FONCTIONS EN DART ===');
  print('');
  
  // Test 1: Fonction simple
  print('--- Test 1: Fonction simple ---');
  afficherBienvenue();
  print('');
  
  // Test 2: Fonction avec paramètre
  print('--- Test 2: Fonction avec paramètre ---');
  direBonjour('Julie');
  direBonjour('Marc');
  print('');
  
  // Test 3: Fonction avec plusieurs paramètres
  print('--- Test 3: Plusieurs paramètres ---');
  presenterPersonne('Sophie', 25, 'Lyon');
  print('');
  
  // Test 4: Fonctions avec retour (int)
  print('--- Test 4: Retour int ---');
  int somme = additionner(5, 3);
  int produit = multiplier(5, 3);
  print('5 + 3 = $somme');
  print('5 × 3 = $produit');
  print('');
  
  // Test 5: Fonction avec retour (double)
  print('--- Test 5: Retour double ---');
  double moyenne = calculerMoyenne(15.5, 17.0, 14.5);
  print('Moyenne: ${moyenne.toStringAsFixed(2)}');
  print('');
  
  // Test 6: Fonction avec retour (String)
  print('--- Test 6: Retour String ---');
  String msg1 = creerSalutation('Julie', 'matin');
  String msg2 = creerSalutation('Marc', 'soir');
  print(msg1);
  print(msg2);
  print('');
  
  // Test 7: Fonction avec retour (bool)
  print('--- Test 7: Retour bool ---');
  print('5 est pair? ${estPair(5)}');
  print('8 est pair? ${estPair(8)}');
  print('15 ans est majeur? ${estMajeur(15)}');
  print('20 ans est majeur? ${estMajeur(20)}');
  print('');
  
  // Test 8: Fonctions mathématiques
  print('--- Test 8: Fonctions mathématiques ---');
  print('Carré de 5: ${carre(5)}');
  print('Cube de 3: ${cube(3)}');
  print('');
  
  // Test 9: Fonction composite
  print('--- Test 9: Fonction composite ---');
  afficherInfosRectangle(10.0, 5.0);
  print('');
  
  // Test 10: Paramètres nommés
  print('--- Test 10: Paramètres nommés ---');
  creerProfil(nom: 'Thomas', age: 28, ville: 'Paris');
  print('');
  creerProfil(nom: 'Emma', age: 22);  // ville optionnel
  print('');
  
  // Message final
  print('========================================');
  print('Vous maîtrisez maintenant les fonctions en Dart!');
}

