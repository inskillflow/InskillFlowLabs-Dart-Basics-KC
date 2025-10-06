# Félicitations ! Semaine 2 Terminée ! 

## Vous Avez Réussi ! 

**Regardez tout ce que vous avez appris :**

 Structures if/else 
 Conditions multiples (if/else if/else) 
 Tous les opérateurs de comparaison 
 Opérateurs logiques (&&, ||, !) 
 Structure switch/case 
 Conditions imbriquées 
 Projet complet (système de notes) 

**EN UNE SEULE SEMAINE !** 

---

## Récapitulatif Complet

### If/Else
```dart
if (condition) {
 // Si vrai
} else if (autreCondition) {
 // Si autre vrai
} else {
 // Si toutes fausses
}
```

### Opérateurs de Comparaison
```dart
==  // Égal
!=  // Différent
>   // Plus grand
<   // Plus petit
>=  // Plus grand ou égal
<=  // Plus petit ou égal
```

### Opérateurs Logiques
```dart
&&  // ET (les deux vrais)
||  // OU (au moins un vrai)
!   // NON (inverse)
```

### Switch
```dart
switch (variable) {
 case valeur1:
  // Code
  break;
 case valeur2:
  // Code
  break;
 default:
  // Par défaut
}
```

---

## Ce que Cela Signifie pour Flutter

### Tout ce que vous avez appris s'applique directement ! 

**If/else → Conditional Rendering**
```dart
// Console
if (estConnecte) print('Bienvenue');

// Flutter
if (estConnecte) 
 Text('Bienvenue')
```

**Switch → Navigation**
```dart
// Console
switch (page) {
 case 1: afficherAccueil();
 case 2: afficherProfil();
}

// Flutter
switch (pageActuelle) {
 case 'accueil': return PageAccueil();
 case 'profil': return PageProfil();
}
```

**Opérateurs → Validation**
```dart
// Console
bool isValid = nom.isNotEmpty && age > 0;

// Flutter
validator: (value) {
 if (value == null || value.isEmpty) 
  return 'Requis';
 return null;
}
```

---

## Aide-Mémoire Complet

```dart
// CONDITIONS DE BASE
if (condition) { }
if (condition) { } else { }
if (cond1) { } else if (cond2) { } else { }

// OPÉRATEURS
age >= 18     // Comparaison
age >= 18 && haPermis  // ET
age < 18 || isEmancipé // OU
!estMineur     // NON

// SWITCH
switch (variable) {
 case valeur: /* code */ break;
 default: /* code */
}

// TERNAIRE
var x = condition ? valeurVrai : valeurFaux;

// RÈGLES
 Condition entre ( )
 Code entre { }
 == pour comparer (pas =)
 break dans switch
 Tester tous les cas
```

---

## Exercices Supplémentaires (Optionnel)

### Niveau 1 : Débutant

**1. Système de Réduction**
- Demander prix produit
- Si > 100€ : 10% réduction
- Si > 200€ : 20% réduction
- Afficher prix final

**2. Vérificateur de Mot de Passe**
- Demander mot de passe
- Vérifier :
 * Longueur >= 8
 * Contient un chiffre
 * Contient une majuscule
- Afficher si valide

**3. Convertisseur de Notes**
- Note sur 20 → Lettre (A, B, C, D, E, F)
- 16-20: A
- 14-16: B
- 12-14: C
- 10-12: D
- 8-10: E
- 0-8: F

---

### Niveau 2 : Intermédiaire

**4. Calculateur d'Impôts**
- Revenus annuels
- Tranches d'imposition différentes
- Calcul progressif
- Affichage détaillé

**5. Système de Réservation**
- Date, nombre de personnes
- Tarifs selon saison
- Réductions selon durée
- Calcul total

**6. Jeu Pierre-Papier-Ciseaux**
- Joueur vs Ordinateur
- Logique complète
- Compteur de victoires

---

### Niveau 3 : Avancé

**7. Gestionnaire de Panier E-Commerce**
- Ajouter/retirer produits
- Codes promo
- Frais de livraison variables
- Calcul total complexe

**8. Analyseur de Texte**
- Compter mots, phrases
- Détecter langue
- Statistiques complètes

**9. Mini-RPG**
- Combat tour par tour
- Points de vie
- Conditions de victoire/défaite

---

## Solutions des Exercices Semaine 2

### Exercice Bonus Step 1 : IMC Amélioré

```dart
import 'dart:io';

void main() {
 print('Poids (kg):');
 double poids = double.parse(stdin.readLineSync() ?? '0');
 
 print('Taille (m):');
 double taille = double.parse(stdin.readLineSync() ?? '0');
 
 double imc = poids / (taille * taille);
 
 String interpretation;
 if (imc < 18.5) {
  interpretation = 'Insuffisance pondérale';
 } else if (imc < 25) {
  interpretation = 'Poids normal';
 } else if (imc < 30) {
  interpretation = 'Surpoids';
 } else {
  interpretation = 'Obésité';
 }
 
 print('IMC: ${imc.toStringAsFixed(1)}');
 print('Interprétation: $interpretation');
}
```

---

## Statistiques de Votre Apprentissage

### Concepts Maîtrisés : **20+**
- If, else, else if
- 6 opérateurs de comparaison
- 3 opérateurs logiques
- Switch, case, break, default
- Conditions imbriquées
- Opérateur ternaire

### Programmes Créés : **10+**
- Vérificateur d'âge
- Système de connexion
- Calculateur de mention
- Calculatrice
- Système de notes complet
- Et plus...

### Lignes de Code : **500+**
- Step 1-4 + exercices

---

## Ce que Vous Pouvez Créer Maintenant

Avec Dart Semaines 1-2, vous pouvez créer :

 **Programmes de validation** (âge, connexion) 
 **Calculateurs** (notes, prix, IMC) 
 **Systèmes de menu** (navigation) 
 **Jeux simples** (quiz, devinettes) 
 **Outils** (convertisseurs) 

**Base solide pour Flutter !** 

---

## Prochaine Semaine : Collections

### Semaine 3 : Lists, Maps, Sets

**Vous allez apprendre :**
- Stocker plusieurs valeurs
- Lists (listes ordonnées)
- Maps (paires clé-valeur)
- Sets (valeurs uniques)
- Itération sur collections

**Pourquoi c'est important ?**

En Flutter, vous utiliserez des **Lists** PARTOUT :
- Liste de produits → `ListView`
- Liste d'utilisateurs → `GridView`
- Données API → `List<Map>`

**Semaines 1-2 = Logique** 
**Semaine 3 = Données** 
**→ Combinés = Apps complètes !**

---

## Message Final

Vous venez d'apprendre à **donner de l'intelligence** à vos programmes !

**Avant :** Programmes linéaires, toujours pareils 
**Maintenant :** Programmes adaptatifs qui prennent des décisions !

**C'est ÉNORME !** 

Les conditions sont au **cœur de TOUS les programmes**.

Chaque app que vous utilisez (Instagram, Netflix, etc.) utilise des **millions** de conditions !

**Vous maîtrisez maintenant ce concept fondamental !** 

---

## Préparez-vous pour Flutter

### Dans 4 Semaines, Vous Créerez :

```
┌─────────────────────────┐
│  VOTRE PREMIÈRE APP │
│             │
│ [Photo de profil]   │
│             │
│ Nom: Marie       │
│ ┌─────────────────┐  │
│ │ if (age >= 18) │  │ ← Votre logique !
│ │  Majeur    │  │
│ └─────────────────┘  │
│             │
│ [Modifier] [Partager] │
└─────────────────────────┘
```

**Votre code Dart → Interface Flutter !**

---

## Restez Motivé ! 

**Timeline :**
- Semaine 1 : Bases Dart
- Semaine 2 : Conditions (Vous êtes ici!)
- Semaine 3 : Collections
- Semaine 4 : Boucles
- Semaine 5 : POO
- Semaine 6 : Async
- Semaine 7 : **FLUTTER !**

**Plus que 4 semaines avant Flutter !** 

---

## Ressources pour Continuer

### Documentation Dart
- **Site officiel :** https://dart.dev
- **DartPad :** https://dartpad.dev (tester en ligne)
- **Language tour :** https://dart.dev/guides/language/language-tour

### Communauté
- **r/dartlang** (Reddit)
- **Discord Flutter & Dart**
- **Stack Overflow** (tag: dart)

### Pratiquer
- **Exercism Dart Track** (gratuit)
- **Codewars** (défis Dart)
- **LeetCode** (algorithmes)

---

## Checklist : Êtes-vous Prêt pour la Semaine 3 ?

Avant de continuer, assurez-vous de maîtriser :

- [ ] Écrire un if/else simple
- [ ] Utiliser if/else if/else pour 3+ cas
- [ ] Comparer avec ==, !=, <, >, <=, >=
- [ ] Combiner conditions avec &&, ||
- [ ] Utiliser l'opérateur ! (NON)
- [ ] Écrire un switch/case avec break
- [ ] Imbriquer des conditions
- [ ] Débugger des erreurs de logique

**TOUT EST ? Parfait ! Passez à la Semaine 3 !**

---

## Certificat de Compétence 

```
╔════════════════════════════════════════════╗
║                      ║
║     CERTIFICAT DE RÉUSSITE       ║
║                      ║
║ [ VOTRE NOM ]               ║
║                      ║
║ A terminé avec succès :          ║
║ DART SEMAINE 2 - STRUCTURES DE CONTRÔLE  ║
║                      ║
║ Compétences acquises :          ║
║ • Conditions if/else           ║
║ • Opérateurs logiques           ║
║ • Switch/case               ║
║ • Logique conditionnelle         ║
║                      ║
║ Date : 2025                ║
║                      ║
╚════════════════════════════════════════════╝
```

**Soyez fier de vous !** 

---

## Merci et à Bientôt ! 

Vous progressez **excellemment** bien !

**Continuez comme ça !** 

**À la Semaine 3 : Collections (Lists, Maps) !** 


