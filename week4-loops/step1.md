# Étape 1 : Boucle For

`cd /root/semaine4_dart`{{execute}}

## Syntaxe For

```dart
for (initialisation; condition; incrémentation) {
  // Code à répéter
}
```

## Exemple

`nano for_basique.dart`{{execute}}

```dart
void main() {
  for (int i = 0; i < 5; i++) {
    print('Itération $i');
  }
}
```

Ctrl+O, Entrée, Ctrl+X  
`dart for_basique.dart`{{execute}}

## Parcourir une List

```dart
List<String> fruits = ['Pomme', 'Banane', 'Orange'];

for (int i = 0; i < fruits.length; i++) {
  print('${i + 1}. ${fruits[i]}');
}
```

## For-in

```dart
for (var fruit in fruits) {
  print(fruit);
}
```

**Plus simple et lisible.**

**Cliquez sur "Continuer".**

