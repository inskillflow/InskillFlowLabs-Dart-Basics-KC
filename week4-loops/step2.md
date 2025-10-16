# Étape 2 : Boucle While

## Syntaxe While

```dart
while (condition) {
  // Code répété tant que condition vraie
}
```

## Exemple

`nano while_basique.dart`{{execute}}

```dart
void main() {
  int compteur = 0;
  
  while (compteur < 5) {
    print('Compteur: $compteur');
    compteur++;
  }
}
```

Ctrl+O, Entrée, Ctrl+X  
`dart while_basique.dart`{{execute}}

## Do-While

```dart
do {
  // Exécuté au moins une fois
} while (condition);
```

## Break et Continue

```dart
for (int i = 0; i < 10; i++) {
  if (i == 5) break;  // Sort de la boucle
  if (i % 2 == 0) continue;  // Passe à l'itération suivante
  print(i);
}
```

**Cliquez sur "Continuer".**

