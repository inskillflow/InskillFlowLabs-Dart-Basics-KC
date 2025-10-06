# Étape 3 : Switch - Choix Multiples

## IMPORTANT: Environnement

`cd /root/semaine2_dart && dart --version`{{execute}}

---

## Qu'est-ce que Switch ? 

### Le Problème avec If/Else

**Imagine tu as 7 choix (jours de la semaine) :**

```dart
if (jour == 'lundi') {
 print('Début de semaine');
} else if (jour == 'mardi') {
 print('Jour 2');
} else if (jour == 'mercredi') {
 print('Milieu de semaine');
} else if (jour == 'jeudi') {
 print('Jour 4');
} else if (jour == 'vendredi') {
 print('Presque weekend!');
} else if (jour == 'samedi') {
 print('Weekend!');
} else if (jour == 'dimanche') {
 print('Repos');
}
```

**C'est LONG et RÉPÉTITIF !** 

### La Solution : Switch

```dart
switch (jour) {
 case 'lundi':
  print('Début de semaine');
  break;
 case 'mardi':
  print('Jour 2');
  break;
 case 'mercredi':
  print('Milieu de semaine');
  break;
 // etc...
}
```

**BEAUCOUP plus lisible !** 

---

## Structure Switch

### Syntaxe de Base

```dart
switch (variable) {
 case valeur1:
  // Code si variable == valeur1
  break;
 case valeur2:
  // Code si variable == valeur2
  break;
 default:
  // Code si aucun case ne correspond
}
```

---

## EXERCICE 1 : Premier Switch

### ÉTAPE 1.1 - Créer le fichier

`nano premier_switch.dart`{{execute}}

### ÉTAPE 1.2 - Taper le code

```dart
import 'dart:io';

void main() {
 print('=== MENU PRINCIPAL ===');
 print('1. Nouveau jeu');
 print('2. Charger partie');
 print('3. Options');
 print('4. Quitter');
 print('');
 print('Votre choix (1-4):');
 
 String? input = stdin.readLineSync();
 
 switch (input) {
  case '1':
   print('Lancement d\'une nouvelle partie...');
   break;
  case '2':
   print('Chargement de la dernière sauvegarde...');
   break;
  case '3':
   print('Ouverture des options...');
   break;
  case '4':
   print('Au revoir !');
   break;
  default:
   print('Choix invalide !');
 }
}
```

### ÉTAPE 1.3 - Comprendre le Code

**Parties importantes :**

- `switch (input)` - Variable à tester
- `case '1':` - Si input vaut '1'
- `break;` - Sort du switch (IMPORTANT!)
- `default:` - Si aucun case ne correspond

### ÉTAPE 1.4 - Exécuter

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart premier_switch.dart`{{execute}}

**Testez :** 1, 2, 3, 4, 5

---

## Le Mot-clé `break`

### TRÈS IMPORTANT !

**Sans `break` :**
```dart
switch (x) {
 case 1:
  print('Un');
  // Pas de break !
 case 2:
  print('Deux');
  break;
}
```

**Si x = 1 :**
```
Un
Deux  ← Exécuté aussi !
```

**Avec `break` :**
```dart
switch (x) {
 case 1:
  print('Un');
  break; // ← Sort immédiatement
 case 2:
  print('Deux');
  break;
}
```

**Si x = 1 :**
```
Un   ← Seul ce code s'exécute
```

**RÈGLE : TOUJOURS mettre `break` !**

---

## EXERCICE 2 : Convertisseur de Mois

### ÉTAPE 2.1 - Créer le fichier

`nano mois.dart`{{execute}}

### ÉTAPE 2.2 - Taper le code

```dart
import 'dart:io';

void main() {
 print('=== INFORMATIONS SUR LES MOIS ===');
 print('Entrez un numéro de mois (1-12):');
 
 String? input = stdin.readLineSync();
 int mois = int.parse(input ?? '0');
 
 String nomMois;
 int jours;
 String saison;
 
 switch (mois) {
  case 1:
   nomMois = 'Janvier';
   jours = 31;
   saison = 'Hiver';
   break;
  case 2:
   nomMois = 'Février';
   jours = 28;
   saison = 'Hiver';
   break;
  case 3:
   nomMois = 'Mars';
   jours = 31;
   saison = 'Printemps';
   break;
  case 4:
   nomMois = 'Avril';
   jours = 30;
   saison = 'Printemps';
   break;
  case 5:
   nomMois = 'Mai';
   jours = 31;
   saison = 'Printemps';
   break;
  case 6:
   nomMois = 'Juin';
   jours = 30;
   saison = 'Été';
   break;
  case 7:
   nomMois = 'Juillet';
   jours = 31;
   saison = 'Été';
   break;
  case 8:
   nomMois = 'Août';
   jours = 31;
   saison = 'Été';
   break;
  case 9:
   nomMois = 'Septembre';
   jours = 30;
   saison = 'Automne';
   break;
  case 10:
   nomMois = 'Octobre';
   jours = 31;
   saison = 'Automne';
   break;
  case 11:
   nomMois = 'Novembre';
   jours = 30;
   saison = 'Automne';
   break;
  case 12:
   nomMois = 'Décembre';
   jours = 31;
   saison = 'Hiver';
   break;
  default:
   nomMois = 'Inconnu';
   jours = 0;
   saison = 'Inconnu';
 }
 
 if (mois >= 1 && mois <= 12) {
  print('');
  print('Mois: $nomMois');
  print('Jours: $jours');
  print('Saison: $saison');
 } else {
  print('');
  print('Mois invalide !');
 }
}
```

### ÉTAPE 2.3 - Exécuter

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart mois.dart`{{execute}}

**Testez tous les mois !**

---

## Cases Multiples

### Même Code pour Plusieurs Valeurs

```dart
switch (jour) {
 case 'samedi':
 case 'dimanche':
  print('Weekend !');
  break;
 case 'lundi':
 case 'mardi':
 case 'mercredi':
 case 'jeudi':
 case 'vendredi':
  print('Jour de travail');
  break;
}
```

**Samedi ET dimanche → même code !**

---

## EXERCICE 3 : Calculatrice

### ÉTAPE 3.1 - Créer le fichier

`nano calculatrice_switch.dart`{{execute}}

### ÉTAPE 3.2 - Taper le code

```dart
import 'dart:io';

void main() {
 print('=== CALCULATRICE ===');
 
 print('Premier nombre:');
 double a = double.parse(stdin.readLineSync() ?? '0');
 
 print('Opération (+, -, *, /):');
 String? operation = stdin.readLineSync();
 
 print('Deuxième nombre:');
 double b = double.parse(stdin.readLineSync() ?? '0');
 
 double resultat;
 String symbole;
 
 switch (operation) {
  case '+':
   resultat = a + b;
   symbole = '+';
   break;
  case '-':
   resultat = a - b;
   symbole = '-';
   break;
  case '*':
  case 'x':
  case '×': // Accepte plusieurs symboles
   resultat = a * b;
   symbole = '×';
   break;
  case '/':
  case '÷':
   if (b != 0) {
    resultat = a / b;
    symbole = '÷';
   } else {
    print('Erreur: Division par zéro !');
    return;
   }
   break;
  default:
   print('Opération non reconnue !');
   return;
 }
 
 print('');
 print('$a $symbole $b = $resultat');
}
```

### ÉTAPE 3.3 - Exécuter

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart calculatrice_switch.dart`{{execute}}

---

## Préparation Flutter : Navigation

### Console (aujourd'hui)
```dart
switch (choixMenu) {
 case 1:
  afficherAccueil();
  break;
 case 2:
  afficherProfil();
  break;
}
```

### Flutter (bientôt)
```dart
Widget build(context) {
 switch (pageActuelle) {
  case 'accueil':
   return PageAccueil(); // ← Navigation !
  case 'profil':
   return PageProfil();
  default:
   return Page404();
 }
}
```

**Switch pour changer de page !** 

---

## Quand Utiliser Switch vs If/Else ?

### Utilisez SWITCH si :
 Vous comparez UNE variable à plusieurs valeurs exactes 
 Vous avez 3+ cas 
 Les valeurs sont fixes (nombres, strings) 

### Utilisez IF/ELSE si :
 Vous avez des conditions complexes (`&&`, `||`) 
 Vous comparez des plages (`age >= 18`) 
 Vous avez seulement 1-2 cas 

---

## Exemples

### BON pour Switch
```dart
switch (jour) {
 case 'lundi': // ...
 case 'mardi': // ...
}
```

### MAUVAIS pour Switch
```dart
// Utilisez if/else à la place !
switch (age) {
 case 0:
 case 1:
 case 2:
 // ... jusqu'à 17 ??
 case 17:
  print('Mineur');
  break;
 default:
  print('Majeur');
}
```

**Mieux :**
```dart
if (age < 18) {
 print('Mineur');
} else {
 print('Majeur');
}
```

---

## ATTENTION: Erreurs Courantes

### Erreur #1 : Oublier break

**PROBLÈME :**
```dart
switch (x) {
 case 1:
  print('Un');
  // Pas de break !
 case 2:
  print('Deux');
  break;
}
```

**Si x = 1 :** Affiche "Un" ET "Deux" !

---

### Erreur #2 : Utiliser des Conditions

**FAUX :**
```dart
switch (age) {
 case age >= 18: // Impossible !
  print('Majeur');
  break;
}
```

**Switch accepte seulement des VALEURS EXACTES !**

---

## Récapitulatif : Switch

### Structure
```dart
switch (variable) {
 case valeur1:
  // Code
  break;
 case valeur2:
  // Code
  break;
 default:
  // Code par défaut
}
```

### Règles
 `break` obligatoire (sauf cas multiples) 
 `default` optionnel mais recommandé 
 Cases multiples possibles 
 Valeurs exactes uniquement 

---

## Prêt pour le Défi ?

Vous maîtrisez maintenant :
- if/else
- Opérateurs de comparaison
- Opérateurs logiques
- switch/case

**PROCHAINE ÉTAPE :** Créer un système complet ! 

**Cliquez sur "Continuer" pour l'Étape 4 !** →


