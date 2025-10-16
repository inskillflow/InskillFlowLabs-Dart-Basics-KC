# Étape 0 : Introduction à l'Asynchrone

`dart --version && mkdir -p /root/semaine6_dart && cd /root/semaine6_dart`{{execute}}

## Qu'est-ce qu'un Future ?

**Future = Valeur qui arrivera dans le futur**

Exemple : Commande d'un café
- Maintenant : Vous commandez (Future créé)
- Dans 5 minutes : Café prêt (Future complété)

## Premier Future

`nano premier_future.dart`{{execute}}

```dart
void main() async {
  print('Début');
  
  // Attendre 2 secondes
  await Future.delayed(Duration(seconds: 2));
  
  print('Fin (après 2 secondes)');
}
```

Ctrl+O, Entrée, Ctrl+X  
`dart premier_future.dart`{{execute}}

**Programme attend 2 secondes puis affiche "Fin".**

**Cliquez sur "Continuer".**

