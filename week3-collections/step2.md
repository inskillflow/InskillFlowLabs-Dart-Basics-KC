# Étape 2 : Maps - Paires Clé-Valeur

## IMPORTANT: Environnement

`cd /root/semaine3_dart && dart --version`{{execute}}

---

## Qu'est-ce qu'un Map ?

### Analogie Simple

Un Map est comme un **dictionnaire** :
- **Clé :** Le mot que vous cherchez
- **Valeur :** La définition

**En programmation :**
- **Clé :** Identifiant unique
- **Valeur :** Donnée associée

### Exemple Concret

**Annuaire téléphonique :**
```
Marie   → 06 12 34 56 78
Pierre  → 06 98 76 54 32
Julie   → 06 55 44 33 22
```

**En Dart :**
```dart
Map<String, String> annuaire = {
  'Marie': '06 12 34 56 78',
  'Pierre': '06 98 76 54 32',
  'Julie': '06 55 44 33 22',
};
```

---

## Créer un Map

### Syntaxe

```dart
Map<TypeClé, TypeValeur> nom = {
  clé1: valeur1,
  clé2: valeur2,
};
```

### Exemples

```dart
// Map String → int (âges)
Map<String, int> ages = {
  'Marie': 25,
  'Pierre': 30,
  'Julie': 28,
};

// Map String → double (prix)
Map<String, double> prix = {
  'iPhone': 999.99,
  'iPad': 599.99,
};

// Map vide
Map<String, String> vide = {};
```

---

## EXERCICE 1 : Premier Map

### ÉTAPE 1.1 - Créer le fichier

`nano first_map.dart`{{execute}}

### ÉTAPE 1.2 - Taper le code

```dart
void main() {
  // Créer un map de capitales
  Map<String, String> capitales = {
    'France': 'Paris',
    'Espagne': 'Madrid',
    'Italie': 'Rome',
    'Allemagne': 'Berlin',
  };
  
  print('=== CAPITALES EUROPÉENNES ===');
  print('Map complet: $capitales');
  print('');
  
  // Accéder aux valeurs
  print('Capitale de la France: ${capitales['France']}');
  print('Capitale de l\'Espagne: ${capitales['Espagne']}');
  
  // Nombre d'entrées
  print('');
  print('Nombre de pays: ${capitales.length}');
}
```

### ÉTAPE 1.3 - Exécuter

1. Ctrl+O puis Entrée
2. Ctrl+X
3. `dart first_map.dart`{{execute}}

---

## Accéder aux Valeurs

### Syntaxe

```dart
Map<String, int> ages = {'Marie': 25, 'Pierre': 30};

int? ageMarie = ages['Marie'];  // 25
int? ageJulie = ages['Julie'];  // null (n'existe pas)
```

**ATTENTION :** Le résultat peut être null si la clé n'existe pas.

### Vérifier avant d'Accéder

```dart
if (ages.containsKey('Marie')) {
  print('Age de Marie: ${ages['Marie']}');
} else {
  print('Marie n\'existe pas dans le map');
}
```

---

## EXERCICE 2 : Map Interactif

### ÉTAPE 2.1 - Créer le fichier

`nano map_interactif.dart`{{execute}}

### ÉTAPE 2.2 - Taper le code

```dart
import 'dart:io';

void main() {
  // Map de notes d'étudiants
  Map<String, double> notes = {
    'Marie': 16.5,
    'Pierre': 14.0,
    'Julie': 18.0,
  };
  
  print('=== CONSULTATION DE NOTES ===');
  print('Étudiants enregistrés: ${notes.keys.toList()}');
  print('');
  
  print('Nom de l\'étudiant:');
  String? nom = stdin.readLineSync();
  
  if (nom != null && notes.containsKey(nom)) {
    print('Note de $nom: ${notes[nom]}/20');
  } else {
    print('Étudiant non trouvé.');
  }
}
```

### ÉTAPE 2.3 - Exécuter

1. Ctrl+O puis Entrée
2. Ctrl+X
3. `dart map_interactif.dart`{{execute}}

**Testez avec :** "Marie", "Pierre", "Thomas"

---

## Ajouter et Modifier des Entrées

### Ajouter une Nouvelle Entrée

```dart
Map<String, int> ages = {'Marie': 25};

ages['Pierre'] = 30;  // Ajoute Pierre
print(ages);  // {Marie: 25, Pierre: 30}
```

### Modifier une Entrée Existante

```dart
Map<String, int> ages = {'Marie': 25};

ages['Marie'] = 26;  // Modifie l'âge de Marie
print(ages);  // {Marie: 26}
```

**Même syntaxe pour ajouter et modifier.**

### Supprimer une Entrée

```dart
Map<String, int> ages = {'Marie': 25, 'Pierre': 30};

ages.remove('Pierre');
print(ages);  // {Marie: 25}
```

---

## Parcourir un Map

### Méthode 1 : forEach

```dart
Map<String, int> ages = {'Marie': 25, 'Pierre': 30};

ages.forEach((nom, age) {
  print('$nom a $age ans');
});
```

### Méthode 2 : Boucle for-in sur les Clés

```dart
for (String nom in ages.keys) {
  print('$nom a ${ages[nom]} ans');
}
```

### Méthode 3 : Boucle for-in sur les Entrées

```dart
for (var entry in ages.entries) {
  print('${entry.key} a ${entry.value} ans');
}
```

---

## EXERCICE 3 : Carnet d'Adresses

### ÉTAPE 3.1 - Créer le fichier

`nano carnet_adresses.dart`{{execute}}

### ÉTAPE 3.2 - Taper le code

```dart
import 'dart:io';

void main() {
  Map<String, String> contacts = {
    'Marie': '06 12 34 56 78',
    'Pierre': '06 98 76 54 32',
    'Julie': '06 55 44 33 22',
  };
  
  print('=== CARNET D\'ADRESSES ===');
  
  while (true) {
    print('');
    print('1. Afficher tous les contacts');
    print('2. Rechercher un contact');
    print('3. Ajouter un contact');
    print('4. Quitter');
    print('Votre choix:');
    
    String? choix = stdin.readLineSync();
    
    switch (choix) {
      case '1':
        print('');
        print('--- TOUS LES CONTACTS ---');
        for (var entry in contacts.entries) {
          print('${entry.key}: ${entry.value}');
        }
        break;
        
      case '2':
        print('Nom à rechercher:');
        String? nom = stdin.readLineSync();
        if (nom != null && contacts.containsKey(nom)) {
          print('Numéro de $nom: ${contacts[nom]}');
        } else {
          print('Contact non trouvé.');
        }
        break;
        
      case '3':
        print('Nom du nouveau contact:');
        String? nouveauNom = stdin.readLineSync();
        print('Numéro de téléphone:');
        String? numero = stdin.readLineSync();
        
        if (nouveauNom != null && numero != null) {
          contacts[nouveauNom] = numero;
          print('Contact ajouté.');
        }
        break;
        
      case '4':
        print('Au revoir.');
        return;
        
      default:
        print('Choix invalide.');
    }
  }
}
```

### ÉTAPE 3.3 - Exécuter

1. Ctrl+O puis Entrée
2. Ctrl+X
3. `dart carnet_adresses.dart`{{execute}}

---

## Map avec Type `dynamic`

### Pour des Valeurs de Types Différents

```dart
Map<String, dynamic> utilisateur = {
  'nom': 'Marie',          // String
  'age': 25,               // int
  'taille': 1.65,          // double
  'actif': true,           // bool
};

print(utilisateur['nom']);    // Marie
print(utilisateur['age']);    // 25
```

**Utile pour parser du JSON.**

---

## Préparation Flutter : Data Models

### Console (aujourd'hui)

```dart
Map<String, dynamic> produit = {
  'nom': 'iPhone 15',
  'prix': 999.99,
  'stock': 10,
};
```

### Flutter (bientôt)

```dart
class Produit {
  final String nom;
  final double prix;
  final int stock;
  
  Produit.fromJson(Map<String, dynamic> json)
    : nom = json['nom'],
      prix = json['prix'],
      stock = json['stock'];
}
```

**Maps pour structurer les données API.**

---

## Récapitulatif : Maps

### Créer
```dart
Map<String, int> ages = {'Marie': 25};
Map<String, dynamic> data = {};
```

### Accéder
```dart
int? age = ages['Marie'];
ages.containsKey('Marie');
ages.keys;  // Toutes les clés
ages.values;  // Toutes les valeurs
```

### Modifier
```dart
ages['Pierre'] = 30;  // Ajouter
ages['Marie'] = 26;   // Modifier
ages.remove('Pierre'); // Supprimer
```

### Parcourir
```dart
ages.forEach((nom, age) { });
for (var key in ages.keys) { }
for (var entry in ages.entries) { }
```

---

## Prêt pour les Sets ?

Vous maîtrisez :
- Lists (ordre, index)
- Maps (clé-valeur)

**Prochaine étape : Sets (valeurs uniques).**

**Cliquez sur "Continuer".**


