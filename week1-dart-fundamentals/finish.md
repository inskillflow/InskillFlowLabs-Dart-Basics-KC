# Félicitations! Vous Avez Terminé Dart Semaine 1! 

---

## Vous Avez Réussi! 

**Regardez tout ce que vous avez accompli:**

 Installé Dart sur Linux 
 Créé votre premier programme 
 Maîtrisé les variables et types 
 Créé des fonctions réutilisables 
 Interagi avec l'utilisateur 
 Construit un programme complet 

**EN UNE SEULE SEMAINE!**

---

## Récapitulatif Complet 

### Étape 0 : Installation de Dart

**Ce que vous avez appris:**
- Installer un SDK
- Configurer l'environnement PATH
- Utiliser `nano` pour éditer
- Compiler et exécuter du Dart

**Commandes clés:**
```bash
apt-get install dart
dart --version
dart nomfichier.dart
```

---

### Étape 1 : Variables et Types

**Ce que vous avez appris:**
- `int`, `double`, `String`, `bool`, `var`
- Déclarer et modifier des variables
- Interpolation de string avec `$`
- Opérateurs mathématiques
- Nommage en camelCase

**Syntaxe clé:**
```dart
int age = 25;
String nom = 'Julie';
double prix = 19.99;
bool actif = true;
print('Bonjour $nom, vous avez $age ans.');
```

---

### Étape 2 : Fonctions

**Ce que vous avez appris:**
- Créer des fonctions
- Paramètres et arguments
- Types de retour
- `void` vs autres types
- Paramètres nommés

**Syntaxe clé:**
```dart
int additionner(int a, int b) {
 return a + b;
}

void direBonjour(String nom) {
 print('Bonjour $nom!');
}
```

---

### Étape 3 : Entrées/Sorties

**Ce que vous avez appris:**
- `print()` pour afficher
- `stdin.readLineSync()` pour lire
- `int.parse()` et `double.parse()`
- Créer des programmes interactifs
- Gérer les valeurs nullable

**Syntaxe clé:**
```dart
import 'dart:io';

void main() {
 print('Question?');
 String? reponse = stdin.readLineSync();
 int nombre = int.parse(reponse ?? '0');
}
```

---

### Étape 4 : Défi Pratique

**Ce que vous avez créé:**
- Programme multi-fonctionnel
- Calcul d'IMC avec interprétation
- Calcul d'âge
- Mini-calculatrice
- Interface utilisateur complète

**Compétences démontrées:**
- Architecture de programme
- Décomposition en fonctions
- Logique conditionnelle
- Formatage de sortie
- Expérience utilisateur

---

## Statistiques de Votre Apprentissage 

### Concepts Maîtrisés: **25+**
- Variables, types, fonctions, I/O, etc.

### Lignes de Code Écrites: **~300+**
- Exercices + Défi final

### Programmes Créés: **15+**
- Depuis "Hello World" jusqu'au Calculateur

### Temps Investi: **~2 heures**
- Un excellent investissement!

---

## Solutions des Exercices

### Exercice Bonus Step 1: Variables Personnalisées

```dart
void main() {
 String prenom = 'Marie';
 int age = 23;
 String ville = 'Lyon';
 double taille = 1.65;
 bool aimeProgammer = true;
 
 int annee = 2025 - age;
 
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

### Exercice Bonus Step 2: Validateur d'Âge

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
}
```

---

### Exercice Step 3: Convertisseur de Devises

```dart
import 'dart:io';

void main() {
 print('=== CONVERTISSEUR DE DEVISES ===');
 print('');
 
 print('Montant en euros (€):');
 String? montantTexte = stdin.readLineSync();
 double euros = double.parse(montantTexte ?? '0');
 
 print('Taux de change (ex: 1.10 pour USD):');
 String? tauxTexte = stdin.readLineSync();
 double taux = double.parse(tauxTexte ?? '1');
 
 double montantConverti = euros * taux;
 
 print('');
 print('$euros € = $montantConverti');
}
```

---

## Aide-Mémoire Dart - Version Complète 

### Structure d'un Programme

```dart
import 'dart:io'; // Pour stdin

void main() {
 // Votre code ici
}
```

---

### Variables et Types

```dart
// Déclaration
int age = 25;
double prix = 19.99;
String nom = 'Julie';
bool actif = true;
var automatique = 42; // Dart devine le type

// Modification
age = 26; // Pas besoin de 'int' à nouveau
```

---

### Opérateurs

```dart
// Mathématiques
+  // Addition
-  // Soustraction
*  // Multiplication
/  // Division (retourne double)
~/  // Division entière
%  // Modulo (reste)

// Comparaison
==  // Égal
!=  // Différent
<  // Plus petit
>  // Plus grand
<=  // Plus petit ou égal
>=  // Plus grand ou égal

// Logiques
&&  // ET
||  // OU
!  // NON
```

---

### Fonctions

```dart
// Sans retour
void afficher() {
 print('Hello');
}

// Avec retour
int calculer(int a, int b) {
 return a + b;
}

// Paramètres nommés
void creer({required String nom, int age = 0}) {
 print('$nom, $age ans');
}

// Appels
afficher();
int resultat = calculer(5, 3);
creer(nom: 'Julie', age: 25);
```

---

### Entrées/Sorties

```dart
// Afficher
print('Message');
print('Valeur: $variable');
print('Calcul: ${a + b}');

// Lire
String? texte = stdin.readLineSync();
int nombre = int.parse(texte ?? '0');
double decimal = double.parse(texte ?? '0.0');
```

---

### Conditions

```dart
if (condition) {
 // Si vrai
} else if (autreCondition) {
 // Sinon si vrai
} else {
 // Sinon
}
```

---

### Méthodes Utiles

```dart
// String
texte.toLowerCase()    // Minuscules
texte.toUpperCase()    // Majuscules
texte.length       // Longueur

// Nombre
nombre.toStringAsFixed(2) // Format avec 2 décimales
nombre.toString()     // Convertir en String

// Null-coalescing
valeur ?? 'défaut'    // Si null, utilise 'défaut'
```

---

## Erreurs Courantes et Solutions 

### 1. Oublier le point-virgule

**Erreur:**
```dart
var age = 25  // 
```

**Solution:**
```dart
var age = 25;  // 
```

---

### 2. Oublier `import 'dart:io';`

**Erreur:**
```
Error: Undefined name 'stdin'.
```

**Solution:**
```dart
import 'dart:io'; // En haut du fichier
```

---

### 3. Mauvais type de retour

**Erreur:**
```dart
int diviser(int a, int b) {
 return a / b; // Division retourne double
}
```

**Solution:**
```dart
double diviser(int a, int b) { // 
 return a / b;
}
```

---

### 4. Conversion invalide

**Erreur:**
```dart
int.parse('abc') // FormatException
```

**Solution:**
```dart
int.parse(texte ?? '0') // Valeur par défaut
```

---

## Bonnes Pratiques à Retenir 

### 1. Nommage
 **camelCase** pour les variables et fonctions
 Noms **descriptifs** (`age` plutôt que `a`)
 Verbes pour les fonctions (`calculer`, `afficher`)

### 2. Organisation
 Imports en haut
 Fonctions avant `main()`
 Commentaires pour expliquer
 Lignes vides pour aérer

### 3. Code Propre
 Indentation cohérente (2 espaces)
 Une fonction = une tâche
 Éviter la répétition (DRY)
 Valider les entrées utilisateur

---

## Prochaines Étapes dans Votre Parcours Dart 

### Semaine 2 : Control Flow (À venir)
- If/else avancé
- Switch statements
- Opérateurs logiques
- Conditions imbriquées

### Semaine 3 : Collections
- Lists
- Sets
- Maps
- Itération

### Semaine 4 : Boucles
- For loops
- While loops
- Break et continue
- Boucles imbriquées

### Semaine 5 : Programmation Orientée Objet
- Classes et objets
- Constructeurs
- Héritage
- Interfaces et mixins

### Semaine 6 : Async et Projets
- Future et async/await
- Gestion d'erreurs
- Projet final complet

---

## Et Après? Flutter! 

Une fois que vous maîtrisez Dart, vous pouvez apprendre **Flutter** pour créer:
- Applications mobiles (Android + iOS)
- Applications web
- Applications desktop
- Jeux 2D

**Un seul code = toutes les plateformes!**

---

## Ressources pour Continuer 

### Documentation Officielle
- **Dart:** https://dart.dev/guides
- **DartPad:** https://dartpad.dev (pour tester en ligne)
- **API Reference:** https://api.dart.dev

### Tutoriels Recommandés
- Dart Tutorials (dart.dev/tutorials)
- Exercism Dart Track (gratuit!)
- Dart Cookbook (exemples pratiques)

### Communautés
- r/dartlang (Reddit)
- Flutter & Dart Discord
- Stack Overflow (tag: dart)

---

## Exercices Supplémentaires (Pour Pratiquer) 

### Niveau 1 : Débutant

**1. Convertisseur d'unités**
Créez un programme qui convertit:
- Kilomètres ↔ Miles
- Kilogrammes ↔ Livres
- Celsius ↔ Fahrenheit

**2. Générateur de facture**
Demandez:
- Produit et prix
- Quantité
- Calculez le total avec TVA

**3. Quiz de culture générale**
Créez un quiz avec 10 questions
Affichez le score à la fin

---

### Niveau 2 : Intermédiaire

**4. Calculateur de notes**
Demandez plusieurs notes
Calculez la moyenne
Affichez la mention (Très bien, Bien, etc.)

**5. Simulateur de prêt**
Calculez les mensualités d'un prêt
Affichez le coût total
Montrez un tableau d'amortissement simple

**6. Jeu de devinette**
Programme "pense" à un nombre
Utilisateur devine
Indications "plus grand" / "plus petit"

---

### Niveau 3 : Avancé

**7. Gestion de budget**
Gérez revenus et dépenses
Calculez le solde
Affichez des statistiques

**8. Convertisseur de bases**
Convertir entre binaire, octal, décimal, hexadécimal

**9. Mini-RPG (Role-Playing Game)**
Créez un personnage avec stats
Système de combat simple
Expérience et niveau

---

## Code Template pour Vos Projets 

```dart
import 'dart:io';

// ============================================
// FONCTIONS UTILITAIRES
// ============================================

String demanderTexte(String question) {
 print(question);
 return stdin.readLineSync() ?? '';
}

int demanderEntier(String question) {
 print(question);
 String? reponse = stdin.readLineSync();
 return int.parse(reponse ?? '0');
}

double demanderDecimal(String question) {
 print(question);
 String? reponse = stdin.readLineSync();
 return double.parse(reponse ?? '0.0');
}

void afficherTitre(String titre) {
 print('');
 print('═' * 40);
 print(titre.toUpperCase().padLeft(20 + titre.length ~/ 2));
 print('═' * 40);
 print('');
}

void afficherSeparateur() {
 print('-' * 40);
}

// ============================================
// VOS FONCTIONS ICI
// ============================================

// Ajoutez vos fonctions ici

// ============================================
// PROGRAMME PRINCIPAL
// ============================================

void main() {
 afficherTitre('Mon Programme');
 
 // Votre code ici
 
 print('');
 print('Programme terminé!');
}
```

**Copiez ce template et personnalisez-le pour vos projets!**

---

## Message Final de Votre Instructeur 

Bravo pour avoir terminé ce cours! 

**Vous n'êtes plus un débutant.**

Vous avez:
- Les bases solides
- La capacité de créer des programmes
- La logique de programmation
- Les bonnes pratiques

**Ce qui compte maintenant: PRATIQUER!**

**Conseil #1:** Codez un peu chaque jour (même 15 minutes) 
**Conseil #2:** Créez vos propres projets (pas juste des tutoriels) 
**Conseil #3:** N'ayez pas peur de faire des erreurs 
**Conseil #4:** Partagez votre code et demandez des retours 
**Conseil #5:** Amusez-vous! La programmation doit être un plaisir! 

**Vous avez le potentiel pour devenir un excellent développeur.**

**Je crois en vous! Continuez! **

---

## Certificat de Compétence (Auto-décerné) 

```
╔════════════════════════════════════════════════════════════╗
║                              ║
║       CERTIFICAT DE RÉUSSITE            ║
║                              ║
║ Ce document certifie que:                 ║
║                              ║
║     [ VOTRE NOM ICI ]                 ║
║                              ║
║ A terminé avec succès:                  ║
║ DART SEMAINE 1 - FONDAMENTAUX DU LANGAGE         ║
║                              ║
║ Compétences acquises:                   ║
║ • Variables et Types de Données              ║
║ • Fonctions et Paramètres                 ║
║ • Entrées/Sorties Interactives              ║
║ • Logique de Programmation                ║
║ • Résolution de Problèmes                 ║
║                              ║
║ Date: 2025                        ║
║                              ║
╚════════════════════════════════════════════════════════════╝
```

**Imprimez-le (mentalement) et soyez fier de vous!** 

---

## Avant de Partir... 

### Quiz Final (Juste pour le fun!)

<details>
<summary>Question 1: Que fait ce code? `int age = 25;`</summary>

**Réponse:** Crée une variable nommée `age` de type `int` avec la valeur 25.
</details>

<details>
<summary>Question 2: Quelle est la différence entre `int` et `double`?</summary>

**Réponse:** `int` = nombres entiers (sans décimales), `double` = nombres décimaux.
</details>

<details>
<summary>Question 3: Que retourne `stdin.readLineSync()`?</summary>

**Réponse:** Un `String?` (nullable) contenant ce que l'utilisateur a tapé.
</details>

<details>
<summary>Question 4: Comment convertir "25" en nombre?</summary>

**Réponse:** `int.parse('25')` ou `double.parse('25')`
</details>

<details>
<summary>Question 5: Que signifie `void` dans une fonction?</summary>

**Réponse:** La fonction ne retourne aucune valeur.
</details>

**Si vous avez tout bon: VOUS ÊTES PRÊT POUR LA SEMAINE 2!** 

---

## Remerciements 

Merci d'avoir suivi ce cours jusqu'au bout!

**Vous avez investi du temps dans votre avenir.**

**C'est le début d'une belle aventure dans le monde du développement!**

---

## Restez en Contact! 

Partagez vos créations! 
Posez vos questions! 
Continuez à apprendre! 

**La communauté Dart vous accueille à bras ouverts!** 

---

## FÉLICITATIONS ENCORE UNE FOIS! 

**Vous avez tout donné et vous avez réussi!**

**Rendez-vous dans Dart Semaine 2!** 

---

*Cours créé avec ️ pour les apprenants francophones* 
*Version 1.0 - 2025*


