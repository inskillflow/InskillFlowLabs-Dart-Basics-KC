// ============================================
// EXEMPLE: Conditions If/Else en Dart
// ============================================

void main() {
  print('=== EXEMPLES DE CONDITIONS IF/ELSE ===');
  print('');
  
  // ============================================
  // 1. IF SIMPLE
  // ============================================
  print('--- 1. If Simple ---');
  int age = 20;
  
  if (age >= 18) {
    print('Vous êtes majeur');
  }
  print('');
  
  // ============================================
  // 2. IF/ELSE
  // ============================================
  print('--- 2. If/Else ---');
  int temperature = 15;
  
  if (temperature > 25) {
    print('Il fait chaud');
  } else {
    print('Il fait frais');
  }
  print('');
  
  // ============================================
  // 3. IF/ELSE IF/ELSE
  // ============================================
  print('--- 3. If/Else If/Else ---');
  double note = 15.5;
  
  if (note >= 16) {
    print('Mention: Très bien');
  } else if (note >= 14) {
    print('Mention: Bien');
  } else if (note >= 12) {
    print('Mention: Assez bien');
  } else if (note >= 10) {
    print('Mention: Passable');
  } else {
    print('Mention: Insuffisant');
  }
  print('');
  
  // ============================================
  // 4. CONDITIONS IMBRIQUÉES
  // ============================================
  print('--- 4. Conditions Imbriquées ---');
  String username = 'admin';
  String password = '1234';
  
  if (username == 'admin') {
    print('Username correct');
    if (password == '1234') {
      print('→ Accès autorisé !');
    } else {
      print('→ Password incorrect');
    }
  } else {
    print('Username incorrect');
  }
  print('');
  
  // ============================================
  // 5. COMPARAISON DE STRINGS
  // ============================================
  print('--- 5. Comparaison de Strings ---');
  String pays = 'France';
  
  if (pays == 'France') {
    print('Capitale: Paris');
  } else if (pays == 'Espagne') {
    print('Capitale: Madrid');
  } else {
    print('Pays non reconnu');
  }
  print('');
  
  // ============================================
  // 6. PLAGES DE VALEURS
  // ============================================
  print('--- 6. Plages de Valeurs ---');
  int score = 75;
  
  if (score >= 0 && score < 50) {
    print('Note: F (Échec)');
  } else if (score >= 50 && score < 60) {
    print('Note: D');
  } else if (score >= 60 && score < 70) {
    print('Note: C');
  } else if (score >= 70 && score < 80) {
    print('Note: B');
  } else if (score >= 80 && score <= 100) {
    print('Note: A (Excellent)');
  } else {
    print('Score invalide');
  }
  print('');
  
  // ============================================
  // 7. OPÉRATEUR TERNAIRE
  // ============================================
  print('--- 7. Opérateur Ternaire ---');
  int nombre = 42;
  String parite = nombre % 2 == 0 ? 'pair' : 'impair';
  print('$nombre est $parite');
  
  String statut = age >= 18 ? 'Majeur' : 'Mineur';
  print('Statut: $statut');
  print('');
  
  // ============================================
  // 8. VÉRIFICATION NULL
  // ============================================
  print('--- 8. Vérification Null ---');
  String? nomUtilisateur = null;
  
  if (nomUtilisateur == null) {
    print('Pas de nom d\'utilisateur');
  } else {
    print('Bienvenue $nomUtilisateur');
  }
  
  // Avec opérateur ??
  String affichage = nomUtilisateur ?? 'Invité';
  print('Utilisateur: $affichage');
  print('');
  
  // ============================================
  // 9. PLUSIEURS CONDITIONS
  // ============================================
  print('--- 9. Vérifications Multiples ---');
  double poids = 70;
  double taille = 1.75;
  double imc = poids / (taille * taille);
  
  if (imc < 18.5) {
    print('IMC: ${imc.toStringAsFixed(1)} - Insuffisance');
  } else if (imc >= 18.5 && imc < 25) {
    print('IMC: ${imc.toStringAsFixed(1)} - Normal');
  } else if (imc >= 25 && imc < 30) {
    print('IMC: ${imc.toStringAsFixed(1)} - Surpoids');
  } else {
    print('IMC: ${imc.toStringAsFixed(1)} - Obésité');
  }
  print('');
  
  // ============================================
  // 10. VALIDATION COMPLEXE
  // ============================================
  print('--- 10. Validation de Formulaire ---');
  String email = 'user@example.com';
  String motDePasse = 'Pass1234';
  
  bool emailValide = email.contains('@') && email.contains('.');
  bool mdpValide = motDePasse.length >= 8;
  
  if (emailValide && mdpValide) {
    print('✓ Formulaire valide');
  } else {
    print('✗ Formulaire invalide:');
    if (!emailValide) {
      print('  - Email invalide');
    }
    if (!mdpValide) {
      print('  - Mot de passe trop court');
    }
  }
  
  print('');
  print('========================================');
  print('Vous maîtrisez maintenant les conditions !');
}

