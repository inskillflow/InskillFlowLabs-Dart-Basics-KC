// ============================================
// EXEMPLE: Switch/Case en Dart
// ============================================

void main() {
  print('=== EXEMPLES DE SWITCH/CASE ===');
  print('');
  
  // ============================================
  // 1. SWITCH SIMPLE
  // ============================================
  print('--- 1. Switch Simple ---');
  int jour = 3;
  
  switch (jour) {
    case 1:
      print('Lundi');
      break;
    case 2:
      print('Mardi');
      break;
    case 3:
      print('Mercredi');
      break;
    case 4:
      print('Jeudi');
      break;
    case 5:
      print('Vendredi');
      break;
    case 6:
      print('Samedi');
      break;
    case 7:
      print('Dimanche');
      break;
    default:
      print('Jour invalide');
  }
  print('');
  
  // ============================================
  // 2. SWITCH AVEC STRINGS
  // ============================================
  print('--- 2. Switch avec Strings ---');
  String commande = 'start';
  
  switch (commande) {
    case 'start':
      print('Démarrage du programme...');
      break;
    case 'stop':
      print('Arrêt du programme...');
      break;
    case 'pause':
      print('Mise en pause...');
      break;
    case 'restart':
      print('Redémarrage...');
      break;
    default:
      print('Commande non reconnue');
  }
  print('');
  
  // ============================================
  // 3. CASES MULTIPLES
  // ============================================
  print('--- 3. Cases Multiples ---');
  String jourSemaine = 'samedi';
  
  switch (jourSemaine) {
    case 'lundi':
    case 'mardi':
    case 'mercredi':
    case 'jeudi':
    case 'vendredi':
      print('Jour de travail');
      break;
    case 'samedi':
    case 'dimanche':
      print('Weekend !');
      break;
    default:
      print('Jour inconnu');
  }
  print('');
  
  // ============================================
  // 4. CONVERSION DE MOIS
  // ============================================
  print('--- 4. Conversion Mois ---');
  int mois = 7;
  String nomMois;
  String saison;
  
  switch (mois) {
    case 1:
      nomMois = 'Janvier';
      saison = 'Hiver';
      break;
    case 2:
      nomMois = 'Février';
      saison = 'Hiver';
      break;
    case 3:
      nomMois = 'Mars';
      saison = 'Printemps';
      break;
    case 4:
      nomMois = 'Avril';
      saison = 'Printemps';
      break;
    case 5:
      nomMois = 'Mai';
      saison = 'Printemps';
      break;
    case 6:
      nomMois = 'Juin';
      saison = 'Été';
      break;
    case 7:
      nomMois = 'Juillet';
      saison = 'Été';
      break;
    case 8:
      nomMois = 'Août';
      saison = 'Été';
      break;
    case 9:
      nomMois = 'Septembre';
      saison = 'Automne';
      break;
    case 10:
      nomMois = 'Octobre';
      saison = 'Automne';
      break;
    case 11:
      nomMois = 'Novembre';
      saison = 'Automne';
      break;
    case 12:
      nomMois = 'Décembre';
      saison = 'Hiver';
      break;
    default:
      nomMois = 'Invalide';
      saison = 'Inconnu';
  }
  
  print('Mois: $nomMois');
  print('Saison: $saison');
  print('');
  
  // ============================================
  // 5. CALCULATRICE AVEC SWITCH
  // ============================================
  print('--- 5. Calculatrice ---');
  double a = 10;
  double b = 5;
  String operation = '*';
  double resultat;
  
  switch (operation) {
    case '+':
      resultat = a + b;
      print('$a + $b = $resultat');
      break;
    case '-':
      resultat = a - b;
      print('$a - $b = $resultat');
      break;
    case '*':
    case 'x':
    case '×':
      resultat = a * b;
      print('$a × $b = $resultat');
      break;
    case '/':
    case '÷':
      if (b != 0) {
        resultat = a / b;
        print('$a ÷ $b = $resultat');
      } else {
        print('Erreur: Division par zéro');
      }
      break;
    default:
      print('Opération non supportée');
  }
  print('');
  
  // ============================================
  // 6. MENU DE NAVIGATION
  // ============================================
  print('--- 6. Menu de Navigation ---');
  int choixMenu = 2;
  
  switch (choixMenu) {
    case 1:
      print('→ Page d\'accueil');
      break;
    case 2:
      print('→ Page de profil');
      break;
    case 3:
      print('→ Paramètres');
      break;
    case 4:
      print('→ Aide');
      break;
    case 5:
      print('→ Déconnexion');
      break;
    default:
      print('→ Page non trouvée');
  }
  print('');
  
  // ============================================
  // 7. CATÉGORISATION
  // ============================================
  print('--- 7. Catégorie par Âge ---');
  int agePersonne = 35;
  String categorie;
  
  if (agePersonne < 13) {
    categorie = 'Enfant';
  } else if (agePersonne < 20) {
    categorie = 'Adolescent';
  } else if (agePersonne < 60) {
    categorie = 'Adulte';
  } else {
    categorie = 'Senior';
  }
  
  // Ensuite switch pour les activités
  switch (categorie) {
    case 'Enfant':
      print('Activités: Jeux, École primaire');
      break;
    case 'Adolescent':
      print('Activités: Collège/Lycée, Sports');
      break;
    case 'Adulte':
      print('Activités: Travail, Famille');
      break;
    case 'Senior':
      print('Activités: Retraite, Loisirs');
      break;
  }
  print('');
  
  // ============================================
  // 8. LANGUE / TRADUCTION
  // ============================================
  print('--- 8. Traduction ---');
  String langue = 'en';
  
  switch (langue) {
    case 'fr':
      print('Bonjour !');
      break;
    case 'en':
      print('Hello!');
      break;
    case 'es':
      print('¡Hola!');
      break;
    case 'de':
      print('Hallo!');
      break;
    case 'it':
      print('Ciao!');
      break;
    default:
      print('Language not supported');
  }
  print('');
  
  // ============================================
  // 9. NIVEAU DE DIFFICULTÉ
  // ============================================
  print('--- 9. Niveau de Jeu ---');
  int niveau = 2;
  
  switch (niveau) {
    case 1:
      print('Difficulté: Facile');
      print('Bonus: +50% XP');
      break;
    case 2:
      print('Difficulté: Normal');
      print('Bonus: +100% XP');
      break;
    case 3:
      print('Difficulté: Difficile');
      print('Bonus: +200% XP');
      break;
    case 4:
      print('Difficulté: Expert');
      print('Bonus: +500% XP');
      break;
    default:
      print('Niveau invalide');
  }
  print('');
  
  // ============================================
  // 10. STATUT HTTP (exemple avancé)
  // ============================================
  print('--- 10. Code de Statut HTTP ---');
  int statusCode = 404;
  
  switch (statusCode) {
    case 200:
      print('OK - Requête réussie');
      break;
    case 201:
      print('Created - Ressource créée');
      break;
    case 400:
      print('Bad Request - Requête invalide');
      break;
    case 401:
      print('Unauthorized - Non autorisé');
      break;
    case 404:
      print('Not Found - Page non trouvée');
      break;
    case 500:
      print('Internal Server Error');
      break;
    default:
      print('Code de statut: $statusCode');
  }
  
  print('');
  print('========================================');
  print('Vous maîtrisez maintenant les switch !');
}

