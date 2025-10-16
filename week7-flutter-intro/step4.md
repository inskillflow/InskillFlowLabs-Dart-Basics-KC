# Étape 4 : Projet - Application Compteur Complète

## Projet Final de la Semaine 7

### Application avec Plusieurs Fonctionnalités

- Compteur avec +/-
- Historique des valeurs
- Réinitialisation
- Affichage conditionnel
- Style professionnel

---

## Code Complet

**Exécutez dans DartPad ou votre projet local :**

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: CompteurComplet()));

class CompteurComplet extends StatefulWidget {
  @override
  State<CompteurComplet> createState() => _CompteurCompletState();
}

class _CompteurCompletState extends State<CompteurComplet> {
  int compteur = 0;
  List<int> historique = [];
  
  void incrementer() {
    setState(() {
      compteur++;
      historique.add(compteur);
    });
  }
  
  void decrementer() {
    setState(() {
      compteur--;
      historique.add(compteur);
    });
  }
  
  void reinitialiser() {
    setState(() {
      compteur = 0;
      historique.clear();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compteur Complet'),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: reinitialiser,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Affichage du compteur
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: compteur >= 0 ? Colors.green.shade50 : Colors.red.shade50,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: compteur >= 0 ? Colors.green : Colors.red,
                  width: 3,
                ),
              ),
              child: Text(
                '$compteur',
                style: TextStyle(
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                  color: compteur >= 0 ? Colors.green : Colors.red,
                ),
              ),
            ),
            
            SizedBox(height: 20),
            
            // Message conditionnel
            if (compteur == 0)
              Text('Valeur neutre', style: TextStyle(fontSize: 16))
            else if (compteur > 0)
              Text('Valeur positive', style: TextStyle(fontSize: 16, color: Colors.green))
            else
              Text('Valeur négative', style: TextStyle(fontSize: 16, color: Colors.red)),
            
            SizedBox(height: 30),
            
            // Boutons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: decrementer,
                  icon: Icon(Icons.remove),
                  label: Text('Décrémenter'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton.icon(
                  onPressed: incrementer,
                  icon: Icon(Icons.add),
                  label: Text('Incrémenter'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 30),
            
            // Historique
            if (historique.isNotEmpty) ...[
              Text('Historique:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Container(
                height: 100,
                child: ListView.builder(
                  itemCount: historique.length,
                  itemBuilder: (context, index) {
                    return Text('${index + 1}. ${historique[index]}');
                  },
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
```

---

## Analyse du Code

### Concepts Dart Utilisés (Semaines 1-6)

**Variables (S1) :**
```dart
int compteur = 0;
List<int> historique = [];
```

**Fonctions (S1) :**
```dart
void incrementer() { }
void decrementer() { }
```

**Conditions (S2) :**
```dart
if (compteur == 0)
  Text('Neutre')
else if (compteur > 0)
  Text('Positif')
```

**Lists (S3) :**
```dart
historique.add(compteur);
historique.clear();
```

**Classes (S5) :**
```dart
class CompteurComplet extends StatefulWidget { }
```

**TOUT CE QUE VOUS AVEZ APPRIS EST UTILISÉ.**

---

## Nouveaux Concepts Flutter

### setState()
```dart
setState(() {
  variable = nouvelleValeur;
});
```

**Déclenche la reconstruction de l'interface.**

### Widgets Conditionnels
```dart
if (condition)
  Widget1()
else
  Widget2()
```

### ListView.builder
```dart
ListView.builder(
  itemCount: liste.length,
  itemBuilder: (context, index) {
    return Widget();
  },
)
```

**Génère des widgets dynamiquement à partir d'une List.**

---

## Variations à Essayer

### 1. Changer les Couleurs

Modifiez :
```dart
backgroundColor: Colors.deepPurple,
```

En :
```dart
backgroundColor: Colors.teal,
```

### 2. Ajouter un Bouton Reset

```dart
ElevatedButton(
  onPressed: reinitialiser,
  child: Text('Reset'),
)
```

### 3. Limiter le Compteur

```dart
void incrementer() {
  setState(() {
    if (compteur < 10) {
      compteur++;
    }
  });
}
```

---

## Félicitations

**Vous venez de créer votre première vraie application Flutter.**

**Elle utilise :**
- State management
- Widgets multiples
- Logique conditionnelle
- Collections (List)
- Interactions utilisateur

**Tous les concepts Dart des semaines 1-6.**

---

## Prêt pour la Conclusion ?

**Cliquez sur "Continuer".**


