# Étape 3 : Sets et Méthodes Avancées

## IMPORTANT: Environnement

`cd /root/semaine3_dart && dart --version`{{execute}}

---

## Qu'est-ce qu'un Set ?

### Définition

Un Set est une collection de valeurs **uniques** (pas de doublons).

### Exemple

```dart
Set<String> villes = {'Paris', 'Lyon', 'Paris'};
print(villes);  // {Paris, Lyon} (un seul Paris)
```

**Utilité :** Éliminer automatiquement les doublons.

---

## Créer un Set

### Syntaxe

```dart
Set<Type> nom = {valeur1, valeur2};
```

### Exemples

```dart
Set<String> couleurs = {'Rouge', 'Vert', 'Bleu'};
Set<int> nombres = {1, 2, 3, 2, 1};  // {1, 2, 3}
Set<String> vide = {};
```

---

## EXERCICE 1 : Éliminer les Doublons

`nano eliminate_doublons.dart`{{execute}}

```dart
void main() {
  // List avec doublons
  List<String> villesAvecDoublons = [
    'Paris', 'Lyon', 'Paris', 'Marseille', 'Lyon', 'Nice'
  ];
  
  print('Liste originale: $villesAvecDoublons');
  print('Nombre: ${villesAvecDoublons.length}');
  
  // Convertir en Set (élimine doublons)
  Set<String> villesUniques = villesAvecDoublons.toSet();
  
  print('');
  print('Set (sans doublons): $villesUniques');
  print('Nombre: ${villesUniques.length}');
  
  // Reconvertir en List si nécessaire
  List<String> listeSansDoublons = villesUniques.toList();
  print('');
  print('Liste nettoyée: $listeSansDoublons');
}
```

1. Ctrl+O puis Entrée
2. Ctrl+X
3. `dart eliminate_doublons.dart`{{execute}}

---

## Méthodes des Sets

### add() et addAll()

```dart
Set<String> fruits = {'Pomme'};

fruits.add('Banane');  // Ajoute
fruits.add('Pomme');   // Ignoré (doublon)

print(fruits);  // {Pomme, Banane}
```

### contains() et remove()

```dart
Set<String> fruits = {'Pomme', 'Banane'};

if (fruits.contains('Pomme')) {
  print('Pomme présent');
}

fruits.remove('Pomme');
print(fruits);  // {Banane}
```

---

## Opérations Ensemblistes

### union() - Union

```dart
Set<int> a = {1, 2, 3};
Set<int> b = {3, 4, 5};

Set<int> union = a.union(b);
print(union);  // {1, 2, 3, 4, 5}
```

### intersection() - Intersection

```dart
Set<int> a = {1, 2, 3};
Set<int> b = {2, 3, 4};

Set<int> inter = a.intersection(b);
print(inter);  // {2, 3}
```

### difference() - Différence

```dart
Set<int> a = {1, 2, 3};
Set<int> b = {2, 3, 4};

Set<int> diff = a.difference(b);
print(diff);  // {1}
```

---

## Méthodes Avancées des Collections

### where() - Filtrer

```dart
List<int> nombres = [1, 2, 3, 4, 5, 6];

List<int> pairs = nombres.where((n) => n % 2 == 0).toList();
print(pairs);  // [2, 4, 6]
```

### map() - Transformer

```dart
List<int> nombres = [1, 2, 3];

List<int> doubles = nombres.map((n) => n * 2).toList();
print(doubles);  // [2, 4, 6]
```

### any() et every()

```dart
List<int> nombres = [1, 2, 3, 4];

bool hasEven = nombres.any((n) => n % 2 == 0);  // true
bool allEven = nombres.every((n) => n % 2 == 0);  // false
```

---

## EXERCICE 2 : Filtrage de Données

`nano filtrage.dart`{{execute}}

```dart
void main() {
  List<Map<String, dynamic>> produits = [
    {'nom': 'iPhone', 'prix': 999.99, 'stock': 10},
    {'nom': 'iPad', 'prix': 599.99, 'stock': 0},
    {'nom': 'MacBook', 'prix': 1499.99, 'stock': 5},
    {'nom': 'AirPods', 'prix': 199.99, 'stock': 20},
  ];
  
  print('=== CATALOGUE PRODUITS ===');
  
  // Produits en stock
  var enStock = produits.where((p) => p['stock'] > 0).toList();
  print('Produits disponibles: ${enStock.length}');
  
  // Produits chers (> 500€)
  var chers = produits.where((p) => p['prix'] > 500).toList();
  print('Produits premium: ${chers.length}');
  
  // Noms de tous les produits
  var noms = produits.map((p) => p['nom']).toList();
  print('Noms: $noms');
  
  // Prix total du stock
  double total = 0;
  for (var p in produits) {
    total += p['prix'] * p['stock'];
  }
  print('Valeur totale stock: ${total.toStringAsFixed(2)}€');
}
```

1. Ctrl+O puis Entrée
2. Ctrl+X
3. `dart filtrage.dart`{{execute}}

---

## Préparation Flutter

### where() pour Filtrage UI

```dart
// Console
var actifs = utilisateurs.where((u) => u['actif']).toList();

// Flutter
ListView(
  children: utilisateurs
    .where((u) => u.actif)
    .map((u) => UserCard(user: u))
    .toList(),
)
```

---

## Récapitulatif : Collections

### List
```dart
List<String> list = ['A', 'B', 'C'];
list.add('D');
list[0];  // Accès par index
```

### Map
```dart
Map<String, int> map = {'A': 1, 'B': 2};
map['C'] = 3;  // Ajouter
map['A'];  // Accès par clé
```

### Set
```dart
Set<String> set = {'A', 'B', 'A'};  // {A, B}
set.add('C');
```

### Méthodes
```dart
collection.where((x) => condition);
collection.map((x) => transformation);
collection.any((x) => condition);
collection.every((x) => condition);
```

---

## Prêt pour le Défi ?

Vous maîtrisez :
- Lists
- Maps
- Sets
- Méthodes avancées

**Prochaine étape : Projet complet.**

**Cliquez sur "Continuer".**


