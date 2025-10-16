# Étape 1 : Layouts - Column, Row, Stack

## Column : Arrangement Vertical

```dart
Column(
  children: [
    Text('Haut'),
    Text('Milieu'),
    Text('Bas'),
  ],
)
```

## Row : Arrangement Horizontal

```dart
Row(
  children: [
    Text('Gauche'),
    Text('Centre'),
    Text('Droite'),
  ],
)
```

## Stack : Superposition

```dart
Stack(
  children: [
    Container(width: 200, height: 200, color: Colors.blue),
    Positioned(
      top: 10,
      left: 10,
      child: Text('Par-dessus'),
    ),
  ],
)
```

## Exercice : Page avec Layouts

**Exécutez dans DartPad :**

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: LayoutPage()));

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layouts Demo')),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Text('Header', style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red.shade100,
                    child: Center(child: Text('Gauche')),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green.shade100,
                    child: Center(child: Text('Droite')),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.grey,
            child: Text('Footer', textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
```

**Cliquez sur "Continuer".**

