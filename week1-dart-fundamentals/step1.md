# Étape 1 : Variables et Types de Données en Dart

## IMPORTANT: Vérifier l'environnement Dart

### Commande 1 : Aller dans votre dossier de projet

`cd /root/mon_projet_dart`{{execute}}

**VÉRIFICATION:**
Votre ligne de commande doit montrer:
```
root@host:~/mon_projet_dart#
```

---

### Commande 2 : Vérifier que Dart fonctionne

`dart --version`{{execute}}

**RÉSULTAT ATTENDU:**
```
Dart SDK version: 3.x.x
```

**SI ERREUR "command not found":**
`export PATH="$PATH:/usr/lib/dart/bin"`{{execute}}

Puis réessayez `dart --version`

---

## Qu'est-ce qu'une Variable? 

### Analogie Simple

Imaginez votre mémoire (votre cerveau):
- Vous pouvez y **stocker** des informations
- Vous pouvez les **récupérer** plus tard
- Vous pouvez les **modifier**

**Une variable, c'est pareil mais dans la mémoire de l'ordinateur!**

### Exemple Concret

**Dans la vraie vie:**
- "Mon âge est 25 ans"
- "Ma ville est Paris"
- "Mon solde est 150.50 euros"

**En programmation:**
```dart
var age = 25;
var ville = 'Paris';
var solde = 150.50;
```

**La variable = une boîte avec une étiquette!**
- **Étiquette:** `age`, `ville`, `solde` (le nom)
- **Contenu:** `25`, `'Paris'`, `150.50` (la valeur)

---

## Les Types de Données en Dart

Dart a plusieurs "types de boîtes" pour différents types d'informations.

### 1. `int` - Nombres Entiers 

**Exemples:**
- Age: 25
- Nombre d'étudiants: 30
- Année: 2025

**Caractéristiques:**
- PAS de virgule
- Peut être négatif
- Peut être zéro

```dart
int age = 25;
int temperature = -5;
int zero = 0;
```

---

### 2. `double` - Nombres Décimaux .

**Exemples:**
- Prix: 19.99
- Taille: 1.75
- Note: 15.5

**Caractéristiques:**
- AVEC un point (pas une virgule!)
- Peut être négatif
- Plus précis que `int`

```dart
double prix = 19.99;
double taille = 1.75;
double temperature = -3.5;
```

** ATTENTION:**
En Dart, on utilise un **POINT** pas une virgule!
- `19.99` (correct)
- `19,99` (erreur!)

---

### 3. `String` - Texte 

**Exemples:**
- Nom: "Julie"
- Ville: "Paris"
- Message: "Bonjour!"

**Caractéristiques:**
- TOUJOURS entre guillemets `' '` ou `" "`
- Peut contenir des lettres, chiffres, symboles
- Peut être vide: `''`

```dart
String nom = 'Julie';
String ville = "Paris";
String message = 'Bonjour tout le monde!';
String vide = '';
```

**Guillemets simples ou doubles?**
Les deux fonctionnent! Mais soyez cohérent.

**Convention:** Guillemets simples `' '` sont plus courants en Dart.

---

### 4. `bool` - Vrai ou Faux 

**Exemples:**
- Est majeur? true
- Est en ligne? false
- A payé? true

**Caractéristiques:**
- SEULEMENT deux valeurs possibles: `true` ou `false`
- PAS de guillemets!
- TOUJOURS en minuscules!

```dart
bool estMajeur = true;
bool estEnLigne = false;
bool aPaye = true;
```

** ATTENTION:**
- `true` et `false` (minuscules)
- `True` et `False` (majuscules = erreur!)
- `'true'` (avec guillemets = String, pas bool!)

---

### 5. `var` - Laisse Dart Deviner 

**Dart est intelligent!** Il peut deviner le type.

```dart
var age = 25;      // Dart comprend: int
var nom = 'Julie';   // Dart comprend: String
var prix = 19.99;    // Dart comprend: double
var estActif = true;  // Dart comprend: bool
```

**Quand utiliser `var`?**
- Quand le type est évident
- Pour écrire plus vite
- Quand vous débutez

**Quand utiliser les types explicites (`int`, `String`, etc.)?**
- Quand vous voulez être clair
- Dans le code professionnel
- Pour éviter les erreurs

---

## Règles de Nommage des Variables

### CE QUI EST PERMIS:

```dart
var age = 25;       // Simple et clair
var nomComplet = 'Julie'; // camelCase (recommandé!)
var prix_total = 100;   // snake_case (possible)
var nombre2 = 10;     // Chiffres OK (pas au début!)
```

**Convention Dart:** **camelCase**
- Premier mot en minuscule
- Mots suivants: première lettre en majuscule
- Exemples: `monAge`, `prixTotal`, `nomComplet`

### CE QUI EST INTERDIT:

```dart
var 2nombre = 10;     // Ne peut pas commencer par un chiffre
var prix-total = 100;   // Pas de tiret
var nom complet = 'Julie'; // Pas d'espace
var class = 5;       // "class" est un mot réservé
```

---

## EXERCICE 1 : Créer vos Premières Variables 

### Objectif
Créer un fichier avec plusieurs variables de différents types.

---

### ÉTAPE 1.1 - Créer le fichier avec nano

`nano variables.dart`{{execute}}

**CE QUI SE PASSE:**
- nano s'ouvre (écran bleu/noir)
- Vous pouvez maintenant taper

---

### ÉTAPE 1.2 - Taper le code

**ACTION REQUISE:**
Dans nano, tapez ce code **EXACTEMENT:**

```dart
void main() {
 // Variables de différents types
 int age = 25;
 String nom = 'Julie';
 double taille = 1.75;
 bool estEtudiant = true;
 
 // Afficher les variables
 print('Nom: $nom');
 print('Age: $age ans');
 print('Taille: $taille m');
 print('Est étudiant: $estEtudiant');
}
```

**POINTS IMPORTANTS:**
- `//` = commentaire (Dart ignore cette ligne)
- `$nom` = insère la valeur de la variable dans le texte!
- Chaque instruction se termine par `;`
- `{` et `}` délimitent le code de main()

---

### ÉTAPE 1.3 - Comprendre ce code

**Ligne 2:** `// Variables de différents types`
- C'est un **commentaire** (pour les humains)
- Dart l'ignore complètement
- Utile pour expliquer le code

**Lignes 3-6:** Déclaration des variables
- `int age = 25;` → Crée une variable `age` de type entier
- `String nom = 'Julie';` → Crée une variable `nom` de type texte
- etc.

**Ligne 9:** `print('Nom: $nom');`
- `$nom` = **interpolation de string**
- Dart remplace `$nom` par la valeur de `nom`
- Résultat: `Nom: Julie`

**C'est MAGIQUE!** Le `$` permet d'insérer des variables dans du texte!

---

### ÉTAPE 1.4 - Sauvegarder et quitter

**1. Sauvegarder:**
- `Ctrl + O`
- `Entrée`
- Vous voyez: `[ Wrote X lines ]`

**2. Quitter:**
- `Ctrl + X`

---

### ÉTAPE 1.5 - Exécuter le programme

`dart variables.dart`{{execute}}

**RÉSULTAT ATTENDU:**
```
Nom: Julie
Age: 25 ans
Taille: 1.75 m
Est étudiant: true
```

**SI VOUS VOYEZ ÇA:** **Bien.** Vos variables fonctionnent!

---

## EXERCICE 2 : Modifier des Variables 

### Objectif
Apprendre que les variables peuvent changer de valeur!

---

### ÉTAPE 2.1 - Créer un nouveau fichier

`nano modification.dart`{{execute}}

---

### ÉTAPE 2.2 - Taper le code

```dart
void main() {
 // Créer une variable
 var compteur = 0;
 print('Compteur au début: $compteur');
 
 // Modifier la variable
 compteur = 5;
 print('Compteur après modification: $compteur');
 
 // Modifier encore
 compteur = 10;
 print('Compteur à la fin: $compteur');
}
```

---

### ÉTAPE 2.3 - Comprendre ce code

**Ligne 3:** `var compteur = 0;`
- **Déclaration** de la variable
- On crée la variable ET on lui donne une valeur initiale

**Ligne 7:** `compteur = 5;`
- **Assignation** (pas de `var` cette fois!)
- On change la valeur de la variable existante
- PAS besoin de `var` car la variable existe déjà!

**Ligne 11:** `compteur = 10;`
- On change encore la valeur
- Toujours pas de `var`

**RÈGLE IMPORTANTE:**
- **Première fois:** `var compteur = 0;` (avec `var` ou type)
- **Fois suivantes:** `compteur = 5;` (SANS `var`)

---

### ÉTAPE 2.4 - Sauvegarder, quitter et exécuter

1. `Ctrl + O` puis `Entrée`
2. `Ctrl + X`
3. `dart modification.dart`{{execute}}

**RÉSULTAT ATTENDU:**
```
Compteur au début: 0
Compteur après modification: 5
Compteur à la fin: 10
```

**Vous voyez?** La variable **CHANGE** de valeur! C'est pour ça qu'on l'appelle "variable"! 

---

## EXERCICE 3 : Calculs avec des Variables 

### Objectif
Utiliser des variables dans des calculs.

---

### ÉTAPE 3.1 - Créer le fichier

`nano calculs.dart`{{execute}}

---

### ÉTAPE 3.2 - Taper le code

```dart
void main() {
 // Informations d'un rectangle
 int longueur = 10;
 int largeur = 5;
 
 // Calculer l'aire et le périmètre
 int aire = longueur * largeur;
 int perimetre = 2 * (longueur + largeur);
 
 // Afficher les résultats
 print('Rectangle:');
 print(' Longueur: $longueur cm');
 print(' Largeur: $largeur cm');
 print(' Aire: $aire cm²');
 print(' Périmètre: $perimetre cm');
}
```

---

### ÉTAPE 3.3 - Comprendre les opérateurs

**Opérateurs mathématiques en Dart:**

| Opérateur | Signification | Exemple | Résultat |
|-----------|---------------|---------|----------|
| `+` | Addition | `5 + 3` | `8` |
| `-` | Soustraction | `5 - 3` | `2` |
| `*` | Multiplication | `5 * 3` | `15` |
| `/` | Division | `10 / 2` | `5.0` (double!) |
| `~/` | Division entière | `10 ~/ 3` | `3` (int) |
| `%` | Modulo (reste) | `10 % 3` | `1` |

** ATTENTION À LA DIVISION:**
- `/` donne toujours un `double` (même si résultat entier)
- `~/` donne toujours un `int` (partie entière)

**Dans notre code:**
- `longueur * largeur` = multiplication
- `2 * (longueur + largeur)` = multiplication et addition

---

### ÉTAPE 3.4 - Exécuter

1. Sauvegarder: `Ctrl + O` puis `Entrée`
2. Quitter: `Ctrl + X`
3. `dart calculs.dart`{{execute}}

**RÉSULTAT ATTENDU:**
```
Rectangle:
 Longueur: 10 cm
 Largeur: 5 cm
 Aire: 50 cm²
 Périmètre: 30 cm
```

**SI VOUS VOYEZ ÇA:** Vous savez faire des calculs avec des variables!

---

## EXERCICE 4 : À Vous de Jouer! 

### Objectif
Créer votre propre programme avec VOS informations.

---

### ÉTAPE 4.1 - Créer le fichier

`nano moi.dart`{{execute}}

---

### ÉTAPE 4.2 - Taper LE TEMPLATE

```dart
void main() {
 // VOS INFORMATIONS - MODIFIEZ LES VALEURS!
 String prenom = 'VotrePrénom';
 int age = 0;
 String ville = 'VotreVille';
 double taille = 1.70;
 bool aimeProgammer = true;
 
 // Calculer l'année de naissance (approximatif)
 int annee = 2025 - age;
 
 // Afficher tout
 print('=== MON PROFIL ===');
 print('Prénom: $prenom');
 print('Age: $age ans');
 print('Année de naissance: $annee');
 print('Ville: $ville');
 print('Taille: $taille m');
 print('Aime programmer: $aimeProgammer');
}
```

---

### ÉTAPE 4.3 - PERSONNALISER LE CODE!

**ACTION REQUISE:**
Modifiez les valeurs pour VOUS:

1. Changez `'VotrePrénom'` par VOTRE prénom
2. Changez `0` par VOTRE âge
3. Changez `'VotreVille'` par VOTRE ville
4. Changez `1.70` par VOTRE taille (en mètres)
5. Changez `true` par `false` si vous n'aimez pas programmer (mais vous êtes ici, donc probablement `true`! )

**EXEMPLE:**
```dart
String prenom = 'Marie';
int age = 23;
String ville = 'Lyon';
double taille = 1.65;
bool aimeProgammer = true;
```

---

### ÉTAPE 4.4 - Exécuter VOTRE programme personnalisé!

1. Sauvegarder: `Ctrl + O` puis `Entrée`
2. Quitter: `Ctrl + X`
3. `dart moi.dart`{{execute}}

**RÉSULTAT ATTENDU:**
Vous devez voir VOS informations s'afficher! 

**C'est VOTRE programme, avec VOS données!**

---

## ATTENTION: Erreurs Courantes

### Erreur #1: Oublier le point-virgule

**CODE AVEC ERREUR:**
```dart
var age = 25  // Manque ;
print(age);
```

**ERREUR DART:**
```
Error: Expected ';' after this.
```

**SOLUTION:**
```dart
var age = 25;  // Avec ;
print(age);
```

---

### Erreur #2: Changer le type d'une variable

**CODE AVEC ERREUR:**
```dart
int age = 25;
age = 'vingt-cinq'; // Était int, maintenant String?
```

**ERREUR DART:**
```
Error: A value of type 'String' can't be assigned to a variable of type 'int'.
```

**EXPLICATION:**
Une fois le type défini, on ne peut pas le changer!

**SOLUTION:**
Si vous voulez changer de type, utilisez `var` et créez une nouvelle variable:
```dart
var age = 25;    // int
var ageTexte = 'vingt-cinq'; // String (nouvelle variable!)
```

---

### Erreur #3: Utiliser une variable non déclarée

**CODE AVEC ERREUR:**
```dart
print(nom); // Quelle est cette variable "nom"?
```

**ERREUR DART:**
```
Error: Undefined name 'nom'.
```

**SOLUTION:**
Déclarez la variable AVANT de l'utiliser:
```dart
var nom = 'Julie'; // D'abord déclarer
print(nom);     // Puis utiliser
```

---

### Erreur #4: Oublier les guillemets pour un String

**CODE AVEC ERREUR:**
```dart
String ville = Paris; // Manque les guillemets
```

**ERREUR DART:**
```
Error: Undefined name 'Paris'.
```

**SOLUTION:**
```dart
String ville = 'Paris'; // Avec guillemets
```

---

## Interpolation de String : Plus de Détails 

Vous avez vu `$nom` dans les `print()`. C'est très puissant!

### Syntaxe Simple

```dart
var nom = 'Julie';
print('Bonjour $nom!'); // Résultat: Bonjour Julie!
```

### Syntaxe avec Expressions

Pour des expressions plus complexes, utilisez `${ }`:

```dart
var age = 25;
print('Dans 5 ans, j\'aurai ${age + 5} ans');
// Résultat: Dans 5 ans, j'aurai 30 ans
```

### Exemples

```dart
var prenom = 'Julie';
var nom = 'Dupont';
var age = 25;

// Simple
print('Prénom: $prenom');

// Avec expression
print('Nom complet: $prenom $nom');

// Avec calcul
print('Âge dans 10 ans: ${age + 10}');

// Avec méthode (on verra plus tard)
print('Prénom en majuscules: ${prenom.toUpperCase()}');
```

**C'est bien plus pratique que de concaténer avec `+` !**

---

## Récapitulatif : Ce que Vous Avez Appris 

### Concepts Clés:
 **Variable** = boîte qui stocke une valeur
 **Type** = genre de données (int, String, double, bool)
 **Déclaration** = créer une variable
 **Assignation** = donner/changer une valeur
 **Interpolation** = insérer une variable dans un texte avec `$`

### Types de Données:
 `int` = nombres entiers
 `double` = nombres décimaux
 `String` = texte (entre guillemets)
 `bool` = true ou false
 `var` = laisse Dart deviner le type

### Opérateurs:
 `+` `-` `*` `/` `~/` `%` pour les calculs

### Règles:
 Chaque instruction se termine par `;`
 On ne peut pas changer le type d'une variable
 Noms de variables en camelCase
 Déclaration une seule fois (avec `var` ou type)

---

## Aide-Mémoire Visuel

```dart
// DÉCLARATION (première fois)
var nom = 'Julie';    // Avec var
int age = 25;       // Avec type explicite

// UTILISATION
print('Nom: $nom');    // Interpolation simple
print('Dans 5 ans: ${age + 5}'); // Interpolation avec expression

// MODIFICATION
age = 26;         // Sans var!

// CALCULS
var total = 10 + 5;    // Addition
var produit = 10 * 5;   // Multiplication
var reste = 10 % 3;    // Modulo (reste)
```

---

## Conseil professionnel

### Nommez vos variables intelligemment!

**MAUVAIS NOMS:**
```dart
var a = 25;    // Quoi "a"?
var x = 'Julie';  // Pourquoi "x"?
var truc = 100;  // "truc"? Vraiment?
```

**BONS NOMS:**
```dart
var age = 25;       // Clair!
var prenom = 'Julie';   // Explicite!
var prixTotal = 100;   // On comprend!
```

**RÈGLE D'OR:**
Nommez vos variables de façon à ce que quelqu'un d'autre (ou vous dans 6 mois) comprenne immédiatement ce qu'elles contiennent!

**Un bon nom de variable = auto-documentation!**

---

## Mini-Quiz : Testez Vos Connaissances 

<details>
<summary>Question 1: Quelle est la bonne déclaration?</summary>

A) `var age = 25` 
B) `var age = 25;` 
C) `age = 25;`

**Réponse:** B) `var age = 25;`
- A manque le point-virgule
- C manque le `var` pour la déclaration
</details>

<details>
<summary>Question 2: Quel type pour un prix?</summary>

A) `int prix = 19.99;` 
B) `double prix = 19.99;` 
C) `String prix = 19.99;`

**Réponse:** B) `double prix = 19.99;`
- Les prix ont souvent des décimales
- `int` ne peut pas stocker `19.99` (pas de décimales)
- `String` c'est du texte, pas un nombre
</details>

<details>
<summary>Question 3: Comment afficher une variable?</summary>

A) `print(age);` 
B) `print('Age: $age');` 
C) Les deux marchent!

**Réponse:** C) Les deux marchent!
- `print(age)` affiche juste la valeur
- `print('Age: $age')` affiche un texte formaté
- Les deux sont corrects selon ce que vous voulez!
</details>

---

## Prêt pour les Fonctions?

Vous savez maintenant:
- Créer des variables
- Stocker différents types de données
- Modifier des valeurs
- Faire des calculs
- Afficher des résultats

**PROCHAINE ÉTAPE:** Apprendre à créer des **fonctions** pour réutiliser du code! 

**Cliquez sur "Continuer" pour l'Étape 2!** →


