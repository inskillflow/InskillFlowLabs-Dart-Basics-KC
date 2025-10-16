# Étape 2 : Navigation Entre Pages

## Navigator.push : Aller à une Nouvelle Page

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NouvellePage()),
);
```

## Navigator.pop : Retour

```dart
Navigator.pop(context);
```

## Passer des Données

```dart
// Page 1 : Envoyer
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => PageDetails(nom: 'Marie'),
  ),
);

// Page 2 : Recevoir
class PageDetails extends StatelessWidget {
  final String nom;
  
  PageDetails({required this.nom});
  
  Widget build(context) {
    return Scaffold(
      body: Text('Bonjour $nom'),
    );
  }
}
```

**Cliquez sur "Continuer".**

