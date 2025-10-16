# Étape 3 : Formulaires et Validation

## TextField : Champ de Saisie

```dart
TextField(
  onChanged: (value) {
    setState(() {
      texte = value;
    });
  },
  decoration: InputDecoration(
    labelText: 'Nom',
    hintText: 'Entrez votre nom',
  ),
)
```

## TextFormField avec Validation

```dart
final formKey = GlobalKey<FormState>();

Form(
  key: formKey,
  child: Column(
    children: [
      TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Champ requis';
          }
          return null;
        },
      ),
      ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            // Formulaire valide
          }
        },
        child: Text('Valider'),
      ),
    ],
  ),
)
```

**Cliquez sur "Continuer".**

