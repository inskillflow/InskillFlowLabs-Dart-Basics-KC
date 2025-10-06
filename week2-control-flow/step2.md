# Étape 2 : Opérateurs de Comparaison et Logiques

## IMPORTANT: Environnement

### Commande : Vérifier le dossier

`cd /root/semaine2_dart && dart --version`{{execute}}

---

## Opérateurs de Comparaison 

### Les 6 Opérateurs Essentiels

| Opérateur | Signification | Exemple | Résultat |
|-----------|---------------|---------|----------|
| `==` | Égal à | `5 == 5` | `true` |
| `!=` | Différent de | `5 != 3` | `true` |
| `>` | Plus grand que | `10 > 5` | `true` |
| `<` | Plus petit que | `5 < 10` | `true` |
| `>=` | Plus grand ou égal | `10 >= 10` | `true` |
| `<=` | Plus petit ou égal | `5 <= 5` | `true` |

---

## EXERCICE 1 : Tester Tous les Opérateurs

### ÉTAPE 1.1 - Créer le fichier

`nano operateurs_comparaison.dart`{{execute}}

### ÉTAPE 1.2 - Taper le code

```dart
void main() {
 int a = 10;
 int b = 5;
 
 print('=== OPÉRATEURS DE COMPARAISON ===');
 print('a = $a, b = $b');
 print('');
 
 // Égal
 print('a == b : ${a == b}');  // false
 
 // Différent
 print('a != b : ${a != b}');  // true
 
 // Plus grand
 print('a > b : ${a > b}');   // true
 
 // Plus petit
 print('a < b : ${a < b}');   // false
 
 // Plus grand ou égal
 print('a >= b : ${a >= b}');  // true
 print('a >= 10 : ${a >= 10}'); // true
 
 // Plus petit ou égal
 print('b <= 5 : ${b <= 5}');  // true
}
```

### ÉTAPE 1.3 - Exécuter

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart operateurs_comparaison.dart`{{execute}}

**Changez les valeurs de `a` et `b` et testez !**

---

## Opérateurs Logiques 

### Pour Combiner Plusieurs Conditions

| Opérateur | Nom | Signification |
|-----------|-----|---------------|
| `&&` | ET (AND) | Les DEUX conditions doivent être vraies |
| `\|\|` | OU (OR) | AU MOINS UNE condition doit être vraie |
| `!` | NON (NOT) | Inverse la condition |

---

## Opérateur && (ET)

### Les DEUX Doivent Être Vrais

```dart
if (conditionA && conditionB) {
 // Exécuté seulement si A ET B sont vrais
}
```

**Analogie :**
```
Pour entrer dans un club VIP :
- Avoir un billet ET
- Avoir plus de 18 ans
```

### Table de Vérité

| A | B | A && B |
|---|---|--------|
| true | true | **true** |
| true | false | false |
| false | true | false |
| false | false | false |

---

## EXERCICE 2 : Opérateur ET

### ÉTAPE 2.1 - Créer le fichier

`nano operateur_et.dart`{{execute}}

### ÉTAPE 2.2 - Taper le code

```dart
import 'dart:io';

void main() {
 print('=== VÉRIFICATEUR D\'ACCÈS ===');
 
 print('Avez-vous un billet? (oui/non)');
 String? aBillet = stdin.readLineSync();
 
 print('Quel est votre âge?');
 String? inputAge = stdin.readLineSync();
 int age = int.parse(inputAge ?? '0');
 
 // Les DEUX conditions doivent être vraies
 if (aBillet == 'oui' && age >= 18) {
  print('');
  print(' Accès autorisé ! Bienvenue !');
 } else {
  print('');
  print(' Accès refusé');
  
  // Expliquer pourquoi
  if (aBillet != 'oui') {
   print('Raison: Pas de billet');
  }
  if (age < 18) {
   print('Raison: Âge insuffisant');
  }
 }
}
```

### ÉTAPE 2.3 - Exécuter et tester

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart operateur_et.dart`{{execute}}

**Testez les 4 cas :**
1. Billet: oui, Âge: 20 → **Accès** 
2. Billet: oui, Âge: 16 → **Refusé** 
3. Billet: non, Âge: 20 → **Refusé** 
4. Billet: non, Âge: 16 → **Refusé** 

---

## Opérateur || (OU)

### AU MOINS UNE Doit Être Vraie

```dart
if (conditionA || conditionB) {
 // Exécuté si A OU B est vrai (ou les deux)
}
```

**Analogie :**
```
Pour avoir un tarif réduit :
- Être étudiant OU
- Avoir plus de 65 ans
```

### Table de Vérité

| A | B | A \|\| B |
|---|---|----------|
| true | true | **true** |
| true | false | **true** |
| false | true | **true** |
| false | false | false |

---

## EXERCICE 3 : Opérateur OU

### ÉTAPE 3.1 - Créer le fichier

`nano operateur_ou.dart`{{execute}}

### ÉTAPE 3.2 - Taper le code

```dart
import 'dart:io';

void main() {
 print('=== CALCULATEUR DE TARIF ===');
 
 print('Êtes-vous étudiant? (oui/non)');
 String? estEtudiant = stdin.readLineSync();
 
 print('Quel est votre âge?');
 String? inputAge = stdin.readLineSync();
 int age = int.parse(inputAge ?? '0');
 
 double prixNormal = 12.00;
 double prixReduit = 8.00;
 
 // Une des DEUX conditions suffit
 if (estEtudiant == 'oui' || age >= 65) {
  print('');
  print(' Tarif réduit: $prixReduit €');
  
  if (estEtudiant == 'oui') {
   print('Raison: Étudiant');
  }
  if (age >= 65) {
   print('Raison: Senior');
  }
 } else {
  print('');
  print('Tarif normal: $prixNormal €');
 }
}
```

### ÉTAPE 3.3 - Exécuter

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart operateur_ou.dart`{{execute}}

**Testez :**
- Étudiant: oui, Âge: 20 → **Réduit** 
- Étudiant: non, Âge: 70 → **Réduit** 
- Étudiant: oui, Âge: 70 → **Réduit** (les deux!)
- Étudiant: non, Âge: 30 → **Normal**

---

## Opérateur ! (NON)

### Inverse la Condition

```dart
bool estMajeur = true;
bool estMineur = !estMajeur; // false

if (!estMineur) {
 // Si PAS mineur (donc majeur)
}
```

**Analogie :**
```
SI PAS pluie → sortir sans parapluie
```

---

## EXERCICE 4 : Opérateur NON

### ÉTAPE 4.1 - Créer le fichier

`nano operateur_non.dart`{{execute}}

### ÉTAPE 4.2 - Taper le code

```dart
void main() {
 bool estConnecte = false;
 bool estAdmin = true;
 
 print('=== VÉRIFICATION ACCÈS ===');
 
 // SI PAS connecté
 if (!estConnecte) {
  print(' Veuillez vous connecter');
 }
 
 // SI PAS admin
 if (!estAdmin) {
  print(' Accès réservé aux administrateurs');
 }
 
 // SI connecté ET admin
 if (estConnecte && estAdmin) {
  print(' Accès complet autorisé');
 }
}
```

### ÉTAPE 4.3 - Exécuter

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart operateur_non.dart`{{execute}}

**Changez les valeurs de `estConnecte` et `estAdmin` !**

---

## Combiner Plusieurs Opérateurs

### Conditions Complexes

```dart
if ((age >= 18 && haPermis) || (age >= 16 && isAccompagne)) {
 print('Peut conduire');
}
```

**Traduction :**
```
SI (majeur ET a permis) OU (16+ ET accompagné)
 ALORS peut conduire
```

### Priorité des Opérateurs

**Ordre d'évaluation :**
1. `()` - Parenthèses (d'abord)
2. `!` - NON
3. `&&` - ET
4. `||` - OU (dernier)

---

## EXERCICE 5 : Conditions Complexes

### ÉTAPE 5.1 - Créer le fichier

`nano conditions_complexes.dart`{{execute}}

### ÉTAPE 5.2 - Taper le code

```dart
import 'dart:io';

void main() {
 print('=== VÉRIFICATEUR DE LIVRAISON ===');
 
 print('Montant du panier (€):');
 String? inputMontant = stdin.readLineSync();
 double montant = double.parse(inputMontant ?? '0');
 
 print('Êtes-vous membre Premium? (oui/non)');
 String? inputPremium = stdin.readLineSync();
 bool isPremium = inputPremium == 'oui';
 
 print('Code postal (2 chiffres):');
 String? cp = stdin.readLineSync();
 
 // Livraison gratuite SI:
 // - (Montant > 50€ ET zone locale) OU
 // - Membre Premium
 bool zoneLocale = cp == '75' || cp == '92' || cp == '93';
 bool livraisonGratuite = (montant > 50 && zoneLocale) || isPremium;
 
 print('');
 print('--- RÉSULTAT ---');
 print('Montant: $montant €');
 print('Premium: ${isPremium ? "Oui" : "Non"}');
 print('Zone locale: ${zoneLocale ? "Oui" : "Non"}');
 
 if (livraisonGratuite) {
  print(' Livraison GRATUITE !');
  
  if (isPremium) {
   print('Raison: Membre Premium');
  } else {
   print('Raison: Montant > 50€ en zone locale');
  }
 } else {
  print('Livraison: 5.00 €');
  print('Total: ${montant + 5} €');
 }
}
```

### ÉTAPE 5.3 - Exécuter

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart conditions_complexes.dart`{{execute}}

**Testez différents scénarios !**

---

## Préparation Flutter : Validation de Formulaire

### Console (aujourd'hui)
```dart
bool isValid = nom.isNotEmpty && 
        age > 0 && 
        email.contains('@');
```

### Flutter (bientôt)
```dart
final formKey = GlobalKey<FormState>();

TextFormField(
 validator: (value) {
  if (value == null || value.isEmpty) {
   return 'Champ requis'; // ← Validation !
  }
  if (!value.contains('@')) {
   return 'Email invalide';
  }
  return null; // ← Valide
 },
)
```

**Même logique de validation !** 

---

## Comparaison de Strings

### Égalité et Méthodes

```dart
String nom1 = 'Julie';
String nom2 = 'julie';

// Comparaison exacte
print(nom1 == nom2); // false (majuscules!)

// Comparaison insensible à la casse
print(nom1.toLowerCase() == nom2.toLowerCase()); // true

// Contient
print(nom1.contains('Jul')); // true

// Commence par
print(nom1.startsWith('Ju')); // true

// Se termine par
print(nom1.endsWith('lie')); // true
```

---

## EXERCICE 6 : Recherche de Produit

### ÉTAPE 6.1 - Créer le fichier

`nano recherche.dart`{{execute}}

### ÉTAPE 6.2 - Taper le code

```dart
import 'dart:io';

void main() {
 // Liste de produits
 List<String> produits = [
  'iPhone 15',
  'MacBook Pro',
  'iPad Air',
  'AirPods Pro',
 ];
 
 print('=== RECHERCHE DE PRODUITS ===');
 print('Que cherchez-vous?');
 
 String? recherche = stdin.readLineSync();
 recherche = recherche?.toLowerCase() ?? '';
 
 print('');
 print('--- RÉSULTATS ---');
 
 bool trouve = false;
 
 for (var produit in produits) {
  if (produit.toLowerCase().contains(recherche)) {
   print(' $produit');
   trouve = true;
  }
 }
 
 if (!trouve) {
  print(' Aucun produit trouvé');
 }
}
```

### ÉTAPE 6.3 - Exécuter

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart recherche.dart`{{execute}}

**Recherchez :** "iphone", "pro", "air", "samsung"

---

## ATTENTION: Erreurs Courantes

### Erreur #1 : Confondre && et ||

**PROBLÈME :**
```dart
// Veut : accès si majeur OU admin
if (age >= 18 && isAdmin) { // ET au lieu de OU
 print('Accès');
}
```

**CORRECT :**
```dart
if (age >= 18 || isAdmin) { // OU
 print('Accès');
}
```

---

### Erreur #2 : Oublier les Parenthèses

**PROBLÈME :**
```dart
if (a && b || c) // Ambigu !
```

**CORRECT :**
```dart
if ((a && b) || c) // Clair
// OU
if (a && (b || c)) // Selon intention
```

---

### Erreur #3 : Double Négation

**PROBLÈME :**
```dart
if (!!estActif) { // Confus !
 // Code
}
```

**CORRECT :**
```dart
if (estActif) { // Simple
 // Code
}
```

---

## Tables de Vérité Complètes

### ET (&&)
```
true && true = true
true && false = false
false && true = false
false && false = false
```
**Les DEUX doivent être vrais**

### OU (||)
```
true || true = true
true || false = true
false || true = true
false || false = false
```
**AU MOINS UN doit être vrai**

### NON (!)
```
!true = false
!false = true
```
**Inverse la valeur**

---

## Récapitulatif : Opérateurs

### Comparaison
```dart
==  // Égal
!=  // Différent
>   // Plus grand
<   // Plus petit
>=  // Plus grand ou égal
<=  // Plus petit ou égal
```

### Logiques
```dart
&&  // ET (les deux)
||  // OU (au moins un)
!   // NON (inverse)
```

### Combinaisons
```dart
if (a && b)     // Les deux vrais
if (a || b)     // Au moins un vrai
if ((a && b) || c) // (a ET b) OU c
if (!(a && b))   // NON (a ET b)
```

---

## Aide-Mémoire Visuel

```dart
// COMPARAISON
age == 18  // Exactement 18
age != 18  // Pas 18
age > 18   // Plus de 18
age >= 18  // 18 ou plus

// LOGIQUE
(a && b)   // Les DEUX
(a || b)   // AU MOINS UN
!a      // PAS a

// PRIORITÉ
1. ( )    // Parenthèses
2. !     // NON
3. &&    // ET
4. ||    // OU
```

---

## Conseil

### Utilisez des Variables Booléennes !

**Moins lisible :**
```dart
if ((age >= 18 && haPermis) || (age >= 16 && isAccompagne)) {
 // Code
}
```

**Plus lisible :**
```dart
bool peutConduireSeul = age >= 18 && haPermis;
bool peutConduireAccompagne = age >= 16 && isAccompagne;

if (peutConduireSeul || peutConduireAccompagne) {
 // Code
}
```

**C'est BEAUCOUP plus clair !** 

---

## Mini-Quiz

<details>
<summary>Question 1: Que donne cette expression?</summary>

```dart
bool result = (true && false) || true;
```

**Réponse:** `true`
- `true && false` = `false`
- `false || true` = `true`
</details>

<details>
<summary>Question 2: Quelle condition?</summary>

"Accès autorisé si âge entre 18 et 65"

**Réponse:**
```dart
if (age >= 18 && age <= 65) {
 print('Accès autorisé');
}
```
</details>

<details>
<summary>Question 3: Simplifiez</summary>

```dart
bool result = !!estActif;
```

**Réponse:**
```dart
bool result = estActif;
```
Double négation = inutile !
</details>

---

## Exercice Bonus : Validateur de Mot de Passe

Créez un validateur qui vérifie :
- Longueur >= 8 caractères ET
- Contient au moins un chiffre OU
- Contient un caractère spécial

**Utilisez `&&` et `||` !** 

---

## Prêt pour Switch ?

Vous maîtrisez maintenant :
- Tous les opérateurs de comparaison
- Opérateurs logiques (&&, ||, !)
- Combiner des conditions complexes
- Tables de vérité

**PROCHAINE ÉTAPE :** Switch pour gérer plusieurs choix ! 

**Cliquez sur "Continuer" pour l'Étape 3 !** →


