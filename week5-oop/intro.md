# Bienvenue dans Dart Semaine 5 - POO

## Semaine la Plus Importante

**La POO (Programmation Orientée Objet) est CRITIQUE pour Flutter.**

**Pourquoi ?**

En Flutter, **TOUT est un objet** :
- Chaque widget est une classe
- Chaque page est une classe
- Votre app entière est une classe

**Sans POO = Impossible de faire Flutter.**

---

## Ce qu'est la POO

### Analogie Simple

**Sans POO (procédural) :**
```
Variables éparpillées
Fonctions isolées
Difficile à organiser
```

**Avec POO :**
```
Tout est regroupé dans des "objets"
Données + Fonctions ensemble
Structure claire
```

---

## Exemple Concret

### Sans POO

```dart
String utilisateurNom = 'Marie';
int utilisateurAge = 25;
String utilisateurEmail = 'marie@email.com';

void afficherUtilisateur() {
  print('$utilisateurNom, $utilisateurAge ans');
}
```

**Problème :** Variables et fonctions séparées.

### Avec POO

```dart
class Utilisateur {
  String nom;
  int age;
  String email;
  
  void afficher() {
    print('$nom, $age ans');
  }
}

// Utilisation
Utilisateur marie = Utilisateur();
marie.nom = 'Marie';
marie.age = 25;
marie.afficher();
```

**Tout regroupé dans la classe.**

---

## Ce que Vous Allez Apprendre

### Étape 0 : Introduction POO
- Concepts de base
- Premier exemple

### Étape 1 : Classes et Objets
- Créer des classes
- Instancier des objets
- Propriétés et méthodes

### Étape 2 : Constructeurs
- Constructeur par défaut
- Constructeurs nommés
- Initialisation

### Étape 3 : Héritage
- Classes parentes et enfants
- Override de méthodes
- Polymorphisme

### Étape 4 : Défi
- Système de gestion complet
- Hiérarchie de classes

---

## Préparation Flutter

### Console (cette semaine)

```dart
class Produit {
  String nom;
  double prix;
  
  Produit(this.nom, this.prix);
}
```

### Flutter (bientôt)

```dart
class MonWidget extends StatelessWidget {
  final String titre;
  
  MonWidget({required this.titre});
  
  Widget build(BuildContext context) {
    return Text(titre);
  }
}
```

**Même concept de classe.**

---

## Pré-requis

- Semaines 1-4 terminées
- Connaître fonctions
- Connaître collections

---

## Prêt ?

**La POO change votre façon de programmer.**

**Cliquez sur "Continuer".**


