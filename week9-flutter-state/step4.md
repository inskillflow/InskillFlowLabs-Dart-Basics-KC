# Étape 4 : Projet - App Multi-Pages avec Formulaire

## Application Complète

**Exécutez dans DartPad :**

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: PageAccueil()));

class PageAccueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Accueil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenue', style: TextStyle(fontSize: 32)),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageFormulaire()),
                );
              },
              child: Text('Aller au formulaire'),
            ),
          ],
        ),
      ),
    );
  }
}

class PageFormulaire extends StatefulWidget {
  @override
  State<PageFormulaire> createState() => _PageFormulaireState();
}

class _PageFormulaireState extends State<PageFormulaire> {
  final formKey = GlobalKey<FormState>();
  String nom = '';
  String email = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulaire')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nom'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nom requis';
                  }
                  return null;
                },
                onSaved: (value) => nom = value!,
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || !value.contains('@')) {
                    return 'Email invalide';
                  }
                  return null;
                },
                onSaved: (value) => email = value!,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageConfirmation(nom: nom, email: email),
                      ),
                    );
                  }
                },
                child: Text('Envoyer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageConfirmation extends StatelessWidget {
  final String nom;
  final String email;
  
  PageConfirmation({required this.nom, required this.email});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Confirmation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 80),
            SizedBox(height: 20),
            Text('Inscription réussie !', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('Nom: $nom'),
            Text('Email: $email'),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text('Retour à l\'accueil'),
            ),
          ],
        ),
      ),
    );
  }
}
```

**3 pages avec navigation et formulaire validé.**

**Cliquez sur "Continuer".**

