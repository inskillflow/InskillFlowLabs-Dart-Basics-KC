# Étape 1 : Lists - Listes Ordonnées

## IMPORTANT: Environnement

`cd /root/semaine3_dart && dart --version`{{execute}}

---

## Qu'est-ce qu'une List ?

### Analogie Simple

Une List est comme une **étagère** avec des **cases numérotées** :

```
┌─────┬─────┬─────┬─────┐
│  0  │  1  │  2  │  3  │  ← Index
├─────┼─────┼─────┼─────┤
│Pomme│Banane│Orange│Kiwi│  ← Valeurs
└─────┴─────┴─────┴─────┘
```

**Caractéristiques :**
- Ordre préservé
- Accès par numéro (index)
- Peut contenir des doublons
- Taille dynamique

---

## Créer une List

### Syntaxe

```dart
List<Type> nom = [valeur1, valeur2, valeur3];
```

### Exemples

```dart
// List de Strings
List<String> prenoms = ['Marie', 'Pierre', 'Julie'];

// List d'entiers
List<int> notes = [15, 18, 12, 16];

// List de doubles
List<double> prix = [19.99, 25.50, 10.00];

// List vide
List<String> vide = [];
```

---

## EXERCICE 1 : Première List

### ÉTAPE 1.1 - Créer le fichier

`nano first_list.dart`{{execute}}

### ÉTAPE 1.2 - Taper le code

```dart
void main() {
  // Créer une liste de villes
  List<String> villes = ['Paris', 'Lyon', 'Marseille', 'Toulouse'];
  
  print('=== MA LISTE DE VILLES ===');
  print('Liste complète: $villes');
  print('');
  
  // Accéder aux éléments
  print('Première ville: ${villes[0]}');
  print('Deuxième ville: ${villes[1]}');
  print('Dernière ville: ${villes[3]}');
  
  // Propriétés
  print('');
  print('Nombre de villes: ${villes.length}');
  print('Liste vide? ${villes.isEmpty}');
  print('Liste non-vide? ${villes.isNotEmpty}');
}
```

### ÉTAPE 1.3 - Exécuter

1. Ctrl+O puis Entrée
2. Ctrl+X
3. `dart first_list.dart`{{execute}}

---

## Accéder aux Éléments

### Par Index

```dart
List<String> couleurs = ['Rouge', 'Vert', 'Bleu'];

print(couleurs[0]);  // Rouge (premier)
print(couleurs[1]);  // Vert
print(couleurs[2]);  // Bleu (dernier)
```

### Index Négatif ? Non !

En Dart, les index négatifs ne fonctionnent pas :

```dart
print(couleurs[-1]);  // ERREUR !
```

**Pour le dernier élément :**
```dart
print(couleurs[couleurs.length - 1]);  // Bleu
```

---

## Propriétés Importantes

### length - Nombre d'éléments

```dart
List<int> nombres = [10, 20, 30];
print(nombres.length);  // 3
```

### isEmpty / isNotEmpty

```dart
List<String> vide = [];
List<String> pleine = ['A', 'B'];

print(vide.isEmpty);      // true
print(pleine.isEmpty);    // false
print(pleine.isNotEmpty); // true
```

### first / last

```dart
List<String> jours = ['Lundi', 'Mardi', 'Mercredi'];

print(jours.first);  // Lundi
print(jours.last);   // Mercredi
```

---

## Méthodes pour Modifier une List

### add() - Ajouter un Élément

```dart
List<String> fruits = ['Pomme'];
fruits.add('Banane');
print(fruits);  // [Pomme, Banane]
```

### insert() - Insérer à une Position

```dart
List<String> fruits = ['Pomme', 'Orange'];
fruits.insert(1, 'Banane');  // Position 1
print(fruits);  // [Pomme, Banane, Orange]
```

### remove() - Supprimer par Valeur

```dart
List<String> fruits = ['Pomme', 'Banane', 'Orange'];
fruits.remove('Banane');
print(fruits);  // [Pomme, Orange]
```

### removeAt() - Supprimer par Index

```dart
List<String> fruits = ['Pomme', 'Banane', 'Orange'];
fruits.removeAt(1);  // Supprime index 1 (Banane)
print(fruits);  // [Pomme, Orange]
```

### clear() - Vider la List

```dart
List<String> fruits = ['Pomme', 'Banane'];
fruits.clear();
print(fruits);  // []
```

---

## EXERCICE 2 : Manipulation de List

### ÉTAPE 2.1 - Créer le fichier

`nano manipulation_list.dart`{{execute}}

### ÉTAPE 2.2 - Taper le code

```dart
import 'dart:io';

void main() {
  // Créer une liste de courses
  List<String> courses = ['Pain', 'Lait', 'Oeufs'];
  
  print('=== LISTE DE COURSES ===');
  print('Liste initiale: $courses');
  print('');
  
  // Ajouter un élément
  print('Ajouter "Fromage"...');
  courses.add('Fromage');
  print('Liste: $courses');
  print('');
  
  // Insérer au début
  print('Insérer "Beurre" au début...');
  courses.insert(0, 'Beurre');
  print('Liste: $courses');
  print('');
  
  // Supprimer un élément
  print('Supprimer "Lait"...');
  courses.remove('Lait');
  print('Liste: $courses');
  print('');
  
  // Afficher le nombre
  print('Nombre d\'articles: ${courses.length}');
  
  // Demander à l'utilisateur
  print('');
  print('Ajouter un article:');
  String? nouvel = stdin.readLineSync();
  if (nouvel != null && nouvel.isNotEmpty) {
    courses.add(nouvel);
    print('Liste finale: $courses');
  }
}
```

### ÉTAPE 2.3 - Exécuter

1. Ctrl+O puis Entrée
2. Ctrl+X
3. `dart manipulation_list.dart`{{execute}}

---

## Vérifier si un Élément Existe

### contains() - Vérifier la Présence

```dart
List<String> fruits = ['Pomme', 'Banane', 'Orange'];

if (fruits.contains('Banane')) {
  print('Banane est dans la liste');
} else {
  print('Banane n\'est pas dans la liste');
}
```

### indexOf() - Trouver la Position

```dart
List<String> fruits = ['Pomme', 'Banane', 'Orange'];

int position = fruits.indexOf('Banane');
print('Banane est à l\'index $position');  // 1

// Si non trouvé
int pos = fruits.indexOf('Kiwi');
print(pos);  // -1 (pas trouvé)
```

---

## EXERCICE 3 : Recherche dans une List

### ÉTAPE 3.1 - Créer le fichier

`nano recherche_list.dart`{{execute}}

### ÉTAPE 3.2 - Taper le code

```dart
import 'dart:io';

void main() {
  List<String> etudiants = [
    'Marie Dupont',
    'Pierre Martin',
    'Julie Bernard',
    'Thomas Petit',
    'Sophie Durand'
  ];
  
  print('=== RECHERCHE D\'ÉTUDIANT ===');
  print('Liste des étudiants:');
  for (int i = 0; i < etudiants.length; i++) {
    print('  ${i + 1}. ${etudiants[i]}');
  }
  
  print('');
  print('Rechercher un étudiant:');
  String? recherche = stdin.readLineSync();
  
  if (recherche != null) {
    bool trouve = false;
    
    for (int i = 0; i < etudiants.length; i++) {
      if (etudiants[i].toLowerCase().contains(recherche.toLowerCase())) {
        print('Trouvé: ${etudiants[i]} (position ${i + 1})');
        trouve = true;
      }
    }
    
    if (!trouve) {
      print('Aucun étudiant trouvé.');
    }
  }
}
```

### ÉTAPE 3.3 - Exécuter

1. Ctrl+O puis Entrée
2. Ctrl+X
3. `dart recherche_list.dart`{{execute}}

**Testez avec :** "Marie", "martin", "Durand"

---

## Préparation Flutter : ListView

### Console (aujourd'hui)

```dart
List<String> produits = ['iPhone', 'iPad', 'MacBook'];

for (var produit in produits) {
  print('- $produit');
}
```

### Flutter (bientôt)

```dart
ListView.builder(
  itemCount: produits.length,
  itemBuilder: (context, index) {
    return Card(
      child: ListTile(
        title: Text(produits[index]),
        leading: Icon(Icons.shopping_cart),
      ),
    );
  },
)
```

**Même List, interface graphique.**

---

## ATTENTION: Erreurs Courantes

### Erreur #1 : Index Hors Limites

**PROBLÈME :**
```dart
List<String> fruits = ['Pomme', 'Banane'];
print(fruits[5]);  // Index 5 n'existe pas !
```

**ERREUR :**
```
RangeError: Index out of range
```

**SOLUTION :**
Toujours vérifier la longueur :
```dart
if (index < fruits.length) {
  print(fruits[index]);
}
```

---

### Erreur #2 : Modifier pendant l'Itération

**PROBLÈME :**
```dart
List<int> nombres = [1, 2, 3];
for (var n in nombres) {
  nombres.remove(n);  // Modifie pendant boucle !
}
```

**Peut causer des erreurs.**

**SOLUTION :**
Créer une copie ou utiliser removeWhere().

---

## Récapitulatif : Lists

### Créer
```dart
List<String> noms = ['A', 'B', 'C'];
List<int> vide = [];
```

### Accéder
```dart
print(noms[0]);      // Premier
print(noms.first);   // Premier
print(noms.last);    // Dernier
print(noms.length);  // Nombre
```

### Modifier
```dart
noms.add('D');         // Ajouter
noms.insert(1, 'X');   // Insérer
noms.remove('A');      // Supprimer
noms.removeAt(0);      // Supprimer index
noms.clear();          // Vider
```

### Vérifier
```dart
noms.contains('A');    // Existe?
noms.indexOf('A');     // Position?
noms.isEmpty;          // Vide?
```

---

## Prêt pour les Maps ?

Vous maîtrisez maintenant :
- Créer des Lists
- Accéder aux éléments
- Modifier des Lists
- Méthodes importantes

**Prochaine étape : Maps (clé-valeur).**

**Cliquez sur "Continuer".**


