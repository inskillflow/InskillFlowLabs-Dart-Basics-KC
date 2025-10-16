# Étape 0 : Rappel et Préparation

## Vérification de l'Environnement

### Commande 1 : Vérifier Dart

`dart --version`{{execute}}

**RÉSULTAT ATTENDU :**
```
Dart SDK version: 3.x.x
```

**SI ERREUR :**
`export PATH="$PATH:/usr/lib/dart/bin"`{{execute}}

---

### Commande 2 : Créer le Dossier de Travail

`mkdir -p /root/semaine3_dart && cd /root/semaine3_dart`{{execute}}

**VÉRIFICATION :**
```
root@host:~/semaine3_dart#
```

---

## Révision Rapide

### Variables (Semaine 1)

```dart
int age = 25;
String nom = 'Marie';
double prix = 19.99;
bool actif = true;
```

Une variable = une valeur.

---

### Fonctions (Semaine 1)

```dart
int additionner(int a, int b) {
  return a + b;
}
```

Une fonction = code réutilisable.

---

### Conditions (Semaine 2)

```dart
if (age >= 18) {
  print('Majeur');
} else {
  print('Mineur');
}
```

Conditions = décisions.

---

## Nouveau : Collections

### Problème à Résoudre

**Gérer plusieurs valeurs du même type :**

Mauvaise approche :
```dart
String produit1 = 'iPhone';
String produit2 = 'iPad';
String produit3 = 'MacBook';
// ...
```

Bonne approche :
```dart
List<String> produits = ['iPhone', 'iPad', 'MacBook'];
```

---

## Premier Exemple de List

`nano premiere_list.dart`{{execute}}

**Tapez :**

```dart
void main() {
  // Créer une liste
  List<String> fruits = ['Pomme', 'Banane', 'Orange'];
  
  // Afficher la liste
  print('Liste de fruits:');
  print(fruits);
  
  // Accéder à un élément (index commence à 0)
  print('Premier fruit: ${fruits[0]}');
  print('Deuxième fruit: ${fruits[1]}');
  
  // Nombre d'éléments
  print('Nombre de fruits: ${fruits.length}');
}
```

1. Ctrl+O puis Entrée
2. Ctrl+X
3. `dart premiere_list.dart`{{execute}}

**RÉSULTAT :**
```
Liste de fruits:
[Pomme, Banane, Orange]
Premier fruit: Pomme
Deuxième fruit: Banane
Nombre de fruits: 3
```

---

## Concept Clé : Index

### Les Index Commencent à 0

```
List: ['Pomme', 'Banane', 'Orange']
Index:    0        1         2
```

**Règle importante :**
- Premier élément = index 0
- Dernier élément = index (length - 1)

---

## Prêt pour les Lists Complètes ?

Vous venez de voir votre première List.

**Prochaine étape :** Tout savoir sur les Lists.

**Cliquez sur "Continuer".**


