# Étape 0 : Révision State Management

## IMPORTANT : Environnement Flutter

**Ce cours nécessite DartPad ou Flutter local.**

---

## Rappel : setState()

### Fonction Essentielle

```dart
void modifier() {
  setState(() {
    variable = nouvelleValeur;
  });
}
```

**Sans setState() : L'interface ne se met pas à jour.**

---

## Test de Vérification

**Exécutez dans DartPad :**

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: TestState()));

class TestState extends StatefulWidget {
  @override
  State<TestState> createState() => _TestStateState();
}

class _TestStateState extends State<TestState> {
  String texte = 'Initial';
  
  void changer() {
    setState(() {
      texte = 'Modifié';
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test State')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(texte, style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: changer,
              child: Text('Changer'),
            ),
          ],
        ),
      ),
    );
  }
}
```

**Cliquez sur "Changer" : Le texte change.**

**SI ÇA FONCTIONNE : Vous êtes prêt.**

---

## Ce que Vous Allez Apprendre

### Navigation Entre Pages

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NouvellePage()),
);
```

### Passer des Données

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => DetailPage(data: donnees),
  ),
);
```

### Formulaires

```dart
TextField(
  onChanged: (value) {
    setState(() {
      texte = value;
    });
  },
)
```

### Validation

```dart
final formKey = GlobalKey<FormState>();

TextFormField(
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Champ requis';
    }
    return null;
  },
)
```

---

## Premier Exemple : Navigation

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: PageAccueil()));

class PageAccueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Accueil')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageDetails()),
            );
          },
          child: Text('Aller à la page détails'),
        ),
      ),
    );
  }
}

class PageDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Détails')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);  // Retour
          },
          child: Text('Retour'),
        ),
      ),
    );
  }
}
```

**Navigation entre 2 pages.**

---

## Prêt pour State Management Avancé ?

**Cliquez sur "Continuer".**


