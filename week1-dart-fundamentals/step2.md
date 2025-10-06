# Étape 2 : Fonctions en Dart

## IMPORTANT: Vérifier l'environnement

### Commande 1 : Aller dans votre dossier de projet

`cd /root/mon_projet_dart`{{execute}}

### Commande 2 : Vérifier que Dart fonctionne

`dart --version`{{execute}}

**Vous devez voir:** `Dart SDK version: 3.x.x`

---

## Qu'est-ce qu'une Fonction? 🔧

### Analogie Simple

Imaginez une **machine à café**:
- **Entrée:** Vous mettez de l'eau et du café
- **Processus:** La machine fait son travail
- **Sortie:** Vous obtenez un café!

**Une fonction en programmation, c'est pareil!**
- **Entrée:** Paramètres (données)
- **Processus:** Code qui s'exécute
- **Sortie:** Résultat (valeur de retour)

### Pourquoi Utiliser des Fonctions?

**1. Éviter la répétition (DRY: Don't Repeat Yourself)**
```dart
// SANS fonction (répétitif)
print('Bonjour Julie!');
print('Bonjour Marc!');
print('Bonjour Sophie!');

// AVEC fonction (réutilisable)
direBonjour('Julie');
direBonjour('Marc');
direBonjour('Sophie');
```

**2. Organiser le code**
- Code plus lisible
- Plus facile à maintenir
- Plus facile à débugger

**3. Réutiliser le code**
- Écrivez une fois
- Utilisez partout!

---

## Anatomie d'une Fonction

```dart
returnType nomDeLaFonction(paramètres) {
  // Code de la fonction
  return résultat;
}
```

### Les Parties:

**1. Type de retour (`returnType`):**
- `void` si ne retourne rien
- `int`, `String`, `double`, `bool` si retourne quelque chose

**2. Nom (`nomDeLaFonction`):**
- En camelCase
- Verbe descriptif (ex: `calculer`, `afficher`, `obtenir`)

**3. Paramètres:**
- Entre parenthèses `( )`
- Peuvent être vides
- Type + nom: `int age`, `String nom`

**4. Corps:**
- Entre accolades `{ }`
- Code qui s'exécute

**5. Retour (optionnel):**
- `return` + valeur
- Si type de retour n'est pas `void`

---

## Fonction Simple : Sans Paramètres, Sans Retour

### Exemple

```dart
void direBonjour() {
  print('Bonjour tout le monde!');
}

void main() {
  direBonjour();  // Appel de la fonction
  direBonjour();  // On peut l'appeler plusieurs fois!
}
```

**Explication:**
- `void` = ne retourne rien
- `direBonjour()` = nom de la fonction (pas de paramètres)
- `print(...)` = code qui s'exécute
- `direBonjour();` = appel de la fonction

---

## EXERCICE 1 : Votre Première Fonction 🎯

### ÉTAPE 1.1 - Créer le fichier

`nano premiere_fonction.dart`{{execute}}

---

### ÉTAPE 1.2 - Taper le code

```dart
// Définir la fonction
void afficherMessage() {
  print('===============');
  print('Bienvenue en Dart!');
  print('===============');
}

void main() {
  // Appeler la fonction 3 fois
  afficherMessage();
  print('');  // Ligne vide
  afficherMessage();
  print('');
  afficherMessage();
}
```

---

### ÉTAPE 1.3 - Comprendre ce code

**Lignes 2-6:** Définition de la fonction
- On crée une fonction nommée `afficherMessage`
- Elle ne prend pas de paramètres `()`
- Elle ne retourne rien (`void`)
- Elle affiche 3 lignes

**Lignes 8-15:** Fonction main
- On appelle `afficherMessage()` 3 fois
- Même code, 3 exécutions différentes!

**AVANTAGE:** Si on veut changer le message, on le change UNE SEULE FOIS dans la fonction!

---

### ÉTAPE 1.4 - Exécuter

1. Sauvegarder: `Ctrl + O` puis `Entrée`
2. Quitter: `Ctrl + X`
3. `dart premiere_fonction.dart`{{execute}}

**RÉSULTAT ATTENDU:**
```
===============
Bienvenue en Dart!
===============

===============
Bienvenue en Dart!
===============

===============
Bienvenue en Dart!
===============
```

**SI VOUS VOYEZ ÇA:** 🎉 Votre première fonction marche!

---

## Fonction avec Paramètres : Entrées Personnalisées

### Exemple

```dart
void direBonjour(String prenom) {
  print('Bonjour $prenom!');
}

void main() {
  direBonjour('Julie');   // Bonjour Julie!
  direBonjour('Marc');    // Bonjour Marc!
  direBonjour('Sophie');  // Bonjour Sophie!
}
```

**Explication:**
- `String prenom` = paramètre (entrée de la fonction)
- `direBonjour('Julie')` = on passe 'Julie' comme argument
- La fonction reçoit 'Julie', le met dans `prenom`, et l'utilise

**Vocabulaire:**
- **Paramètre:** Variable dans la définition (`String prenom`)
- **Argument:** Valeur lors de l'appel (`'Julie'`)

---

## EXERCICE 2 : Fonction avec Paramètres 🎯

### ÉTAPE 2.1 - Créer le fichier

`nano avec_parametres.dart`{{execute}}

---

### ÉTAPE 2.2 - Taper le code

```dart
// Fonction avec UN paramètre
void presenterPersonne(String nom) {
  print('Je m\'appelle $nom.');
}

// Fonction avec PLUSIEURS paramètres
void presenterComplet(String nom, int age, String ville) {
  print('Je m\'appelle $nom.');
  print('J\'ai $age ans.');
  print('J\'habite à $ville.');
  print('---');
}

void main() {
  // Appeler avec un paramètre
  presenterPersonne('Julie');
  print('');
  
  // Appeler avec plusieurs paramètres
  presenterComplet('Marc', 30, 'Paris');
  presenterComplet('Sophie', 25, 'Lyon');
  presenterComplet('Thomas', 35, 'Marseille');
}
```

---

### ÉTAPE 2.3 - Comprendre les paramètres multiples

**Ligne 7:** `void presenterComplet(String nom, int age, String ville)`
- **3 paramètres** séparés par des virgules
- Chaque paramètre a un **type** et un **nom**
- Ordre important!

**Ligne 20:** `presenterComplet('Marc', 30, 'Paris');`
- **3 arguments** dans le MÊME ordre
- `'Marc'` → `nom`
- `30` → `age`
- `'Paris'` → `ville`

**⚠️ ATTENTION À L'ORDRE:**
```dart
presenterComplet('Marc', 30, 'Paris');     // ✅ Correct
presenterComplet(30, 'Marc', 'Paris');     // ❌ Erreur de type!
```

---

### ÉTAPE 2.4 - Exécuter

1. `Ctrl + O` puis `Entrée`
2. `Ctrl + X`
3. `dart avec_parametres.dart`{{execute}}

**RÉSULTAT ATTENDU:**
```
Je m'appelle Julie.

Je m'appelle Marc.
J'ai 30 ans.
J'habite à Paris.
---
Je m'appelle Sophie.
J'ai 25 ans.
J'habite à Lyon.
---
Je m'appelle Thomas.
J'ai 35 ans.
J'habite à Marseille.
---
```

**Vous voyez la puissance?** Une fonction, plusieurs utilisations! 🎯

---

## Fonction avec Retour : Produire un Résultat

### Exemple

```dart
int additionner(int a, int b) {
  int resultat = a + b;
  return resultat;
}

void main() {
  int somme = additionner(5, 3);
  print('5 + 3 = $somme');  // 5 + 3 = 8
}
```

**Explication:**
- `int` (avant le nom) = type de retour
- `return resultat;` = renvoie la valeur
- `int somme = additionner(5, 3);` = récupère le résultat

**La fonction RETOURNE une valeur qu'on peut stocker dans une variable!**

---

## EXERCICE 3 : Fonctions Mathématiques 🧮

### ÉTAPE 3.1 - Créer le fichier

`nano calculatrice.dart`{{execute}}

---

### ÉTAPE 3.2 - Taper le code

```dart
// Fonction qui retourne la somme
int additionner(int a, int b) {
  return a + b;
}

// Fonction qui retourne le produit
int multiplier(int a, int b) {
  return a * b;
}

// Fonction qui retourne le double d'un nombre
int doubler(int nombre) {
  return nombre * 2;
}

// Fonction qui retourne l'aire d'un rectangle
int calculerAire(int longueur, int largeur) {
  int aire = longueur * largeur;
  return aire;
}

void main() {
  // Utiliser les fonctions
  print('Addition: 5 + 3 = ${additionner(5, 3)}');
  print('Multiplication: 5 × 3 = ${multiplier(5, 3)}');
  print('Double de 7: ${doubler(7)}');
  
  // Stocker le résultat dans une variable
  int resultat = calculerAire(10, 5);
  print('Aire d\'un rectangle 10×5: $resultat cm²');
  
  // Utiliser un résultat dans un calcul
  int somme = additionner(10, 20);
  int doubleSomme = doubler(somme);
  print('10 + 20 = $somme, doublé = $doubleSomme');
}
```

---

### ÉTAPE 3.3 - Comprendre le retour de valeurs

**Ligne 3:** `return a + b;`
- Calcule `a + b`
- **Retourne** le résultat
- La fonction se termine immédiatement

**Ligne 24:** `${additionner(5, 3)}`
- Appelle la fonction
- Reçoit le résultat (8)
- L'insère dans le String

**Lignes 32-34:** Composition de fonctions
- `additionner(10, 20)` retourne `30`
- `doubler(30)` retourne `60`
- On peut utiliser le résultat d'une fonction dans une autre!

---

### ÉTAPE 3.4 - Exécuter

1. `Ctrl + O` puis `Entrée`
2. `Ctrl + X`
3. `dart calculatrice.dart`{{execute}}

**RÉSULTAT ATTENDU:**
```
Addition: 5 + 3 = 8
Multiplication: 5 × 3 = 15
Double de 7: 14
Aire d'un rectangle 10×5: 50 cm²
10 + 20 = 30, doublé = 60
```

---

## Fonction avec Retour de Type `String` 📝

```dart
String creerMessage(String nom, int age) {
  return 'Bonjour $nom, vous avez $age ans!';
}

void main() {
  String message1 = creerMessage('Julie', 25);
  String message2 = creerMessage('Marc', 30);
  
  print(message1);
  print(message2);
}
```

**Les fonctions peuvent retourner N'IMPORTE QUEL type!**
- `int`, `double`, `String`, `bool`, etc.

---

## EXERCICE 4 : Convertisseur de Température 🌡️

### Objectif
Créer des fonctions pour convertir Celsius ↔ Fahrenheit.

---

### ÉTAPE 4.1 - Créer le fichier

`nano temperature.dart`{{execute}}

---

### ÉTAPE 4.2 - Taper le code

```dart
// Convertir Celsius en Fahrenheit
// Formule: F = C × 9/5 + 32
double celsiusVersFahrenheit(double celsius) {
  double fahrenheit = celsius * 9 / 5 + 32;
  return fahrenheit;
}

// Convertir Fahrenheit en Celsius
// Formule: C = (F - 32) × 5/9
double fahrenheitVersCelsius(double fahrenheit) {
  double celsius = (fahrenheit - 32) * 5 / 9;
  return celsius;
}

// Afficher une température avec ses deux valeurs
void afficherTemperature(double celsius) {
  double fahrenheit = celsiusVersFahrenheit(celsius);
  print('$celsius°C = $fahrenheit°F');
}

void main() {
  // Tester les conversions
  print('=== CONVERSIONS DE TEMPÉRATURE ===');
  print('');
  
  afficherTemperature(0);     // Point de congélation de l'eau
  afficherTemperature(100);   // Point d'ébullition de l'eau
  afficherTemperature(37);    // Température corporelle normale
  afficherTemperature(-40);   // -40°C = -40°F (fait rigolo!)
  
  print('');
  print('=== CONVERSION INVERSE ===');
  double tempC = fahrenheitVersCelsius(98.6);
  print('98.6°F = $tempC°C (température corporelle)');
}
```

---

### ÉTAPE 4.3 - Comprendre les types `double`

**Pourquoi `double` et pas `int`?**
- Les températures peuvent avoir des décimales: 37.5°C
- Les divisions donnent souvent des décimales
- `double` est plus précis pour les calculs scientifiques

**Ligne 4:** `double fahrenheit = celsius * 9 / 5 + 32;`
- `/` en Dart donne toujours un `double`
- Même `10 / 5` donne `2.0` (pas `2`)

---

### ÉTAPE 4.4 - Exécuter

1. `Ctrl + O` puis `Entrée`
2. `Ctrl + X`
3. `dart temperature.dart`{{execute}}

**RÉSULTAT ATTENDU:**
```
=== CONVERSIONS DE TEMPÉRATURE ===

0.0°C = 32.0°F
100.0°C = 212.0°F
37.0°C = 98.6°F
-40.0°C = -40.0°F

=== CONVERSION INVERSE ===
98.6°F = 37.0°C (température corporelle)
```

**Fun fact:** -40°C = -40°F ! C'est le seul point où les deux échelles se croisent! ❄️

---

## Paramètres Nommés : Plus de Clarté

### Syntaxe

```dart
void creerProfil({required String nom, required int age, String? ville}) {
  print('Nom: $nom');
  print('Age: $age');
  if (ville != null) {
    print('Ville: $ville');
  }
}

void main() {
  // Appel avec paramètres nommés
  creerProfil(nom: 'Julie', age: 25, ville: 'Paris');
  creerProfil(nom: 'Marc', age: 30);  // ville optionnel
}
```

**Avantages:**
- Ordre n'a pas d'importance!
- Plus lisible
- Paramètres optionnels faciles

**Syntaxe:**
- `{ }` autour des paramètres
- `required` pour les obligatoires
- `?` pour les optionnels (peuvent être `null`)

---

## Valeurs par Défaut

```dart
void direBonjour({String nom = 'Invité', String langue = 'FR'}) {
  if (langue == 'FR') {
    print('Bonjour $nom!');
  } else if (langue == 'EN') {
    print('Hello $nom!');
  } else {
    print('Hola $nom!');
  }
}

void main() {
  direBonjour();                        // Bonjour Invité!
  direBonjour(nom: 'Julie');            // Bonjour Julie!
  direBonjour(nom: 'John', langue: 'EN'); // Hello John!
}
```

**Si vous ne passez pas d'argument, la valeur par défaut est utilisée!**

---

## ⚠️ ATTENTION: Erreurs Courantes

### Erreur #1: Retourner void

**CODE AVEC ERREUR:**
```dart
void calculer(int a, int b) {
  return a + b;  // ❌ void ne peut pas retourner!
}
```

**ERREUR DART:**
```
Error: Can't return a value from a void function.
```

**SOLUTION:**
```dart
int calculer(int a, int b) {  // ✅ int, pas void
  return a + b;
}
```

---

### Erreur #2: Oublier return

**CODE AVEC ERREUR:**
```dart
int additionner(int a, int b) {
  a + b;  // ❌ Calcule mais ne retourne pas!
}
```

**ERREUR DART:**
```
Error: A value of type 'int' was expected but 'void' was returned.
```

**SOLUTION:**
```dart
int additionner(int a, int b) {
  return a + b;  // ✅ Avec return
}
```

---

### Erreur #3: Mauvais type de retour

**CODE AVEC ERREUR:**
```dart
int diviser(int a, int b) {
  return a / b;  // ❌ Division retourne double, pas int!
}
```

**ERREUR DART:**
```
Error: A value of type 'double' can't be returned from a function with return type 'int'.
```

**SOLUTION:**
```dart
double diviser(int a, int b) {  // ✅ double
  return a / b;
}
```

---

### Erreur #4: Mauvais nombre d'arguments

**CODE AVEC ERREUR:**
```dart
int additionner(int a, int b) {
  return a + b;
}

void main() {
  additionner(5);  // ❌ Manque un argument!
}
```

**ERREUR DART:**
```
Error: Too few positional arguments: 2 required, 1 given.
```

**SOLUTION:**
```dart
additionner(5, 3);  // ✅ 2 arguments
```

---

## Récapitulatif : Ce que Vous Avez Appris 📚

### Concepts Clés:
✅ **Fonction** = bloc de code réutilisable
✅ **Paramètre** = entrée de la fonction
✅ **Argument** = valeur passée à la fonction
✅ **return** = sortie de la fonction
✅ **void** = fonction qui ne retourne rien

### Types de Fonctions:
✅ Sans paramètres, sans retour
✅ Avec paramètres, sans retour
✅ Sans paramètres, avec retour
✅ Avec paramètres et retour
✅ Paramètres nommés et optionnels

### Règles:
✅ Type de retour AVANT le nom
✅ `return` obligatoire si type ≠ `void`
✅ Parenthèses `()` obligatoires (même vides)
✅ Accolades `{}` délimitent le corps
✅ Appel = nom + arguments entre `()`

---

## Aide-Mémoire Visuel

```dart
// FONCTION COMPLÈTE
returnType nomFonction(paramètres) {
  // code
  return valeur;
}

// EXEMPLES

// 1. Void (ne retourne rien)
void afficher() {
  print('Hello');
}

// 2. Avec paramètres
void saluer(String nom) {
  print('Bonjour $nom');
}

// 3. Avec retour
int additionner(int a, int b) {
  return a + b;
}

// 4. Paramètres nommés
void creer({required String nom, int age = 0}) {
  print('$nom, $age ans');
}

// APPELS
afficher();
saluer('Julie');
int somme = additionner(5, 3);
creer(nom: 'Marc', age: 30);
```

---

## Conseil de Professeur Expérimenté

### Quand créer une fonction?

**CRÉEZ une fonction si:**
- ✅ Vous répétez le même code 2+ fois
- ✅ Le code fait une action spécifique (calculer, afficher, etc.)
- ✅ Le code est complexe (fonction = simplification)
- ✅ Vous voulez tester cette partie indépendamment

**NE CRÉEZ PAS de fonction si:**
- ❌ Code utilisé une seule fois
- ❌ Code très simple (1-2 lignes)
- ❌ Fonction trop générique (fait trop de choses)

**RÈGLE D'OR:** Une fonction = Une tâche bien définie!

**Exemple:**
- ✅ `calculerAire(longueur, largeur)` - tâche claire
- ❌ `faireDesTrucs()` - trop vague!

---

## Exercice Bonus : Validateur d'Âge 🎯

### À Vous de Jouer!

Créez un fichier `validateur.dart` avec:

**1. Une fonction qui vérifie si quelqu'un est majeur:**
```dart
bool estMajeur(int age) {
  // Retourne true si age >= 18, sinon false
}
```

**2. Une fonction qui affiche un message selon l'âge:**
```dart
void afficherStatut(String nom, int age) {
  // Si majeur: "nom est majeur"
  // Sinon: "nom est mineur"
}
```

**3. Dans main(), testez avec plusieurs personnes**

**Solution cachée ci-dessous** ⬇️

<details>
<summary>Cliquez pour voir la solution</summary>

```dart
bool estMajeur(int age) {
  return age >= 18;
}

void afficherStatut(String nom, int age) {
  if (estMajeur(age)) {
    print('$nom ($age ans) est majeur.');
  } else {
    print('$nom ($age ans) est mineur.');
  }
}

void main() {
  afficherStatut('Julie', 25);
  afficherStatut('Marc', 17);
  afficherStatut('Sophie', 18);
  afficherStatut('Thomas', 12);
}
```
</details>

---

## Prêt pour les Entrées/Sorties?

Vous savez maintenant:
- Créer des fonctions
- Passer des paramètres
- Retourner des valeurs
- Réutiliser du code
- Organiser votre programme

**PROCHAINE ÉTAPE:** Apprendre à interagir avec l'utilisateur! 💬

**Cliquez sur "Continuer" pour l'Étape 3!** →


