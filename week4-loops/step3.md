# Étape 3 : Itération sur Collections

## forEach

```dart
List<String> noms = ['Marie', 'Pierre', 'Julie'];

noms.forEach((nom) {
  print('Bonjour $nom');
});
```

## map() - Transformation

```dart
List<int> nombres = [1, 2, 3];
List<int> doubles = nombres.map((n) => n * 2).toList();
print(doubles);  // [2, 4, 6]
```

## where() - Filtrage

```dart
List<int> nombres = [1, 2, 3, 4, 5, 6];
List<int> pairs = nombres.where((n) => n % 2 == 0).toList();
print(pairs);  // [2, 4, 6]
```

## Préparation Flutter

```dart
// Console
List<Widget> widgets = produits.map((p) {
  return Text(p);
}).toList();

// Flutter
Column(
  children: produits.map((p) => Text(p)).toList(),
)
```

**Cliquez sur "Continuer".**

