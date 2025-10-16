# Étape 1 : Future et Async/Await

`cd /root/semaine6_dart`{{execute}}

## Syntaxe async/await

```dart
Future<Type> nomFonction() async {
  // Code asynchrone
  await Future.delayed(...);
  return valeur;
}
```

## Exemple

`nano async_basique.dart`{{execute}}

```dart
Future<String> chargerDonnees() async {
  print('Chargement...');
  await Future.delayed(Duration(seconds: 2));
  return 'Données chargées';
}

void main() async {
  String resultat = await chargerDonnees();
  print(resultat);
}
```

Ctrl+O, Entrée, Ctrl+X  
`dart async_basique.dart`{{execute}}

## Préparation Flutter

```dart
// Console
Future<List> chargerProduits() async {
  await Future.delayed(Duration(seconds: 2));
  return ['iPhone', 'iPad'];
}

// Flutter
FutureBuilder<List>(
  future: chargerProduits(),
  builder: (context, snapshot) {
    if (snapshot.hasData) {
      return ListView(...);
    }
    return CircularProgressIndicator();
  },
)
```

**Même Future, affichage différent.**

**Cliquez sur "Continuer".**

