# Étape 2 : Gestion d'Erreurs

## Try/Catch Asynchrone

```dart
Future<String> chargerDonnees() async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception('Erreur réseau');
}

void main() async {
  try {
    String data = await chargerDonnees();
    print(data);
  } catch (e) {
    print('Erreur: $e');
  }
}
```

## Timeout

```dart
Future<String> chargerAvecTimeout() async {
  return Future.delayed(Duration(seconds: 2), () => 'Données')
    .timeout(Duration(seconds: 1));
}
```

**Cliquez sur "Continuer".**

