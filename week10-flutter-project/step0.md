# Étape 0 : Planification du Projet

## IMPORTANT : Environnement Flutter

**Ce cours nécessite DartPad ou Flutter local.**

---

## Le Projet Final : Application E-Commerce

### Architecture de l'Application

```
MonApp
├── Page Catalogue (Liste produits)
├── Page Détails (Info produit)
└── Page Panier (Articles sélectionnés)
```

### Données à Gérer

**Modèle Produit :**
```dart
class Produit {
  final int id;
  final String nom;
  final double prix;
  final String image;
  final String description;
  
  Produit({
    required this.id,
    required this.nom,
    required this.prix,
    required this.image,
    required this.description,
  });
}
```

**État Global :**
- Liste de produits (List<Produit>)
- Panier (List<Produit>)
- Total du panier

---

## Fonctionnalités

### Page Catalogue

- Afficher tous les produits
- Carte pour chaque produit (image, nom, prix)
- Bouton "Ajouter au panier"
- Cliquer sur produit → Page détails

### Page Détails

- Image grande
- Nom et description
- Prix
- Bouton "Ajouter au panier"
- Bouton retour

### Page Panier

- Liste des produits ajoutés
- Quantité de chaque produit
- Prix total
- Bouton supprimer
- Bouton commander

---

## Concepts Utilisés

### Dart (Semaines 1-6)

- **Variables** : Stocker produits, compteurs
- **Classes** : Modèle Produit
- **Lists** : Liste de produits, panier
- **Maps** : Données structurées
- **Fonctions** : Ajouter/supprimer panier
- **Conditions** : Affichage conditionnel

### Flutter (Semaines 7-9)

- **StatefulWidget** : Gérer le panier
- **setState()** : Mettre à jour l'UI
- **ListView** : Afficher les produits
- **Navigation** : Entre les pages
- **Layouts** : Column, Row pour design

---

## Structure du Code

```dart
// Modèle de données
class Produit { }

// Page catalogue
class PageCatalogue extends StatefulWidget { }

// Page détails
class PageDetails extends StatelessWidget { }

// Page panier
class PagePanier extends StatefulWidget { }

// Widget carte produit
class CarteProduit extends StatelessWidget { }
```

---

## Préparation

**Tous les concepts ont été vus dans les 9 semaines précédentes.**

**Ce projet les combine tous.**

---

## Prêt à Construire ?

**Prochaines étapes :**
- Step 1 : Catalogue de produits
- Step 2 : Panier d'achat
- Step 3 : Page de détails
- Step 4 : Finalisation

**Cliquez sur "Continuer".**


