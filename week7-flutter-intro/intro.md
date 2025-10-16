# Bienvenue dans Flutter Semaine 7 - Introduction

## IMPORTANT : Environnement Requis

**KillerCoda ne peut PAS exécuter Flutter** (pas d'interface graphique).

**Ce cours fournit les instructions et le code.**

**Vous devez exécuter le code sur :**
- **Option A :** DartPad (https://dartpad.dev) - Gratuit, en ligne, aucune installation
- **Option B :** Installation locale Flutter - Plus complet mais plus complexe

**Les instructions détaillées sont dans l'Étape 0.**

---

## Félicitations pour les 6 Semaines Dart

Vous maîtrisez :
- Variables et fonctions
- Conditions et boucles
- Collections (Lists, Maps)
- POO (Classes, héritage)
- Async/await

**Base Dart solide. Prêt pour Flutter.**

---

## Qu'est-ce que Flutter ?

**Flutter est un framework pour créer des applications :**
- Mobiles (Android + iOS)
- Web
- Desktop (Windows, Mac, Linux)

**Un seul code Dart = Toutes les plateformes.**

---

## Philosophie Flutter

### Tout est un Widget

En Flutter, TOUT est un widget :
- Un texte = Widget
- Un bouton = Widget
- Une page = Widget
- Votre app entière = Widget

**Widget = Bloc de construction de l'interface.**

---

## Ce que Vous Allez Apprendre

### Étape 0 : Choisir l'Environnement
- DartPad vs Installation locale
- Avantages et inconvénients
- Instructions de configuration

### Étape 1 : Installation ou Configuration
- Installation Flutter (local)
- OU Configuration DartPad
- Premier projet Flutter

### Étape 2 : Premier Widget
- StatelessWidget
- Comprendre build()
- Widgets de base (Text, Container)

### Étape 3 : State Management
- StatefulWidget
- setState()
- Variables d'état

### Étape 4 : Projet
- Application compteur complète
- Combiner tous les concepts

---

## Pourquoi Dart D'Abord Était Important

### Vous Allez Reconnaître 90% du Code

**Exemple de code Flutter :**

```dart
class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int compteur = 0;  // ← Variable (Semaine 1)
    
    if (compteur > 0) {  // ← Condition (Semaine 2)
      return Text('$compteur');  // ← Interpolation (Semaine 1)
    }
    
    return Text('Zéro');
  }
}
```

**Tout ce qui est surligné = Dart pur que vous connaissez.**

**Seule nouveauté = Widgets (classes Flutter).**

---

## Différence Console vs Flutter

### Console (Semaines 1-6)

```dart
void main() {
  int compteur = 0;
  compteur++;
  print('Compteur: $compteur');
}
```

**Sortie : Texte dans le terminal**

### Flutter (Cette semaine)

```dart
class CompteurApp extends StatefulWidget {
  @override
  State<CompteurApp> createState() => _CompteurAppState();
}

class _CompteurAppState extends State<CompteurApp> {
  int compteur = 0;  // ← Même variable
  
  void incrementer() {
    setState(() {
      compteur++;  // ← Même logique
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('$compteur', style: TextStyle(fontSize: 48)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementer,
        child: Icon(Icons.add),
      ),
    );
  }
}
```

**Sortie : Interface graphique interactive**

---

## Ce qui Change

### Ce que Vous Connaissez Déjà (90%)
- Variables (int, String, etc.)
- Fonctions
- Conditions (if/else)
- Collections (List, Map)
- Classes et objets
- async/await

### Ce qui Est Nouveau (10%)
- Widgets (Text, Container, etc.)
- Scaffold et structure d'app
- setState() pour mettre à jour l'UI
- BuildContext
- MaterialApp

**L'apprentissage sera rapide.**

---

## Pré-requis

**OBLIGATOIRE :**
- Avoir terminé Dart Semaines 1-6
- Maîtriser la POO (Semaine 5)
- Connaître async/await (Semaine 6)

**Sans ces bases, Flutter sera trop difficile.**

---

## Temps Total

**Durée semaines 7-10 :** 6-8 heures

**Répartition :**
- Semaine 7 : Installation + Premiers widgets (2h)
- Semaine 8 : UI et Layouts (2h)
- Semaine 9 : State management (2h)
- Semaine 10 : Projet complet (2h)

---

## Résultat Final

Après la Semaine 10, vous aurez :
- Application mobile complète
- Portfolio de projets Flutter
- Compétences de développeur Flutter junior
- Code sur GitHub
- Prêt pour le marché du travail

---

## Prêt à Commencer Flutter ?

**6 semaines de Dart = Investissement.**  
**Maintenant = Récolte.**

**Vous allez créer de vraies applications.**

**Cliquez sur "Continuer" pour choisir votre environnement.**


