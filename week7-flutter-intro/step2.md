# Étape 2 : Premier Widget - StatelessWidget

## Rappel : Vous Utilisez DartPad ou Local

**Instructions pour les deux environnements.**

---

## Qu'est-ce qu'un Widget ?

**Widget = Élément visuel de l'interface**

Exemples :
- Text = Widget qui affiche du texte
- Button = Widget cliquable
- Image = Widget qui affiche une image
- Column = Widget qui arrange d'autres widgets verticalement

**En Flutter, TOUT est un widget.**

---

## StatelessWidget : Widget Sans État

### Définition

**Stateless = Sans état = Ne change pas**

**Exemple :** Une étiquette de texte fixe

### Structure de Base

```dart
class MonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Contenu fixe');
  }
}
```

**Parties importantes :**

**1. extends StatelessWidget**
- Hérite de StatelessWidget (POO - Semaine 5)

**2. @override**
- Redéfinit la méthode build() (Semaine 5)

**3. build()**
- Fonction qui construit l'interface
- Retourne un Widget

**4. BuildContext**
- Information sur la position du widget
- Nécessaire pour Flutter

---

## EXERCICE 1 : Votre Premier Widget Custom

### Code à Exécuter

**Dans DartPad ou votre projet local :**

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MonApp());
}

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mon Premier Widget'),
        ),
        body: MonWidgetPersonnalise(),
      ),
    );
  }
}

class MonWidgetPersonnalise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Bonjour !',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'Ceci est mon premier widget custom.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
```

**Exécutez (Run dans DartPad ou F5 dans VS Code)**

**RÉSULTAT :**
- Barre bleue "Mon Premier Widget"
- "Bonjour !" en gros
- Texte explicatif en dessous

---

## Widgets de Base

### Text - Afficher du Texte

```dart
Text('Bonjour')
Text('Texte', style: TextStyle(fontSize: 24))
Text('Texte', style: TextStyle(color: Colors.red))
Text('Texte', style: TextStyle(fontWeight: FontWeight.bold))
```

### Container - Boîte avec Style

```dart
Container(
  width: 200,
  height: 100,
  color: Colors.blue,
  child: Text('Dans un container'),
)
```

### Center - Centrer le Contenu

```dart
Center(
  child: Text('Texte centré'),
)
```

### Column - Arrangement Vertical

```dart
Column(
  children: [
    Text('Ligne 1'),
    Text('Ligne 2'),
    Text('Ligne 3'),
  ],
)
```

### Row - Arrangement Horizontal

```dart
Row(
  children: [
    Text('Colonne 1'),
    Text('Colonne 2'),
  ],
)
```

---

## EXERCICE 2 : Carte de Profil

### Code à Exécuter

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: CarteProfil()));

class CarteProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Utilisateur'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.teal,
                child: Text(
                  'MP',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Marie Dupont',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Développeuse Flutter',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Text('marie.dupont@email.com'),
            ],
          ),
        ),
      ),
    );
  }
}
```

**Exécutez et admirez votre carte de profil.**

---

## Paramètres dans les Widgets

### Widgets avec Paramètres (comme fonctions)

```dart
class Salutation extends StatelessWidget {
  final String nom;  // Paramètre
  
  Salutation({required this.nom});  // Constructeur
  
  @override
  Widget build(BuildContext context) {
    return Text('Bonjour $nom !');
  }
}

// Utilisation
Salutation(nom: 'Marie')
```

**Même concept que les fonctions avec paramètres (Semaine 1).**

---

## EXERCICE 3 : Widget Réutilisable

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: PageAccueil()));

class PageAccueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets Réutilisables')),
      body: Column(
        children: [
          CarteProduit(nom: 'iPhone 15', prix: 999.99),
          CarteProduit(nom: 'iPad Air', prix: 599.99),
          CarteProduit(nom: 'MacBook Pro', prix: 1499.99),
        ],
      ),
    );
  }
}

class CarteProduit extends StatelessWidget {
  final String nom;
  final double prix;
  
  CarteProduit({required this.nom, required this.prix});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(nom, style: TextStyle(fontSize: 18)),
          Text('${prix}€', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green)),
        ],
      ),
    );
  }
}
```

**3 cartes avec le même widget, paramètres différents.**

---

## Lien avec Dart Console

### Console (Semaine 1)

```dart
class Produit {
  String nom;
  double prix;
  
  Produit(this.nom, this.prix);
  
  void afficher() {
    print('$nom: $prix€');
  }
}
```

### Flutter (aujourd'hui)

```dart
class CarteProduit extends StatelessWidget {
  final String nom;
  final double prix;
  
  CarteProduit({required this.nom, required this.prix});
  
  @override
  Widget build(BuildContext context) {
    return Text('$nom: $prix€');
  }
}
```

**Même structure de classe. Juste un Widget au lieu de print().**

---

## Récapitulatif : StatelessWidget

### Structure
```dart
class MonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Widget();
  }
}
```

### Avec Paramètres
```dart
class MonWidget extends StatelessWidget {
  final Type parametre;
  
  MonWidget({required this.parametre});
  
  @override
  Widget build(BuildContext context) {
    return Text(parametre);
  }
}
```

### Utilisation
```dart
MonWidget(parametre: valeur)
```

---

## Prêt pour StatefulWidget ?

**StatelessWidget = Statique**

**Prochaine étape : StatefulWidget = Dynamique**

**Cliquez sur "Continuer".**


