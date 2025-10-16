# Étape 0 : Choisir Votre Environnement Flutter

## IMPORTANT : KillerCoda Ne Peut Pas Exécuter Flutter

**Raison :** KillerCoda = Terminal Linux sans interface graphique.

**Flutter nécessite un affichage visuel pour montrer les apps.**

**Ce cours fournit le code et les explications.**  
**Vous exécutez le code dans votre propre environnement.**

---

## Deux Options Disponibles

### Option A : DartPad (RECOMMANDÉ pour débutants)

**Avantages :**
- Gratuit et en ligne
- Aucune installation
- Interface simple
- Résultat immédiat
- Parfait pour apprendre

**Inconvénients :**
- Limité aux widgets de base
- Un seul fichier à la fois
- Pas d'accès aux packages avancés
- Pas de déploiement mobile

**Idéal pour :** Apprendre Flutter, tester rapidement, widgets simples

**URL :** https://dartpad.dev

---

### Option B : Installation Locale (Pour projets complets)

**Avantages :**
- Fonctionnalités complètes
- Émulateur Android/iOS
- Hot reload complet
- Tous les packages disponibles
- Déploiement réel sur mobile

**Inconvénients :**
- Installation complexe
- Téléchargement ~2GB
- Nécessite un bon ordinateur
- Configuration plus longue

**Idéal pour :** Projets réels, développement professionnel

---

## Comment Suivre Ce Cours

### Format du Cours

**Dans KillerCoda (ce que vous lisez) :**
- Instructions détaillées
- Explications des concepts
- Code à copier

**Dans Votre Environnement (DartPad ou Local) :**
- Vous collez le code
- Vous exécutez
- Vous voyez le résultat visuel

**Workflow :**
```
1. Lire les instructions ici (KillerCoda)
2. Copier le code Flutter
3. Coller dans DartPad ou VS Code
4. Exécuter et voir le résultat
5. Expérimenter et modifier
```

---

## OPTION A : Utiliser DartPad

### Étape 1 : Ouvrir DartPad

1. Aller sur : **https://dartpad.dev**
2. Interface :
   - Gauche : Éditeur de code
   - Droite : Aperçu UI OU Console
   - Haut : Bouton "Run"

### Étape 2 : Mode Flutter

1. En haut, cliquer sur **"New Pad"**
2. Sélectionner **"Flutter"** (pas "Dart")
3. Vous voyez un code d'exemple
4. Effacez tout

### Étape 3 : Tester

**Copiez ce code dans DartPad :**

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
          title: Text('Ma Première App Flutter'),
        ),
        body: Center(
          child: Text(
            'Bonjour Flutter !',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
```

**Cliquez sur "Run"**

**RÉSULTAT ATTENDU :**
Vous voyez une application avec :
- Barre bleue en haut ("Ma Première App Flutter")
- Texte centré "Bonjour Flutter !"

**SI ÇA MARCHE : DartPad est prêt.**

---

## OPTION B : Installation Locale

### Pré-requis Système

**Windows :**
- Windows 10 ou supérieur
- Espace disque : 2.5 GB
- Git installé

**Mac :**
- macOS 10.14 ou supérieur
- Xcode installé
- Espace disque : 2.5 GB

**Linux :**
- Ubuntu 20.04 ou supérieur
- Espace disque : 2.5 GB

---

### Installation Flutter SDK

#### Sur Windows

**Étape 1 : Télécharger Flutter**

1. Aller sur : https://docs.flutter.dev/get-started/install/windows
2. Télécharger le fichier ZIP
3. Extraire dans `C:\src\flutter`

**Étape 2 : Ajouter au PATH**

1. Ouvrir "Variables d'environnement"
2. Modifier la variable PATH
3. Ajouter : `C:\src\flutter\bin`

**Étape 3 : Vérifier l'Installation**

Ouvrir PowerShell :
```powershell
flutter --version
flutter doctor
```

**Étape 4 : Installer les Dépendances**

```powershell
flutter doctor
```

Suivre les instructions pour installer :
- Android Studio (pour émulateur Android)
- Visual Studio (pour Windows desktop)

---

#### Sur Mac

**Étape 1 : Télécharger Flutter**

1. Aller sur : https://docs.flutter.dev/get-started/install/macos
2. Télécharger le fichier ZIP
3. Extraire dans `/Users/votrenom/flutter`

**Étape 2 : Ajouter au PATH**

Terminal :
```bash
export PATH="$PATH:/Users/votrenom/flutter/bin"
echo 'export PATH="$PATH:/Users/votrenom/flutter/bin"' >> ~/.zshrc
```

**Étape 3 : Vérifier**

```bash
flutter --version
flutter doctor
```

**Étape 4 : Installer Xcode** (pour iOS)

1. Ouvrir App Store
2. Télécharger Xcode (gratuit, mais ~10GB)
3. Installer les outils en ligne de commande

---

#### Sur Linux

**Étape 1 : Télécharger Flutter**

```bash
cd ~
wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.x.x-stable.tar.xz
tar xf flutter_linux_3.x.x-stable.tar.xz
```

**Étape 2 : Ajouter au PATH**

```bash
export PATH="$PATH:$HOME/flutter/bin"
echo 'export PATH="$PATH:$HOME/flutter/bin"' >> ~/.bashrc
```

**Étape 3 : Installer Dépendances**

```bash
sudo apt-get update
sudo apt-get install -y clang cmake ninja-build pkg-config libgtk-3-dev
```

**Étape 4 : Vérifier**

```bash
flutter --version
flutter doctor
```

---

### Installer un Éditeur

#### Visual Studio Code (Recommandé)

**Étape 1 : Télécharger VS Code**

https://code.visualstudio.com/

**Étape 2 : Installer Extensions**

Dans VS Code :
1. Extensions (Ctrl+Shift+X)
2. Chercher "Flutter"
3. Installer "Flutter" (installe aussi "Dart")

**Étape 3 : Vérifier**

1. Ctrl+Shift+P
2. Taper "Flutter: New Project"
3. Si ça marche : Installation réussie

---

### Créer Votre Premier Projet

**Dans le terminal :**

```bash
flutter create mon_app
cd mon_app
flutter run
```

**Choisir :**
- Chrome (pour web)
- Émulateur Android
- Émulateur iOS (Mac uniquement)

**L'app de démonstration s'ouvre.**

---

## Comparaison des Deux Options

| Critère | DartPad | Installation Locale |
|---------|---------|---------------------|
| **Installation** | Aucune | 1-2 heures |
| **Coût** | Gratuit | Gratuit |
| **Complexité** | Très simple | Complexe |
| **Widgets** | De base | Tous |
| **Packages** | Limités | Tous |
| **Hot reload** | Oui | Oui |
| **Émulateur** | Non | Oui |
| **Déploiement** | Non | Oui |
| **Apprentissage** | Parfait | Excellent |
| **Projets réels** | Non | Oui |

---

## Recommandation

### Pour ce Cours (Semaines 7-10)

**Utilisez DartPad.**

Raisons :
- Focus sur l'apprentissage
- Pas de distractions techniques
- Résultats immédiats
- Pas de problèmes de configuration

### Après le Cours

**Installez Flutter localement.**

Pour :
- Créer de vraies apps
- Déployer sur mobile
- Projets professionnels

---

## Quelle Option Choisissez-Vous ?

**Option A - DartPad :** Cliquez sur "Continuer" et suivez Step 1 (DartPad)

**Option B - Local :** Cliquez sur "Continuer" et suivez Step 1 (Installation)

**Conseil :** Si vous hésitez, choisissez DartPad. Vous installerez Flutter plus tard.

---

**Cliquez sur "Continuer" pour les instructions détaillées.**


