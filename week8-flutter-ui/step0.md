# Étape 0 : Rappel Widgets

## IMPORTANT : Environnement Flutter

**Ce cours nécessite DartPad ou Flutter local.**

Instructions complètes dans Semaine 7 - Step 1.

---

## Rappel Semaine 7

### StatelessWidget

```dart
class MonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Contenu');
  }
}
```

### StatefulWidget

```dart
class MonWidget extends StatefulWidget {
  @override
  State<MonWidget> createState() => _MonWidgetState();
}

class _MonWidgetState extends State<MonWidget> {
  int variable = 0;
  
  void modifier() {
    setState(() {
      variable++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Text('$variable');
  }
}
```

---

## Test de Vérification

**Exécutez ce code dans DartPad ou votre projet :**

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: TestWidget()));

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test Semaine 8')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Vous êtes prêt pour la Semaine 8'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => print('Bouton fonctionne'),
              child: Text('Tester'),
            ),
          ],
        ),
      ),
    );
  }
}
```

**SI ÇA FONCTIONNE : Vous êtes prêt.**

---

## Ce que Vous Allez Apprendre

### Layouts Avancés

**Column et Row :**
- Arrangement vertical/horizontal
- MainAxisAlignment
- CrossAxisAlignment

**Stack :**
- Superposer des widgets
- Positioned

**ListView :**
- Listes scrollables
- ListView.builder
- Performances

**GridView :**
- Grilles d'éléments
- GridView.builder

**Styling :**
- Padding et Margin
- Colors et Gradients
- Border et BorderRadius
- Shadows

---

## Premier Exemple : Column et Row

**Exécutez dans DartPad :**

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: LayoutDemo()));

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layouts')),
      body: Column(
        children: [
          // Row horizontal
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 80,
                height: 80,
                color: Colors.red,
                child: Center(child: Text('1', style: TextStyle(color: Colors.white, fontSize: 24))),
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.green,
                child: Center(child: Text('2', style: TextStyle(color: Colors.white, fontSize: 24))),
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
                child: Center(child: Text('3', style: TextStyle(color: Colors.white, fontSize: 24))),
              ),
            ],
          ),
          
          SizedBox(height: 20),
          
          // Column vertical
          Column(
            children: [
              Text('Ligne 1', style: TextStyle(fontSize: 18)),
              Text('Ligne 2', style: TextStyle(fontSize: 18)),
              Text('Ligne 3', style: TextStyle(fontSize: 18)),
            ],
          ),
        ],
      ),
    );
  }
}
```

**Résultat : 3 carrés horizontaux + 3 textes verticaux**

---

## Prêt pour les Layouts Complets ?

**Cliquez sur "Continuer".**


