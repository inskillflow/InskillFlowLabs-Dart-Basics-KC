# Dart Semaine 2 - Structures de Contrôle (Control Flow)

## 🎯 Vue d'Ensemble

Ce lab vous apprend les **structures de contrôle** en Dart : if/else, opérateurs logiques et switch. Créez des programmes intelligents qui prennent des décisions !

**Durée estimée :** 1h30  
**Langue :** 🇫🇷 100% Français  
**Niveau :** Intermédiaire (après Semaine 1)  
**Plateforme :** KillerCoda (Terminal Linux)

---

## 📚 Contenu du Cours

### Étape 0 : Rappel et Préparation ⚙️
- Vérification environnement Dart
- Révision rapide Semaine 1
- Premier exemple de condition
- Préparation pour la suite

**Durée :** ~5 minutes

---

### Étape 1 : If/Else - Prendre des Décisions 🔀
- Structure if/else
- Conditions simples et multiples
- if/else if/else
- Conditions imbriquées
- Nombreux exercices pratiques

**Durée :** ~20 minutes

---

### Étape 2 : Opérateurs de Comparaison et Logiques 🔧
- Opérateurs ==, !=, <, >, <=, >=
- Opérateurs logiques &&, ||, !
- Combiner plusieurs conditions
- Priorité des opérateurs
- Tables de vérité

**Durée :** ~20 minutes

---

### Étape 3 : Switch - Choix Multiples 🎛️
- Structure switch/case
- Quand utiliser switch vs if
- Break et fall-through
- Case par défaut
- Exemples pratiques

**Durée :** ~15 minutes

---

### Étape 4 : Défi - Système de Notes Interactif 🏆
**Projet complet !**

Créez un système qui :
- Demande la note de l'étudiant
- Calcule la mention
- Donne des conseils personnalisés
- Vérifie l'admission
- Affiche des statistiques

**Durée :** ~25 minutes

---

## 🎓 Compétences Acquises

À la fin de ce cours, vous saurez :

✅ Écrire des conditions if/else  
✅ Utiliser tous les opérateurs de comparaison  
✅ Combiner conditions avec &&, ||, !  
✅ Utiliser switch pour choix multiples  
✅ Imbriquer des conditions  
✅ Créer des programmes adaptatifs  
✅ Débugger la logique conditionnelle  
✅ Penser de manière algorithmique  

---

## 📂 Structure des Fichiers

```
week2-control-flow/
├── index.json                  # Configuration KillerCoda
├── README.md                   # Ce fichier
├── intro.md                    # Introduction
├── step0.md                    # Rappel et préparation
├── step1.md                    # If/Else
├── step2.md                    # Opérateurs
├── step3.md                    # Switch
├── step4.md                    # Défi pratique
├── finish.md                   # Conclusion
└── assets/
    ├── example_conditions.dart # Exemples if/else
    ├── example_switch.dart     # Exemples switch
    └── example_logique.dart    # Opérateurs logiques
```

---

## 💡 Pré-requis

### ⚠️ OBLIGATOIRE : Avoir terminé la Semaine 1

Vous devez connaître :
- ✅ Variables (`int`, `String`, `double`, `bool`)
- ✅ Fonctions (paramètres, retour)
- ✅ Entrées/sorties (`print`, `stdin`)
- ✅ `nano` (éditeur terminal)

**Si vous n'avez PAS fait la Semaine 1 : faites-la d'abord !**

---

## 🌟 Points Forts

✅ **Pédagogie ultra-détaillée** - Étape par étape  
✅ **Analogies du quotidien** - Concepts faciles  
✅ **10+ exercices** - Pratique intensive  
✅ **Projet final complet** - Système de notes  
✅ **Erreurs courantes** - Pièges expliqués  
✅ **100% français** - Tout en français  

---

## 📊 Statistiques

| Métrique | Valeur |
|----------|--------|
| **Durée totale** | 1h30 |
| **Exercices** | 10+ |
| **Concepts** | 15+ |
| **Lignes de code** | ~400+ |
| **Projet final** | 1 système complet |

---

## 🚀 Ce que Vous Créerez

### Programme 1 : Vérificateur d'Âge
```dart
Entrez votre âge: 17
→ Vous êtes mineur
→ Vous ne pouvez pas voter
→ Plus que 1 an !
```

### Programme 2 : Calculateur de Mention
```dart
Note: 16
→ Mention: Très bien
→ Félicitations !
```

### Programme 3 : Système de Connexion
```dart
Username: admin
Password: 1234
→ Accès autorisé !
```

---

## 📖 Après ce Cours

### Immédiatement
Vous créerez des programmes qui :
- Prennent des décisions
- S'adaptent aux situations
- Valident des données
- Gèrent différents cas

### Semaine 3 : Collections
- Lists, Sets, Maps
- Stocker plusieurs valeurs
- Manipuler des données

### Semaine 4 : Boucles
- For, while
- Répéter des actions
- Itérer sur collections

---

## 🎯 Exemples de Conditions

### If Simple
```dart
if (age >= 18) {
  print('Majeur');
}
```

### If/Else
```dart
if (note >= 10) {
  print('Réussi');
} else {
  print('Échec');
}
```

### If/Else If/Else
```dart
if (note >= 16) {
  print('Très bien');
} else if (note >= 14) {
  print('Bien');
} else {
  print('Passable');
}
```

### Opérateurs Logiques
```dart
if (age >= 18 && hasPermis) {
  print('Peut conduire');
}
```

### Switch
```dart
switch (jour) {
  case 'lundi':
    print('Début semaine');
    break;
  case 'vendredi':
    print('Presque weekend!');
    break;
  default:
    print('Jour normal');
}
```

---

## ⚠️ Erreurs Courantes

### Erreur #1 : = vs ==
```dart
if (age = 18) { ... }     // ❌ Assignation
if (age == 18) { ... }    // ✅ Comparaison
```

### Erreur #2 : Oublier les accolades
```dart
if (condition)
  print('A');
  print('B');  // ❌ Toujours exécuté !

if (condition) {
  print('A');
  print('B');  // ✅ Dans le bloc
}
```

### Erreur #3 : Logique inversée
```dart
if (age < 18) {
  print('Majeur');  // ❌ Logique inverse !
}
```

---

## 🤝 Support

- **Documentation Dart :** https://dart.dev
- **DartPad :** https://dartpad.dev
- **Communauté :** r/dartlang

---

## 🎓 Certificat

Après ce cours, vous pouvez revendiquer :
- Maîtrise des structures de contrôle en Dart
- Capacité à créer des programmes adaptatifs
- Compréhension de la logique conditionnelle

---

*Créé avec ❤️ pour les apprenants francophones*  
*Version 1.0 - 2025*


