# Bienvenue dans Dart Semaine 3 - Collections de Données

## Félicitations pour Avoir Terminé les Semaines 1-2

Vous maîtrisez maintenant :
- Variables et types de données
- Fonctions avec paramètres et retour
- Conditions (if/else, switch)
- Opérateurs logiques

**Base solide établie. Passons au niveau suivant.**

---

## Cette Semaine : Stocker Plusieurs Valeurs

### Le Problème des Variables Simples

**Imaginez que vous devez gérer les prénoms de 100 étudiants :**

```dart
String etudiant1 = 'Marie';
String etudiant2 = 'Pierre';
String etudiant3 = 'Julie';
// ... 97 autres variables ??
```

**C'est impraticable !**

### La Solution : Les Collections

```dart
List<String> etudiants = [
  'Marie',
  'Pierre',
  'Julie',
  // ... autant que nécessaire
];
```

**Une seule variable pour toutes les valeurs.**

---

## Les 3 Types de Collections

### 1. List - Liste Ordonnée

**Caractéristiques :**
- Ordre préservé
- Accès par index (0, 1, 2...)
- Peut contenir des doublons
- Modifiable

**Exemple :**
```dart
List<String> fruits = ['Pomme', 'Banane', 'Orange'];
print(fruits[0]);  // Pomme
```

---

### 2. Map - Paires Clé-Valeur

**Caractéristiques :**
- Associe clés et valeurs
- Accès par clé
- Clés uniques
- Très utile pour données structurées

**Exemple :**
```dart
Map<String, int> ages = {
  'Marie': 25,
  'Pierre': 30,
};
print(ages['Marie']);  // 25
```

---

### 3. Set - Ensemble de Valeurs Uniques

**Caractéristiques :**
- Pas de doublons
- Pas d'ordre garanti
- Utile pour éliminer les doublons

**Exemple :**
```dart
Set<String> villes = {'Paris', 'Lyon', 'Paris'};
print(villes);  // {Paris, Lyon} (un seul Paris)
```

---

## Ce que Vous Allez Apprendre

### Étape 0 : Rappel et Préparation
- Révision rapide Semaines 1-2
- Premier exemple de List
- Préparation environnement

**Durée:** 5 minutes

---

### Étape 1 : Lists - Listes Ordonnées
- Créer des lists
- Accéder aux éléments
- Ajouter/supprimer des éléments
- Méthodes importantes
- Itération basique

**Durée:** 20 minutes

---

### Étape 2 : Maps - Paires Clé-Valeur
- Créer des maps
- Accéder aux valeurs
- Ajouter/modifier des entrées
- Parcourir un map
- Cas d'utilisation réels

**Durée:** 20 minutes

---

### Étape 3 : Sets et Méthodes Avancées
- Créer des sets
- Éliminer les doublons
- Opérations ensemblistes
- Méthodes avancées des collections

**Durée:** 15 minutes

---

### Étape 4 : Défi - Gestionnaire de Tâches
**Projet complet !**

Créez une application console qui :
- Stocke une liste de tâches
- Ajoute/supprime des tâches
- Marque comme complétées
- Affiche des statistiques
- Utilise Lists et Maps

**Durée:** 25 minutes

---

## Préparation Flutter

### Lists en Flutter

**Console (cette semaine) :**
```dart
List<String> produits = ['iPhone', 'iPad', 'MacBook'];
for (var produit in produits) {
  print(produit);
}
```

**Flutter (bientôt) :**
```dart
ListView.builder(
  itemCount: produits.length,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text(produits[index]),
    );
  },
)
```

**Même List, affichage différent.**

---

### Maps en Flutter

**Console (cette semaine) :**
```dart
Map<String, dynamic> utilisateur = {
  'nom': 'Marie',
  'age': 25,
};
```

**Flutter (bientôt) :**
```dart
class Utilisateur {
  final String nom;
  final int age;
  
  Utilisateur.fromJson(Map<String, dynamic> json)
    : nom = json['nom'],
      age = json['age'];
}
```

**Maps pour parser les données API.**

---

## Pourquoi les Collections Sont Essentielles

### Applications Réelles

**E-commerce :** List de produits  
**Réseau social :** List de posts  
**Messagerie :** List de messages  
**Profil utilisateur :** Map de données  
**Tags/catégories :** Set de labels  

**99% des apps utilisent des collections.**

---

## Pré-requis

### Obligatoire :

- Avoir terminé Semaines 1-2
- Connaître les variables
- Connaître les fonctions
- Connaître if/else

**Si vous n'avez pas ces bases : retournez aux semaines précédentes.**

---

## Temps Total Estimé

**Durée totale :** 1h30

Vous pouvez suivre à votre rythme.

---

## Environnement

**KillerCoda - Terminal Linux**
- Éditeur : nano
- Exécution : dart nomfichier.dart
- Pas d'interface graphique

**Rappels nano :**
- Ctrl+O puis Entrée = Sauvegarder
- Ctrl+X = Quitter

---

## Prêt à Commencer ?

Vous allez apprendre à gérer des **ensembles de données**.

**Compétence essentielle pour tout développeur.**

**Cliquez sur "Continuer" pour commencer.**


