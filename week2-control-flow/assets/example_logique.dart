// ============================================
// EXEMPLE: Opérateurs Logiques en Dart
// ============================================

void main() {
  print('=== EXEMPLES D\'OPÉRATEURS LOGIQUES ===');
  print('');
  
  // ============================================
  // 1. OPÉRATEUR && (ET)
  // ============================================
  print('--- 1. Opérateur && (ET) ---');
  int age = 25;
  bool hasPermis = true;
  
  if (age >= 18 && hasPermis) {
    print('Peut conduire ✓');
  } else {
    print('Ne peut pas conduire ✗');
  }
  
  // Les DEUX conditions doivent être vraies
  print('Table de vérité &&:');
  print('  true && true = ${true && true}');
  print('  true && false = ${true && false}');
  print('  false && true = ${false && true}');
  print('  false && false = ${false && false}');
  print('');
  
  // ============================================
  // 2. OPÉRATEUR || (OU)
  // ============================================
  print('--- 2. Opérateur || (OU) ---');
  bool estEtudiant = false;
  bool estSenior = true;
  
  if (estEtudiant || estSenior) {
    print('Tarif réduit ✓');
  } else {
    print('Tarif normal');
  }
  
  // AU MOINS UNE condition doit être vraie
  print('Table de vérité ||:');
  print('  true || true = ${true || true}');
  print('  true || false = ${true || false}');
  print('  false || true = ${false || true}');
  print('  false || false = ${false || false}');
  print('');
  
  // ============================================
  // 3. OPÉRATEUR ! (NON)
  // ============================================
  print('--- 3. Opérateur ! (NON) ---');
  bool estConnecte = false;
  
  if (!estConnecte) {
    print('Veuillez vous connecter');
  } else {
    print('Bienvenue !');
  }
  
  // Inverse la valeur
  print('Table de vérité !:');
  print('  !true = ${!true}');
  print('  !false = ${!false}');
  print('');
  
  // ============================================
  // 4. COMBINAISON && et ||
  // ============================================
  print('--- 4. Combinaison && et || ---');
  int heures = 14;
  String jour = 'samedi';
  
  // Ouvert si: (Lun-Ven 9h-18h) OU (Sam 10h-16h)
  bool ouvertSemaine = (jour != 'samedi' && jour != 'dimanche') && 
                       (heures >= 9 && heures <= 18);
  bool ouvertSamedi = (jour == 'samedi') && (heures >= 10 && heures <= 16);
  
  if (ouvertSemaine || ouvertSamedi) {
    print('Magasin ouvert ✓');
  } else {
    print('Magasin fermé ✗');
  }
  print('');
  
  // ============================================
  // 5. VALIDATION DE FORMULAIRE
  // ============================================
  print('--- 5. Validation Formulaire ---');
  String nom = 'Marie';
  String email = 'marie@example.com';
  int ageForm = 25;
  bool accepteTermes = true;
  
  bool nomValide = nom.isNotEmpty && nom.length >= 2;
  bool emailValide = email.contains('@') && email.contains('.');
  bool ageValide = ageForm >= 18 && ageForm <= 120;
  
  bool formulaireValide = nomValide && emailValide && ageValide && accepteTermes;
  
  if (formulaireValide) {
    print('✓ Formulaire valide - Inscription réussie !');
  } else {
    print('✗ Formulaire invalide:');
    if (!nomValide) print('  - Nom invalide');
    if (!emailValide) print('  - Email invalide');
    if (!ageValide) print('  - Âge invalide');
    if (!accepteTermes) print('  - Termes non acceptés');
  }
  print('');
  
  // ============================================
  // 6. SYSTÈME D'ACCÈS
  // ============================================
  print('--- 6. Système d\'Accès ---');
  bool estAdmin = false;
  bool estModerator = true;
  bool estProprietaire = false;
  
  // Accès si: Admin OU (Modérateur ET Propriétaire)
  bool aAcces = estAdmin || (estModerator && estProprietaire);
  
  if (aAcces) {
    print('Accès autorisé');
  } else {
    print('Accès refusé');
  }
  
  // Accès complet si Admin
  if (estAdmin) {
    print('Privilèges: Complets');
  } else if (estModerator) {
    print('Privilèges: Modération uniquement');
  } else {
    print('Privilèges: Lecture seule');
  }
  print('');
  
  // ============================================
  // 7. PLAGE DE DATES
  // ============================================
  print('--- 7. Vérification de Plage ---');
  int temperature = 22;
  
  // Confortable si entre 18 et 24
  bool estConfortable = temperature >= 18 && temperature <= 24;
  
  if (estConfortable) {
    print('Température confortable (18-24°C)');
  } else if (temperature < 18) {
    print('Trop froid ! Chauffage recommandé');
  } else {
    print('Trop chaud ! Climatisation recommandée');
  }
  print('');
  
  // ============================================
  // 8. PROMOTIONS E-COMMERCE
  // ============================================
  print('--- 8. Système de Promotions ---');
  double montantPanier = 150;
  bool estMembrePremium = true;
  String codePromo = 'SUMMER20';
  
  bool livraisonGratuite = montantPanier > 50 || estMembrePremium;
  bool reduction20 = codePromo == 'SUMMER20' && montantPanier > 100;
  bool cadeauOffert = estMembrePremium && montantPanier > 200;
  
  print('Montant: $montantPanier €');
  print('Premium: ${estMembrePremium ? "Oui" : "Non"}');
  print('');
  print('Avantages:');
  if (livraisonGratuite) print('  ✓ Livraison gratuite');
  if (reduction20) print('  ✓ -20% de réduction');
  if (cadeauOffert) print('  ✓ Cadeau offert');
  print('');
  
  // ============================================
  // 9. VALIDATION MOT DE PASSE
  // ============================================
  print('--- 9. Validation Mot de Passe ---');
  String password = 'SecurePass123';
  
  bool longueurOK = password.length >= 8;
  bool aChiffre = password.contains(RegExp(r'[0-9]'));
  bool aMajuscule = password.contains(RegExp(r'[A-Z]'));
  bool aMinuscule = password.contains(RegExp(r'[a-z]'));
  
  bool passwordSecurise = longueurOK && aChiffre && aMajuscule && aMinuscule;
  
  print('Mot de passe: $password');
  print('');
  print('Critères de sécurité:');
  print('  ${longueurOK ? "✓" : "✗"} Au moins 8 caractères');
  print('  ${aChiffre ? "✓" : "✗"} Contient un chiffre');
  print('  ${aMajuscule ? "✓" : "✗"} Contient une majuscule');
  print('  ${aMinuscule ? "✓" : "✗"} Contient une minuscule');
  print('');
  print('Résultat: ${passwordSecurise ? "✓ Sécurisé" : "✗ Peu sécurisé"}');
  print('');
  
  // ============================================
  // 10. LOGIQUE DE JEU
  // ============================================
  print('--- 10. Logique de Jeu ---');
  int pointsVie = 50;
  int niveau = 3;
  bool aBouclier = true;
  bool aPotion = true;
  
  // Peut continuer si: (Vie > 0) ET (Niveau <= 10)
  bool peutContinuer = pointsVie > 0 && niveau <= 10;
  
  // En danger si: (Vie < 30) ET (Pas de bouclier OU pas de potion)
  bool enDanger = pointsVie < 30 && (!aBouclier || !aPotion);
  
  // Boss accessible si: Niveau >= 5 ET (Bouclier ET Potion)
  bool peutAffronterBoss = niveau >= 5 && aBouclier && aPotion;
  
  print('=== STATUT DU JOUEUR ===');
  print('Vie: $pointsVie');
  print('Niveau: $niveau');
  print('Bouclier: ${aBouclier ? "Oui" : "Non"}');
  print('Potion: ${aPotion ? "Oui" : "Non"}');
  print('');
  print('État:');
  if (!peutContinuer) {
    print('  ✗ Game Over');
  } else if (enDanger) {
    print('  ⚠️ En danger - Prudence !');
  } else {
    print('  ✓ Situation stable');
  }
  
  if (peutAffronterBoss) {
    print('  🏆 Prêt à affronter le boss !');
  }
  
  print('');
  print('========================================');
  print('Vous maîtrisez les opérateurs logiques !');
}

