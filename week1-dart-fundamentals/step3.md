# Étape 3 : Entrées et Sorties Console

## IMPORTANT: Vérifier l'environnement

### Commande 1 : Aller dans votre dossier

`cd /root/mon_projet_dart`{{execute}}

### Commande 2 : Vérifier Dart

`dart --version`{{execute}}

---

## Qu'est-ce que l'Entrée/Sortie? 💬

### Analogie Simple

Imaginez une **conversation**:
- **Sortie (Output):** Vous parlez → l'autre personne écoute
- **Entrée (Input):** L'autre personne parle → vous écoutez

**En programmation:**
- **Sortie:** Le programme affiche quelque chose (`print`)
- **Entrée:** L'utilisateur tape quelque chose (`stdin.readLineSync()`)

**Jusqu'à maintenant, on a fait que des SORTIES!**

**Maintenant, on va créer des programmes INTERACTIFS!** 🎮

---

## Sortie: Ce que Vous Connaissez Déjà

### `print()` - Afficher du Texte

```dart
void main() {
  print('Bonjour!');
  print('Ceci est une sortie.');
}
```

**Vous savez déjà faire ça!** ✅

---

## Entrée: Lire des Données de l'Utilisateur

### `stdin.readLineSync()` - Lire une Ligne

**Syntaxe complète:**
```dart
import 'dart:io';  // Obligatoire pour stdin!

void main() {
  String? reponse = stdin.readLineSync();
  print('Vous avez tapé: $reponse');
}
```

**Décomposition:**
1. `import 'dart:io';` - Importer la bibliothèque d'entrée/sortie
2. `stdin` - Standard Input (entrée standard = clavier)
3. `readLineSync()` - Lire une ligne (attend que l'utilisateur appuie sur Entrée)
4. `String?` - Type nullable (peut être null si erreur)

---

## EXERCICE 1 : Votre Premier Programme Interactif 🎯

### ÉTAPE 1.1 - Créer le fichier

`nano interactif.dart`{{execute}}

---

### ÉTAPE 1.2 - Taper le code

```dart
import 'dart:io';

void main() {
  // Demander le nom
  print('Comment vous appelez-vous?');
  String? nom = stdin.readLineSync();
  
  // Afficher un message personnalisé
  print('Bonjour $nom! Enchanté de vous rencontrer!');
}
```

---

### ÉTAPE 1.3 - Comprendre ce code

**Ligne 1:** `import 'dart:io';`
- **Obligatoire** pour utiliser `stdin`
- `dart:io` = bibliothèque d'entrée/sortie de Dart
- Sans cette ligne: erreur "Undefined name 'stdin'"

**Ligne 5:** `print('Comment vous appelez-vous?');`
- Affiche une question
- Attend que l'utilisateur tape quelque chose

**Ligne 6:** `String? nom = stdin.readLineSync();`
- `stdin` = entrée standard (clavier)
- `readLineSync()` = lit une ligne (synchrone = attend)
- `String?` = le résultat peut être null
- Programme **SE MET EN PAUSE** jusqu'à ce que l'utilisateur appuie sur Entrée

**Ligne 9:** Utilise la variable `nom` comme d'habitude

---

### ÉTAPE 1.4 - Exécuter et INTERAGIR!

1. `Ctrl + O` puis `Entrée`
2. `Ctrl + X`
3. `dart interactif.dart`{{execute}}

**CE QUI SE PASSE:**
1. Le programme affiche: "Comment vous appelez-vous?"
2. Le curseur **attend** votre réponse
3. **TAPEZ VOTRE PRÉNOM** puis **Entrée**
4. Le programme affiche: "Bonjour [votre prénom]! Enchanté de vous rencontrer!"

**EXEMPLE:**
```
Comment vous appelez-vous?
Julie
Bonjour Julie! Enchanté de vous rencontrer!
```

**SI ÇA MARCHE:** 🎉 Votre premier programme interactif!

---

## Convertir les Entrées : `int.parse()` et `double.parse()`

### Problème

`stdin.readLineSync()` retourne **TOUJOURS** un `String` (texte).

**Même si l'utilisateur tape "25", c'est le texte "25", pas le nombre 25!**

### Solution: Conversion

```dart
import 'dart:io';

void main() {
  print('Entrez votre âge:');
  String? ageTexte = stdin.readLineSync();
  
  // Convertir String → int
  int age = int.parse(ageTexte ?? '0');
  
  print('Dans 5 ans, vous aurez ${age + 5} ans.');
}
```

**Explication:**
- `int.parse(texte)` - Convertit un String en int
- `ageTexte ?? '0'` - Si null, utilise '0' par défaut
- Maintenant on peut faire des calculs avec `age`!

---

## EXERCICE 2 : Calculateur d'Âge 🎯

### ÉTAPE 2.1 - Créer le fichier

`nano calculateur_age.dart`{{execute}}

---

### ÉTAPE 2.2 - Taper le code

```dart
import 'dart:io';

void main() {
  print('=== CALCULATEUR D\'ÂGE ===');
  print('');
  
  // Demander l'année de naissance
  print('En quelle année êtes-vous né(e)?');
  String? anneeTexte = stdin.readLineSync();
  int annee = int.parse(anneeTexte ?? '2000');
  
  // Calculer l'âge
  int anneeActuelle = 2025;
  int age = anneeActuelle - annee;
  
  // Afficher le résultat
  print('');
  print('Vous avez $age ans (ou aurez $age ans cette année).');
  print('Dans 10 ans, vous aurez ${age + 10} ans.');
}
```

---

### ÉTAPE 2.3 - Exécuter et tester

1. `Ctrl + O` puis `Entrée`
2. `Ctrl + X`
3. `dart calculateur_age.dart`{{execute}}

**INTERACTION ATTENDUE:**
```
=== CALCULATEUR D'ÂGE ===

En quelle année êtes-vous né(e)?
2000
Vous avez 25 ans (ou aurez 25 ans cette année).
Dans 10 ans, vous aurez 35 ans.
```

**TESTEZ avec différentes années!** 📅

---

## EXERCICE 3 : Calculateur de Prix avec TVA 💰

### ÉTAPE 3.1 - Créer le fichier

`nano calculateur_tva.dart`{{execute}}

---

### ÉTAPE 3.2 - Taper le code

```dart
import 'dart:io';

void main() {
  print('=== CALCULATEUR DE PRIX TTC ===');
  print('');
  
  // Demander le prix HT
  print('Entrez le prix HT (hors taxes):');
  String? prixTexte = stdin.readLineSync();
  double prixHT = double.parse(prixTexte ?? '0');
  
  // Demander le taux de TVA
  print('Entrez le taux de TVA (en %, ex: 20):');
  String? tvaTexte = stdin.readLineSync();
  double tauxTVA = double.parse(tvaTexte ?? '20');
  
  // Calculer le prix TTC
  double montantTVA = prixHT * tauxTVA / 100;
  double prixTTC = prixHT + montantTVA;
  
  // Afficher les résultats
  print('');
  print('--- RÉSULTATS ---');
  print('Prix HT:     $prixHT €');
  print('TVA ($tauxTVA%): $montantTVA €');
  print('Prix TTC:    $prixTTC €');
}
```

---

### ÉTAPE 3.3 - Comprendre `double.parse()`

**Ligne 10:** `double prixHT = double.parse(prixTexte ?? '0');`
- `double.parse()` convertit String → double
- Accepte les nombres décimaux: "19.99"
- ⚠️ Utiliser un **POINT** pas une virgule!

**Opérateur `??` (null-coalescing):**
- `valeur ?? 'défaut'`
- Si `valeur` est null, utilise `'défaut'`
- Évite les erreurs!

---

### ÉTAPE 3.4 - Exécuter et tester

1. `Ctrl + O` puis `Entrée`
2. `Ctrl + X`
3. `dart calculateur_tva.dart`{{execute}}

**EXEMPLE D'INTERACTION:**
```
=== CALCULATEUR DE PRIX TTC ===

Entrez le prix HT (hors taxes):
100
Entrez le taux de TVA (en %, ex: 20):
20

--- RÉSULTATS ---
Prix HT:     100.0 €
TVA (20.0%): 20.0 €
Prix TTC:    120.0 €
```

---

## EXERCICE 4 : Quiz Interactif 🧠

### ÉTAPE 4.1 - Créer le fichier

`nano quiz.dart`{{execute}}

---

### ÉTAPE 4.2 - Taper le code

```dart
import 'dart:io';

void main() {
  print('=== QUIZ DART ===');
  print('Répondez aux questions suivantes:');
  print('');
  
  int score = 0;
  
  // Question 1
  print('Question 1: Quelle est la capitale de la France?');
  String? reponse1 = stdin.readLineSync();
  if (reponse1?.toLowerCase() == 'paris') {
    print('✓ Correct!');
    score++;
  } else {
    print('✗ Faux. La bonne réponse est Paris.');
  }
  print('');
  
  // Question 2
  print('Question 2: Combien font 7 × 8?');
  String? reponse2 = stdin.readLineSync();
  if (reponse2 == '56') {
    print('✓ Correct!');
    score++;
  } else {
    print('✗ Faux. La bonne réponse est 56.');
  }
  print('');
  
  // Question 3
  print('Question 3: Quel est le langage de ce cours? (indice: commence par D)');
  String? reponse3 = stdin.readLineSync();
  if (reponse3?.toLowerCase() == 'dart') {
    print('✓ Correct!');
    score++;
  } else {
    print('✗ Faux. La bonne réponse est Dart!');
  }
  print('');
  
  // Score final
  print('=== RÉSULTAT FINAL ===');
  print('Vous avez obtenu $score / 3');
  
  if (score == 3) {
    print('🏆 Parfait! Vous êtes un champion!');
  } else if (score >= 2) {
    print('👍 Bien joué!');
  } else {
    print('💪 Continuez à apprendre!');
  }
}
```

---

### ÉTAPE 4.3 - Comprendre les conditions

**Ligne 12:** `if (reponse1?.toLowerCase() == 'paris')`
- `reponse1?` - safe navigation (évite erreur si null)
- `.toLowerCase()` - convertit en minuscules
- `== 'paris'` - compare avec 'paris'
- Ainsi, "Paris", "PARIS", "paris" sont tous corrects!

**Ligne 13-16:** Bloc if/else
- Si condition vraie: affiche "Correct" et incrémente score
- Sinon: affiche la bonne réponse

**Ligne 42-48:** Conditions multiples
- `if` pour parfait (3/3)
- `else if` pour bien (2 ou plus)
- `else` pour le reste

---

### ÉTAPE 4.4 - Jouer au quiz!

1. `Ctrl + O` puis `Entrée`
2. `Ctrl + X`
3. `dart quiz.dart`{{execute}}

**JOUEZ ET AMUSEZ-VOUS!** 🎮

---

## Fonction Utilitaire : Demander une Entrée

### Créer une fonction réutilisable

```dart
import 'dart:io';

// Fonction qui demande et retourne une réponse
String demanderTexte(String question) {
  print(question);
  String? reponse = stdin.readLineSync();
  return reponse ?? '';
}

// Fonction qui demande un nombre entier
int demanderEntier(String question) {
  print(question);
  String? reponse = stdin.readLineSync();
  return int.parse(reponse ?? '0');
}

void main() {
  String nom = demanderTexte('Quel est votre nom?');
  int age = demanderEntier('Quel est votre âge?');
  
  print('Bonjour $nom, vous avez $age ans.');
}
```

**AVANTAGE:** Code plus propre et réutilisable!

---

## EXERCICE 5 : Convertisseur de Devises 💱

### À Vous de Jouer!

Créez `convertisseur.dart` qui:
1. Demande un montant en euros
2. Demande le taux de change (ex: 1.10 pour USD)
3. Calcule et affiche le montant converti

**Template de départ:**

```dart
import 'dart:io';

void main() {
  print('=== CONVERTISSEUR DE DEVISES ===');
  
  // TODO: Demander le montant en euros
  
  // TODO: Demander le taux de change
  
  // TODO: Calculer le montant converti
  
  // TODO: Afficher le résultat
}
```

**Solution cachée ci-dessous** ⬇️

<details>
<summary>Cliquez pour voir la solution</summary>

```dart
import 'dart:io';

void main() {
  print('=== CONVERTISSEUR DE DEVISES ===');
  print('');
  
  // Demander le montant
  print('Montant en euros (€):');
  String? montantTexte = stdin.readLineSync();
  double euros = double.parse(montantTexte ?? '0');
  
  // Demander le taux
  print('Taux de change (ex: 1.10 pour USD):');
  String? tauxTexte = stdin.readLineSync();
  double taux = double.parse(tauxTexte ?? '1');
  
  // Calculer
  double montantConverti = euros * taux;
  
  // Afficher
  print('');
  print('$euros € = $montantConverti');
}
```
</details>

---

## ⚠️ ATTENTION: Erreurs Courantes

### Erreur #1: Oublier `import 'dart:io';`

**CODE AVEC ERREUR:**
```dart
void main() {
  String? reponse = stdin.readLineSync();  // ❌
}
```

**ERREUR DART:**
```
Error: Undefined name 'stdin'.
```

**SOLUTION:**
```dart
import 'dart:io';  // ✅ En haut du fichier!

void main() {
  String? reponse = stdin.readLineSync();
}
```

---

### Erreur #2: Conversion invalide

**CODE AVEC ERREUR:**
```dart
import 'dart:io';

void main() {
  print('Entrez un nombre:');
  String? texte = stdin.readLineSync();
  int nombre = int.parse(texte);  // ❌ Si l'utilisateur tape "abc"?
}
```

**SI L'UTILISATEUR TAPE "abc":**
```
Unhandled exception:
FormatException: Invalid radix-10 number (at character 1)
```

**SOLUTION: Utiliser try-catch (niveau avancé) OU vérifier:**
```dart
int nombre = int.parse(texte ?? '0');  // ✅ Défaut si null
```

---

### Erreur #3: Comparer sans .toLowerCase()

**PROBLÈME:**
```dart
if (reponse == 'Paris') {  // ❌ N'accepte que "Paris" exactement
  print('Correct');
}
```

**Si l'utilisateur tape "paris" ou "PARIS":** Considéré comme faux!

**SOLUTION:**
```dart
if (reponse?.toLowerCase() == 'paris') {  // ✅ Accepte toutes les variantes
  print('Correct');
}
```

---

## Récapitulatif : Ce que Vous Avez Appris 📚

### Concepts Clés:
✅ **Sortie (Output)** = `print()` - afficher du texte
✅ **Entrée (Input)** = `stdin.readLineSync()` - lire du texte
✅ **Import** = `import 'dart:io';` - bibliothèque nécessaire
✅ **Conversion** = `int.parse()`, `double.parse()` - texte → nombre
✅ **Nullable** = `String?` - peut être null
✅ **Null-coalescing** = `??` - valeur par défaut si null

### Fonctions Importantes:
✅ `print(texte)` - afficher
✅ `stdin.readLineSync()` - lire une ligne
✅ `int.parse(texte)` - texte → int
✅ `double.parse(texte)` - texte → double
✅ `texte.toLowerCase()` - convertir en minuscules

### Pattern d'Interaction:
```dart
1. Afficher une question (print)
2. Lire la réponse (stdin)
3. Convertir si nécessaire (parse)
4. Utiliser la valeur
5. Afficher un résultat (print)
```

---

## Aide-Mémoire Visuel

```dart
import 'dart:io';  // OBLIGATOIRE!

void main() {
  // DEMANDER UN TEXTE
  print('Question?');
  String? reponse = stdin.readLineSync();
  print('Vous avez dit: $reponse');
  
  // DEMANDER UN NOMBRE ENTIER
  print('Entrez un nombre:');
  String? texte = stdin.readLineSync();
  int nombre = int.parse(texte ?? '0');
  
  // DEMANDER UN NOMBRE DÉCIMAL
  print('Entrez un prix:');
  String? prixTexte = stdin.readLineSync();
  double prix = double.parse(prixTexte ?? '0');
  
  // COMPARER (insensible à la casse)
  if (reponse?.toLowerCase() == 'oui') {
    print('Vous avez dit oui!');
  }
}
```

---

## Conseil de Professeur Expérimenté

### Toujours valider les entrées utilisateur!

**L'utilisateur peut taper N'IMPORTE QUOI:**
- Texte au lieu de nombre
- Nombre négatif
- Rien du tout (juste Entrée)
- Trop grand, trop petit

**BONNE PRATIQUE:**
```dart
// Demander l'âge
print('Votre âge:');
String? ageTexte = stdin.readLineSync();
int age = int.parse(ageTexte ?? '0');

// Valider
if (age <= 0 || age > 120) {
  print('Âge invalide!');
  return;  // Quitter le programme
}

// Continuer avec un âge valide
print('Âge valide: $age');
```

**Dans un vrai programme, toujours vérifier les entrées!**

---

## Exercice Bonus : Mini-Calculatrice 🧮

Créez une calculatrice qui:
1. Demande le premier nombre
2. Demande l'opération (+, -, *, /)
3. Demande le deuxième nombre
4. Affiche le résultat

**Solution dans step4 (défi pratique)!**

---

## Prêt pour le Défi Final?

Vous savez maintenant:
- Afficher des messages
- Lire des entrées utilisateur
- Convertir les types
- Créer des programmes interactifs
- Combiner tout ce que vous avez appris!

**PROCHAINE ÉTAPE:** Un défi pratique qui combine TOUT! 🏆

**Cliquez sur "Continuer" pour l'Étape 4!** →


