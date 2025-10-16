# Bienvenue dans Dart Semaine 4 - Boucles et Itérations

## Félicitations pour les Semaines 1-3

Vous maîtrisez maintenant :
- Variables et fonctions
- Conditions (if/else, switch)
- Collections (Lists, Maps, Sets)

**Base solide. Niveau suivant : Automatisation.**

---

## Cette Semaine : Répéter des Actions

### Le Problème Sans Boucles

**Afficher les nombres de 1 à 100 :**

```dart
print(1);
print(2);
print(3);
// ... 97 lignes de plus ??
```

**Impraticable.**

### La Solution : Les Boucles

```dart
for (int i = 1; i <= 100; i++) {
  print(i);
}
```

**3 lignes au lieu de 100.**

---

## Les 3 Types de Boucles

### 1. For - Nombre Connu d'Itérations

```dart
for (int i = 0; i < 5; i++) {
  print('Itération $i');
}
```

### 2. While - Répéter Tant que Condition Vraie

```dart
int compteur = 0;
while (compteur < 5) {
  print(compteur);
  compteur++;
}
```

### 3. For-in - Parcourir une Collection

```dart
List<String> fruits = ['Pomme', 'Banane'];
for (var fruit in fruits) {
  print(fruit);
}
```

---

## Ce que Vous Allez Apprendre

### Étape 0 : Rappel
**Durée :** 5 minutes

### Étape 1 : Boucle For
- Syntaxe for classique
- Range et compteurs
- Boucles imbriquées
**Durée :** 20 minutes

### Étape 2 : Boucle While
- while et do-while
- break et continue
- Boucles infinies
**Durée :** 15 minutes

### Étape 3 : Itération sur Collections
- for-in
- forEach, map, where
- Méthodes fonctionnelles
**Durée :** 20 minutes

### Étape 4 : Défi
- Générateur de rapports
- Analyse de données
- Projet complet
**Durée :** 25 minutes

---

## Préparation Flutter

### Console (cette semaine)

```dart
for (int i = 0; i < produits.length; i++) {
  print(produits[i]);
}
```

### Flutter (bientôt)

```dart
Column(
  children: [
    for (var produit in produits)
      Card(child: Text(produit)),
  ],
)
```

**Boucles pour générer des widgets dynamiques.**

---

## Pré-requis

- Semaines 1-3 terminées
- Connaître Lists et Maps
- Connaître if/else

---

## Temps Total

**Durée :** 1h30

---

## Prêt à Commencer ?

Les boucles sont essentielles pour :
- Automatiser les tâches
- Parcourir des données
- Générer du contenu dynamique

**Cliquez sur "Continuer".**


