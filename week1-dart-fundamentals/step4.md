# Étape 4 : Défi Pratique - Calculateur Personnel

## IMPORTANT: Vérifier l'environnement

### Commande 1 : Aller dans votre dossier

`cd /root/mon_projet_dart`{{execute}}

### Commande 2 : Vérifier Dart

`dart --version`{{execute}}

---

## Le Défi : Créer un Calculateur Personnel Complet 

### Objectif

Créer un programme qui combine **TOUT** ce que vous avez appris:
- Variables et types
- Fonctions
- Calculs mathématiques
- Entrées/sorties interactives
- Logique conditionnelle

### Ce que le Programme Doit Faire

**1. Accueillir l'utilisateur**
- Demander son prénom
- Afficher un message de bienvenue

**2. Calculer l'IMC (Indice de Masse Corporelle)**
- Demander le poids (en kg)
- Demander la taille (en mètres)
- Calculer IMC = poids / (taille × taille)
- Afficher le résultat avec interprétation

**3. Calculer l'âge à partir de l'année de naissance**
- Demander l'année de naissance
- Calculer l'âge actuel
- Afficher combien d'années jusqu'à 100 ans

**4. Mini-calculatrice**
- Demander deux nombres
- Demander l'opération (+, -, *, /)
- Effectuer le calcul
- Afficher le résultat

**5. Afficher un résumé personnalisé**

---

## Approche : Construire Étape par Étape

On va construire le programme **progressivement** en 5 parties.

---

## PARTIE 1 : Structure de Base et Accueil

### ÉTAPE 1.1 - Créer le fichier

`nano calculateur.dart`{{execute}}

---

### ÉTAPE 1.2 - Taper le code de base

```dart
import 'dart:io';

void main() {
 print('╔═══════════════════════════════════╗');
 print('║ CALCULATEUR PERSONNEL      ║');
 print('║ Version 1.0           ║');
 print('╚═══════════════════════════════════╝');
 print('');
 
 // Partie 1: Accueil
 print('--- BIENVENUE ---');
 print('Quel est votre prénom?');
 String? prenom = stdin.readLineSync();
 prenom = prenom ?? 'Utilisateur';
 
 print('');
 print('Bonjour $prenom! Ravi de vous voir! ');
 print('');
}
```

---

### ÉTAPE 1.3 - Tester la Partie 1

1. `Ctrl + O` puis `Entrée`
2. `Ctrl + X`
3. `dart calculateur.dart`{{execute}}

**VÉRIFIEZ:**
- L'en-tête s'affiche joliment
- Le programme demande votre prénom
- Il vous salue avec votre prénom

**SI ÇA MARCHE:** Continuez!

---

## PARTIE 2 : Ajouter le Calcul d'IMC

### ÉTAPE 2.1 - Créer une fonction pour l'IMC

Rouvrez le fichier:
`nano calculateur.dart`{{execute}}

**AVANT la fonction `main()`, ajoutez ces fonctions:**

```dart
import 'dart:io';

// Fonction pour calculer l'IMC
double calculerIMC(double poids, double taille) {
 return poids / (taille * taille);
}

// Fonction pour interpréter l'IMC
String interpreterIMC(double imc) {
 if (imc < 18.5) {
  return 'Insuffisance pondérale';
 } else if (imc < 25) {
  return 'Poids normal';
 } else if (imc < 30) {
  return 'Surpoids';
 } else {
  return 'Obésité';
 }
}

void main() {
 // ... (code existant)
}
```

---

### ÉTAPE 2.2 - Ajouter la partie IMC dans main()

**À LA FIN de la fonction `main()`, AVANT la dernière accolade `}`, ajoutez:**

```dart
 // Partie 2: Calcul IMC
 print('--- CALCUL IMC ---');
 print('Entrez votre poids (en kg):');
 String? poidsTexte = stdin.readLineSync();
 double poids = double.parse(poidsTexte ?? '70');
 
 print('Entrez votre taille (en mètres, ex: 1.75):');
 String? tailleTexte = stdin.readLineSync();
 double taille = double.parse(tailleTexte ?? '1.75');
 
 double imc = calculerIMC(poids, taille);
 String interpretation = interpreterIMC(imc);
 
 print('');
 print('Votre IMC: ${imc.toStringAsFixed(2)}');
 print('Interprétation: $interpretation');
 print('');
```

---

### ÉTAPE 2.3 - Comprendre `.toStringAsFixed()`

**Ligne:** `${imc.toStringAsFixed(2)}`

**Problème:** `imc` pourrait être `23.456789123`

**Solution:** `.toStringAsFixed(2)`
- Limite à 2 décimales
- `23.456789123` devient `"23.46"`
- Plus lisible!

---

### ÉTAPE 2.4 - Tester

1. `Ctrl + O` puis `Entrée`
2. `Ctrl + X`
3. `dart calculateur.dart`{{execute}}

**TESTEZ avec différentes valeurs!**

---

## PARTIE 3 : Ajouter le Calcul d'Âge

### ÉTAPE 3.1 - Créer la fonction d'âge

**AVANT `main()`, ajoutez:**

```dart
// Fonction pour calculer l'âge
int calculerAge(int anneeNaissance) {
 int anneeActuelle = 2025;
 return anneeActuelle - anneeNaissance;
}
```

---

### ÉTAPE 3.2 - Ajouter la partie âge dans main()

`nano calculateur.dart`{{execute}}

**À LA FIN de `main()`, ajoutez:**

```dart
 // Partie 3: Calcul d'âge
 print('--- CALCUL D\'ÂGE ---');
 print('En quelle année êtes-vous né(e)?');
 String? anneeTexte = stdin.readLineSync();
 int anneeNaissance = int.parse(anneeTexte ?? '2000');
 
 int age = calculerAge(anneeNaissance);
 int anneesAvant100 = 100 - age;
 
 print('');
 print('Vous avez $age ans.');
 
 if (anneesAvant100 > 0) {
  print('Dans $anneesAvant100 ans, vous aurez 100 ans!');
 } else if (anneesAvant100 == 0) {
  print('Vous avez 100 ans! Joyeux anniversaire centenaire! ');
 } else {
  print('Vous avez dépassé les 100 ans! Félicitations! ');
 }
 print('');
```

---

### ÉTAPE 3.3 - Tester

1. `Ctrl + O` puis `Entrée`
2. `Ctrl + X`
3. `dart calculateur.dart`{{execute}}

---

## PARTIE 4 : Ajouter la Mini-Calculatrice

### ÉTAPE 4.1 - Créer les fonctions de calcul

**AVANT `main()`, ajoutez:**

```dart
// Fonctions de calcul
double additionner(double a, double b) {
 return a + b;
}

double soustraire(double a, double b) {
 return a - b;
}

double multiplier(double a, double b) {
 return a * b;
}

double diviser(double a, double b) {
 if (b == 0) {
  print(' Erreur: Division par zéro!');
  return 0;
 }
 return a / b;
}
```

---

### ÉTAPE 4.2 - Ajouter la calculatrice dans main()

`nano calculateur.dart`{{execute}}

**À LA FIN de `main()`, ajoutez:**

```dart
 // Partie 4: Mini-calculatrice
 print('--- MINI-CALCULATRICE ---');
 print('Entrez le premier nombre:');
 String? num1Texte = stdin.readLineSync();
 double nombre1 = double.parse(num1Texte ?? '0');
 
 print('Entrez l\'opération (+, -, *, /):');
 String? operation = stdin.readLineSync();
 operation = operation ?? '+';
 
 print('Entrez le deuxième nombre:');
 String? num2Texte = stdin.readLineSync();
 double nombre2 = double.parse(num2Texte ?? '0');
 
 double resultat = 0;
 String symbole = '';
 
 if (operation == '+') {
  resultat = additionner(nombre1, nombre2);
  symbole = '+';
 } else if (operation == '-') {
  resultat = soustraire(nombre1, nombre2);
  symbole = '-';
 } else if (operation == '*' || operation == 'x' || operation == '×') {
  resultat = multiplier(nombre1, nombre2);
  symbole = '×';
 } else if (operation == '/') {
  resultat = diviser(nombre1, nombre2);
  symbole = '÷';
 } else {
  print(' Opération non reconnue!');
  symbole = '?';
 }
 
 print('');
 print('$nombre1 $symbole $nombre2 = $resultat');
 print('');
```

---

### ÉTAPE 4.3 - Tester la calculatrice

1. `Ctrl + O` puis `Entrée`
2. `Ctrl + X`
3. `dart calculateur.dart`{{execute}}

**TESTEZ toutes les opérations: +, -, *, /**

---

## PARTIE 5 : Ajouter le Résumé Final

### ÉTAPE 5.1 - Ajouter le résumé

`nano calculateur.dart`{{execute}}

**À LA TOUTE FIN de `main()`, ajoutez:**

```dart
 // Partie 5: Résumé
 print('╔═══════════════════════════════════╗');
 print('║     RÉSUMÉ FINAL       ║');
 print('╚═══════════════════════════════════╝');
 print('');
 print('Prénom: $prenom');
 print('Poids: $poids kg');
 print('Taille: $taille m');
 print('IMC: ${imc.toStringAsFixed(2)} ($interpretation)');
 print('Âge: $age ans');
 print('Dernier calcul: $nombre1 $symbole $nombre2 = $resultat');
 print('');
 print('Merci d\'avoir utilisé le Calculateur Personnel!');
 print('À bientôt, $prenom! ');
}
```

---

### ÉTAPE 5.2 - Test Final Complet!

1. `Ctrl + O` puis `Entrée`
2. `Ctrl + X`
3. `dart calculateur.dart`{{execute}}

**TESTEZ TOUT:**
- Entrez votre prénom
- Entrez votre poids et taille
- Entrez votre année de naissance
- Faites un calcul

**SI TOUT MARCHE:** **Félicitations. VOUS AVEZ RÉUSSI LE DÉFI!** 

---

## Code Complet (Pour Vérification)

<details>
<summary>Cliquez pour voir le code complet</summary>

```dart
import 'dart:io';

// Fonction pour calculer l'IMC
double calculerIMC(double poids, double taille) {
 return poids / (taille * taille);
}

// Fonction pour interpréter l'IMC
String interpreterIMC(double imc) {
 if (imc < 18.5) {
  return 'Insuffisance pondérale';
 } else if (imc < 25) {
  return 'Poids normal';
 } else if (imc < 30) {
  return 'Surpoids';
 } else {
  return 'Obésité';
 }
}

// Fonction pour calculer l'âge
int calculerAge(int anneeNaissance) {
 int anneeActuelle = 2025;
 return anneeActuelle - anneeNaissance;
}

// Fonctions de calcul
double additionner(double a, double b) {
 return a + b;
}

double soustraire(double a, double b) {
 return a - b;
}

double multiplier(double a, double b) {
 return a * b;
}

double diviser(double a, double b) {
 if (b == 0) {
  print(' Erreur: Division par zéro!');
  return 0;
 }
 return a / b;
}

void main() {
 print('╔═══════════════════════════════════╗');
 print('║ CALCULATEUR PERSONNEL      ║');
 print('║ Version 1.0           ║');
 print('╚═══════════════════════════════════╝');
 print('');
 
 // Partie 1: Accueil
 print('--- BIENVENUE ---');
 print('Quel est votre prénom?');
 String? prenom = stdin.readLineSync();
 prenom = prenom ?? 'Utilisateur';
 
 print('');
 print('Bonjour $prenom! Ravi de vous voir! ');
 print('');
 
 // Partie 2: Calcul IMC
 print('--- CALCUL IMC ---');
 print('Entrez votre poids (en kg):');
 String? poidsTexte = stdin.readLineSync();
 double poids = double.parse(poidsTexte ?? '70');
 
 print('Entrez votre taille (en mètres, ex: 1.75):');
 String? tailleTexte = stdin.readLineSync();
 double taille = double.parse(tailleTexte ?? '1.75');
 
 double imc = calculerIMC(poids, taille);
 String interpretation = interpreterIMC(imc);
 
 print('');
 print('Votre IMC: ${imc.toStringAsFixed(2)}');
 print('Interprétation: $interpretation');
 print('');
 
 // Partie 3: Calcul d'âge
 print('--- CALCUL D\'ÂGE ---');
 print('En quelle année êtes-vous né(e)?');
 String? anneeTexte = stdin.readLineSync();
 int anneeNaissance = int.parse(anneeTexte ?? '2000');
 
 int age = calculerAge(anneeNaissance);
 int anneesAvant100 = 100 - age;
 
 print('');
 print('Vous avez $age ans.');
 
 if (anneesAvant100 > 0) {
  print('Dans $anneesAvant100 ans, vous aurez 100 ans!');
 } else if (anneesAvant100 == 0) {
  print('Vous avez 100 ans! Joyeux anniversaire centenaire! ');
 } else {
  print('Vous avez dépassé les 100 ans! Félicitations! ');
 }
 print('');
 
 // Partie 4: Mini-calculatrice
 print('--- MINI-CALCULATRICE ---');
 print('Entrez le premier nombre:');
 String? num1Texte = stdin.readLineSync();
 double nombre1 = double.parse(num1Texte ?? '0');
 
 print('Entrez l\'opération (+, -, *, /):');
 String? operation = stdin.readLineSync();
 operation = operation ?? '+';
 
 print('Entrez le deuxième nombre:');
 String? num2Texte = stdin.readLineSync();
 double nombre2 = double.parse(num2Texte ?? '0');
 
 double resultat = 0;
 String symbole = '';
 
 if (operation == '+') {
  resultat = additionner(nombre1, nombre2);
  symbole = '+';
 } else if (operation == '-') {
  resultat = soustraire(nombre1, nombre2);
  symbole = '-';
 } else if (operation == '*' || operation == 'x' || operation == '×') {
  resultat = multiplier(nombre1, nombre2);
  symbole = '×';
 } else if (operation == '/') {
  resultat = diviser(nombre1, nombre2);
  symbole = '÷';
 } else {
  print(' Opération non reconnue!');
  symbole = '?';
 }
 
 print('');
 print('$nombre1 $symbole $nombre2 = $resultat');
 print('');
 
 // Partie 5: Résumé
 print('╔═══════════════════════════════════╗');
 print('║     RÉSUMÉ FINAL       ║');
 print('╚═══════════════════════════════════╝');
 print('');
 print('Prénom: $prenom');
 print('Poids: $poids kg');
 print('Taille: $taille m');
 print('IMC: ${imc.toStringAsFixed(2)} ($interpretation)');
 print('Âge: $age ans');
 print('Dernier calcul: $nombre1 $symbole $nombre2 = $resultat');
 print('');
 print('Merci d\'avoir utilisé le Calculateur Personnel!');
 print('À bientôt, $prenom! ');
}
```
</details>

---

## Analyse : Ce que Vous Avez Utilisé

### Variables et Types
 `String` - prenom, operation
 `int` - age, anneeNaissance
 `double` - poids, taille, imc, nombres
 `String?` - types nullable

### Fonctions
 Fonctions sans paramètres (`main`)
 Fonctions avec paramètres (`calculerIMC`, `additionner`, etc.)
 Fonctions avec retour (`double`, `String`, `int`)
 Fonctions void (implicitement dans main)

### Entrées/Sorties
 `print()` - affichage
 `stdin.readLineSync()` - lecture
 `int.parse()` - conversion
 `double.parse()` - conversion

### Logique
 `if/else if/else` - conditions
 Opérateurs de comparaison (`<`, `>`, `==`)
 Opérateurs mathématiques (`+`, `-`, `*`, `/`)

### Méthodes
 `.toStringAsFixed()` - formatage
 `??` - null-coalescing operator

**VOUS AVEZ TOUT UTILISÉ!** 

---

## Défis Supplémentaires (Optionnels) 

### Défi 1: Ajouter un Menu

Modifiez le programme pour permettre à l'utilisateur de choisir quelle fonction utiliser:
```
1. Calculer IMC
2. Calculer âge
3. Mini-calculatrice
4. Quitter
```

### Défi 2: Boucle While

Faites tourner le programme en boucle jusqu'à ce que l'utilisateur choisisse "Quitter".

### Défi 3: Historique

Stockez les calculs dans une liste et affichez l'historique à la fin.

**Ces défis sont pour plus tard! Ne vous inquiétez pas si vous ne savez pas comment faire!**

---

## Récapitulatif : Compétences Acquises 

### Vous savez maintenant:
 Structurer un programme complexe
 Décomposer un problème en parties
 Créer des fonctions réutilisables
 Combiner variables, fonctions et I/O
 Gérer la logique conditionnelle
 Formater l'affichage
 Valider et convertir les entrées
 Créer une expérience utilisateur fluide

**VOUS ÊTES CAPABLE DE CRÉER DES PROGRAMMES COMPLETS!** 

---

## Conseil Final de Professeur

### Continuez à Pratiquer!

**Ce programme est un excellent template.**

Vous pouvez:
- L'adapter pour d'autres calculs
- Ajouter de nouvelles fonctionnalités
- Le partager avec des amis
- L'utiliser comme base pour vos projets

**La programmation, c'est:**
- 20% connaître la syntaxe
- 80% savoir résoudre des problèmes

**Vous avez prouvé que vous savez les deux!** 

---

## Prêt pour la Conclusion?

Vous avez terminé:
- Installation de Dart
- Variables et types
- Fonctions
- Entrées/sorties
- Défi pratique complet

**DERNIÈRE ÉTAPE:** Résumé, ressources et prochains pas!

**Cliquez sur "Continuer" pour la Conclusion!** →


