# Étape 3 : StatefulWidget et State

## StatefulWidget : Widget avec État

### Différence Stateless vs Stateful

**StatelessWidget :**
- Contenu fixe
- Ne change jamais
- Exemple : Logo, titre

**StatefulWidget :**
- Contenu peut changer
- Réagit aux interactions
- Exemple : Compteur, formulaire, liste dynamique

---

## Structure d'un StatefulWidget

### Code Complet

```dart
class MonWidget extends StatefulWidget {
  @override
  State<MonWidget> createState() => _MonWidgetState();
}

class _MonWidgetState extends State<MonWidget> {
  // Variables d'état ici
  
  @override
  Widget build(BuildContext context) {
    return Widget();
  }
}
```

**Deux classes nécessaires :**
1. MonWidget (extends StatefulWidget)
2. _MonWidgetState (extends State<MonWidget>)

---

## EXERCICE 1 : Compteur Simple

### Code à Exécuter

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: CompteurApp()));

class CompteurApp extends StatefulWidget {
  @override
  State<CompteurApp> createState() => _CompteurAppState();
}

class _CompteurAppState extends State<CompteurApp> {
  int compteur = 0;  // Variable d'état
  
  void incrementer() {
    setState(() {
      compteur++;  // Modifier l'état
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compteur Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Vous avez cliqué ce nombre de fois :',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '$compteur',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementer,
        child: Icon(Icons.add),
      ),
    );
  }
}
```

**Exécutez et cliquez sur le bouton +**

**RÉSULTAT :**
- Le nombre augmente à chaque clic
- L'interface se met à jour automatiquement

---

## Comprendre setState()

### La Fonction Magique

```dart
void incrementer() {
  setState(() {
    compteur++;  // Modification ici
  });
}
```

**Ce qui se passe :**
1. setState() est appelé
2. Le code à l'intérieur modifie l'état
3. Flutter **reconstruit** automatiquement l'interface
4. L'affichage se met à jour

**Sans setState() : L'interface ne se met PAS à jour.**

### RÈGLE CRITIQUE

**TOUJOURS utiliser setState() pour modifier l'état :**

```dart
// FAUX
void incrementer() {
  compteur++;  // Interface ne se met pas à jour !
}

// CORRECT
void incrementer() {
  setState(() {
    compteur++;  // Interface se met à jour
  });
}
```

---

## Lien avec Dart Console

### Console (Semaine 1)

```dart
void main() {
  int compteur = 0;
  compteur++;
  print('Compteur: $compteur');
}
```

### Flutter (aujourd'hui)

```dart
class _CompteurState extends State<CompteurApp> {
  int compteur = 0;  // ← Même variable
  
  void incrementer() {
    setState(() {
      compteur++;  // ← Même logique
    });
  }
  
  Widget build(context) {
    return Text('$compteur');  // ← Affichage visuel
  }
}
```

**90% du code est identique. Seul setState() est nouveau.**

---

## EXERCICE 2 : Boutons Multiple Actions

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: CompteurAvance()));

class CompteurAvance extends StatefulWidget {
  @override
  State<CompteurAvance> createState() => _CompteurAvanceState();
}

class _CompteurAvanceState extends State<CompteurAvance> {
  int compteur = 0;
  
  void incrementer() {
    setState(() => compteur++);
  }
  
  void decrementer() {
    setState(() => compteur--);
  }
  
  void reinitialiser() {
    setState(() => compteur = 0);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compteur Avancé'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: reinitialiser,
          ),
        ],
      ),
      body: Center(
        child: Text(
          '$compteur',
          style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: incrementer,
            child: Icon(Icons.add),
            heroTag: 'increment',
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: decrementer,
            child: Icon(Icons.remove),
            heroTag: 'decrement',
          ),
        ],
      ),
    );
  }
}
```

**Testez les 3 boutons : +, -, Réinitialiser**

---

## Widgets de Base Flutter

### Text
```dart
Text('Texte simple')
Text('Texte', style: TextStyle(fontSize: 20))
Text('Texte', style: TextStyle(color: Colors.red))
```

### Icon
```dart
Icon(Icons.home)
Icon(Icons.favorite, color: Colors.red, size: 30)
```

### ElevatedButton
```dart
ElevatedButton(
  onPressed: () => print('Cliqué'),
  child: Text('Cliquez'),
)
```

### FloatingActionButton
```dart
FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.add),
)
```

### Container
```dart
Container(
  width: 200,
  height: 100,
  color: Colors.blue,
  padding: EdgeInsets.all(20),
  child: Text('Contenu'),
)
```

---

## EXERCICE 3 : Afficheur de Nom

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: AfficheurNom()));

class AfficheurNom extends StatefulWidget {
  @override
  State<AfficheurNom> createState() => _AfficheurNomState();
}

class _AfficheurNomState extends State<AfficheurNom> {
  String nom = 'Invité';
  
  void changerNom(String nouveauNom) {
    setState(() {
      nom = nouveauNom;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Afficheur de Nom')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bonjour $nom !',
              style: TextStyle(fontSize: 28),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => changerNom('Marie'),
              child: Text('Marie'),
            ),
            ElevatedButton(
              onPressed: () => changerNom('Pierre'),
              child: Text('Pierre'),
            ),
            ElevatedButton(
              onPressed: () => changerNom('Julie'),
              child: Text('Julie'),
            ),
          ],
        ),
      ),
    );
  }
}
```

**Cliquez sur les boutons pour changer le nom.**

---

## Récapitulatif

### StatelessWidget
```dart
class MonWidget extends StatelessWidget {
  Widget build(context) {
    return Text('Fixe');
  }
}
```

### StatefulWidget
```dart
class MonWidget extends StatefulWidget {
  State<MonWidget> createState() => _MonWidgetState();
}

class _MonWidgetState extends State<MonWidget> {
  // Variables d'état
  
  Widget build(context) {
    return Text('Dynamique');
  }
}
```

### setState()
```dart
setState(() {
  variable = nouvelleValeur;
});
```

---

## Prêt pour le Projet ?

Vous savez maintenant :
- Créer des StatelessWidget
- Créer des StatefulWidget
- Utiliser setState()
- Widgets de base

**Prochaine étape : Application complète.**

**Cliquez sur "Continuer".**


