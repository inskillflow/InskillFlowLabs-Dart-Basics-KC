# Étape 1 : Configuration de Votre Environnement

## Vous Avez Choisi : DartPad ou Installation Locale ?

Suivez les instructions correspondantes ci-dessous.

---

## OPTION A : Configuration DartPad

### Étape 1 : Ouvrir DartPad

1. Ouvrir votre navigateur
2. Aller sur : **https://dartpad.dev**
3. Attendre le chargement

### Étape 2 : Activer le Mode Flutter

1. En haut à droite, cliquer sur **"New Pad"**
2. Sélectionner **"Flutter"**
3. Un code d'exemple apparaît

### Étape 3 : Interface DartPad

**Zones principales :**

**Gauche (Éditeur) :**
- C'est là que vous tapez le code Flutter
- Coloration syntaxique automatique
- Numéros de ligne

**Droite (Aperçu) :**
- Affiche l'interface de votre app
- Met à jour automatiquement
- Simule un téléphone

**Haut (Boutons) :**
- **Run** : Exécute le code
- **Format** : Formate le code automatiquement
- **Samples** : Exemples Flutter

### Étape 4 : Premier Test

**Effacez tout le code dans l'éditeur.**

**Copiez ce code :**

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MonApp());
}

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test DartPad'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'DartPad fonctionne !',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text('Vous êtes prêt pour Flutter.'),
            ],
          ),
        ),
      ),
    );
  }
}
```

**Cliquez sur "Run"**

**RÉSULTAT ATTENDU :**

À droite, vous voyez :
- Barre bleue en haut avec "Test DartPad"
- Texte centré "DartPad fonctionne !"
- Texte en dessous "Vous êtes prêt pour Flutter."

**SI VOUS VOYEZ ÇA : DartPad est configuré correctement.**

---

## OPTION B : Installation Locale Flutter

### Étape 1 : Installer Flutter SDK

**Suivez les instructions officielles pour votre système d'exploitation :**

**Windows :**
```
https://docs.flutter.dev/get-started/install/windows
```

**Mac :**
```
https://docs.flutter.dev/get-started/install/macos
```

**Linux :**
```
https://docs.flutter.dev/get-started/install/linux
```

**Temps d'installation : 30 minutes - 1 heure**

### Étape 2 : Vérifier l'Installation

**Ouvrir un terminal et exécuter :**

```bash
flutter --version
```

**Résultat attendu :**
```
Flutter 3.x.x • channel stable
```

**Puis vérifier les dépendances :**

```bash
flutter doctor
```

**Corriger les problèmes signalés.**

### Étape 3 : Installer un Éditeur

**VS Code (Recommandé) :**

1. Télécharger : https://code.visualstudio.com/
2. Installer VS Code
3. Ouvrir VS Code
4. Extensions (Ctrl+Shift+X)
5. Chercher "Flutter"
6. Installer "Flutter" (installe automatiquement "Dart")

### Étape 4 : Créer un Projet Test

**Terminal :**

```bash
flutter create test_app
cd test_app
```

**Ouvrir dans VS Code :**

```bash
code .
```

### Étape 5 : Lancer l'App

**Dans VS Code :**

1. Ouvrir le fichier `lib/main.dart`
2. En bas à droite, sélectionner un device :
   - Chrome (web)
   - Émulateur Android
   - Émulateur iOS (Mac)
3. Appuyer sur F5 (ou Debug > Start Debugging)

**L'app de démonstration s'ouvre.**

**SI ÇA MARCHE : Installation réussie.**

---

## Vérification Finale

### Pour DartPad

- [ ] https://dartpad.dev ouvert
- [ ] Mode "Flutter" activé
- [ ] Code d'exemple exécuté
- [ ] Aperçu visible à droite

### Pour Installation Locale

- [ ] `flutter --version` fonctionne
- [ ] `flutter doctor` sans erreurs critiques
- [ ] VS Code avec extension Flutter installée
- [ ] Projet test créé et lancé

---

## Structure d'une App Flutter

### Code Minimum

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MonApp());
}

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello Flutter'),
        ),
      ),
    );
  }
}
```

**Parties importantes :**

**1. import** - Importer les widgets Flutter
```dart
import 'package:flutter/material.dart';
```

**2. main()** - Point d'entrée (comme en Dart console)
```dart
void main() {
  runApp(MonApp());
}
```

**3. MaterialApp** - Configuration de l'app
```dart
MaterialApp(...)
```

**4. Scaffold** - Structure de base de la page
```dart
Scaffold(
  appBar: ...,  // Barre du haut
  body: ...,    // Contenu principal
)
```

**5. Widgets** - Éléments de l'interface
```dart
Text('...')
Center(...)
Column(...)
```

---

## Workflow de Développement

### Avec DartPad

```
1. Lire le code dans KillerCoda
2. Copier le code
3. Coller dans DartPad
4. Cliquer "Run"
5. Voir le résultat à droite
6. Modifier et réexécuter
```

### Avec Installation Locale

```
1. Lire le code dans KillerCoda
2. Ouvrir VS Code
3. Créer/modifier lib/main.dart
4. Sauvegarder (Ctrl+S)
5. Hot reload automatique (ou R dans terminal)
6. Voir le résultat dans l'émulateur
```

---

## Différences DartPad vs Local

### Ce que DartPad Peut Faire

- Widgets de base (Text, Container, Column, Row)
- Layouts simples
- State management basique (setState)
- Navigation simple
- Formulaires
- Listes (ListView)
- Interactions (boutons, gestures)

### Ce que DartPad NE Peut PAS Faire

- Packages externes complexes
- Accès caméra/GPS
- Notifications push
- Base de données locale
- Appels réseau complexes
- Déploiement sur device

**Pour ce cours (Semaines 7-10) : DartPad suffit amplement.**

---

## Test de Compréhension

### Testez Votre Environnement

**Créez et exécutez ce code :**

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(title: Text('Test')),
    body: Center(
      child: ElevatedButton(
        onPressed: () => print('Bouton cliqué'),
        child: Text('Cliquez-moi'),
      ),
    ),
  ),
));
```

**Résultat attendu :**
- Barre bleue "Test"
- Bouton centré "Cliquez-moi"
- Cliquer le bouton affiche "Bouton cliqué" dans la console

**SI ÇA MARCHE : Vous êtes prêt pour la suite.**

---

## Résumé des Instructions

### DartPad (Simple)

1. https://dartpad.dev
2. Mode Flutter
3. Copier/coller le code
4. Cliquer Run

### Local (Complet)

1. Installer Flutter SDK
2. Installer VS Code + extension Flutter
3. Créer un projet
4. Éditer lib/main.dart
5. F5 pour lancer

---

## Vous Êtes Prêt ?

**Environnement configuré ?** Passez à l'Étape 2.

**Problèmes ?** 
- DartPad : Vérifiez votre navigateur
- Local : Relancez `flutter doctor`

**Cliquez sur "Continuer" pour apprendre les widgets.**


