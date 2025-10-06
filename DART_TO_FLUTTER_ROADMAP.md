# Roadmap Dart → Flutter : Préparer les Étudiants pour le Développement Mobile

## Objectif : Flutter Mobile Development

**Ce cours Dart est conçu comme une PRÉPARATION DIRECTE à Flutter !**

Chaque concept Dart enseigné est **immédiatement applicable** dans Flutter.

---

## Philosophie du Cours

### Approche Progressive

```
Semaine 1-6 : DART FONDAMENTAL (console)
  ↓
  Concepts transférables à 100% vers Flutter
  ↓
Semaine 7+ : FLUTTER (mobile/web)
  ↓
  Application immédiate des concepts Dart
```

**Pourquoi commencer par Dart console ?**

 **Focus sur la logique** - Pas distrait par l'UI 
 **Apprentissage plus rapide** - Concepts purs 
 **Debugging simple** - Terminal = facile à comprendre 
 **Feedback immédiat** - Pas de compilation longue 
 **Base solide** - Maîtrise du langage AVANT l'UI 

---

## Tableau de Correspondance Dart → Flutter

| Concept Dart (Console) | Utilisation Flutter | Importance |
|------------------------|---------------------|------------|
| **Variables** | State management, données UI | |
| **Fonctions** | Callbacks, event handlers | |
| **If/Else** | Conditional rendering | |
| **Lists** | ListView, grids, données | |
| **Boucles** | Générer widgets dynamiques | |
| **Classes** | Widgets customs, models | |
| **Async/Await** | API calls, animations | |

**TOUS les concepts Dart sont cruciaux pour Flutter !**

---

## ️ Plan Détaillé Semaine par Semaine

### SEMAINE 1 : Fondamentaux

#### Concepts Dart
- Variables (int, String, double, bool)
- Fonctions (paramètres, retour)
- Entrées/sorties console

#### Application Flutter

**Variables → State Management**
```dart
// Console (Semaine 1)
int compteur = 0;
compteur++;

// Flutter (plus tard)
class MonWidget extends StatefulWidget {
 int compteur = 0;
 
 void incrementer() {
  setState(() {
   compteur++; // Même logique !
  });
 }
}
```

**Fonctions → Event Handlers**
```dart
// Console (Semaine 1)
void direBonjour(String nom) {
 print('Bonjour $nom');
}

// Flutter (plus tard)
ElevatedButton(
 onPressed: () => direBonjour('Marie'), // Même fonction !
 child: Text('Saluer'),
)
```

**I/O Console → User Input**
```dart
// Console (Semaine 1)
String? nom = stdin.readLineSync();

// Flutter (plus tard)
TextField(
 onChanged: (value) {
  nom = value; // Même concept !
 },
)
```

---

### SEMAINE 2 : Control Flow

#### Concepts Dart
- if/else
- Opérateurs logiques (&&, ||, !)
- switch/case

#### Application Flutter

**if/else → Conditional Rendering**
```dart
// Console (Semaine 2)
if (age >= 18) {
 print('Majeur');
} else {
 print('Mineur');
}

// Flutter (plus tard)
Widget build(BuildContext context) {
 return age >= 18
  ? Text('Majeur')  // Même logique !
  : Text('Mineur');
}
```

**switch → Navigation / Themes**
```dart
// Console (Semaine 2)
switch (choix) {
 case 1:
  afficherAccueil();
  break;
 case 2:
  afficherProfil();
  break;
}

// Flutter (plus tard)
Widget build(BuildContext context) {
 switch (pageActuelle) {
  case 'accueil':
   return PageAccueil(); // Même pattern !
  case 'profil':
   return PageProfil();
 }
}
```

**Opérateurs logiques → Validation Forms**
```dart
// Console (Semaine 2)
bool isValid = nom.isNotEmpty && age > 0;

// Flutter (plus tard)
final formKey = GlobalKey<FormState>();
validator: (value) {
 if (value == null || value.isEmpty) {
  return 'Champ requis'; // Même logique !
 }
 return null;
}
```

---

### SEMAINE 3 : Collections (Lists, Maps, Sets)

#### Concepts Dart
- Lists (création, accès, méthodes)
- Maps (key-value)
- Itération

#### Application Flutter

**Lists → ListView**
```dart
// Console (Semaine 3)
List<String> produits = ['Pomme', 'Banane', 'Orange'];
for (var produit in produits) {
 print(produit);
}

// Flutter (plus tard)
ListView.builder(
 itemCount: produits.length,
 itemBuilder: (context, index) {
  return ListTile(
   title: Text(produits[index]), // Même liste !
  );
 },
)
```

**Maps → Data Models**
```dart
// Console (Semaine 3)
Map<String, dynamic> utilisateur = {
 'nom': 'Marie',
 'age': 25,
};

// Flutter (plus tard)
class Utilisateur {
 final String nom;
 final int age;
 
 Utilisateur.fromJson(Map<String, dynamic> json)
  : nom = json['nom'], // Même structure !
   age = json['age'];
}
```

---

### SEMAINE 4 : Boucles (Loops)

#### Concepts Dart
- for loop
- while loop
- forEach, map, where

#### Application Flutter

**for loop → Générer Widgets**
```dart
// Console (Semaine 4)
for (int i = 0; i < 5; i++) {
 print('Item $i');
}

// Flutter (plus tard)
Column(
 children: [
  for (int i = 0; i < 5; i++)
   Text('Item $i'), // Même boucle !
 ],
)
```

**map() → Transform Data for UI**
```dart
// Console (Semaine 4)
List<int> nombres = [1, 2, 3];
List<int> doubles = nombres.map((n) => n * 2).toList();

// Flutter (plus tard)
List<Widget> widgets = produits.map((produit) {
 return Card(
  child: Text(produit), // Même transformation !
 );
}).toList();
```

---

### SEMAINE 5 : POO (Classes et Objets)

#### Concepts Dart
- Classes et objets
- Constructeurs
- Héritage
- Getters/Setters

#### Application Flutter

**Classes → Data Models**
```dart
// Console (Semaine 5)
class Produit {
 String nom;
 double prix;
 
 Produit(this.nom, this.prix);
 
 double prixTTC() => prix * 1.2;
}

// Flutter (plus tard)
class Produit {
 final String nom;
 final double prix;
 
 Produit({required this.nom, required this.prix});
 
 // Utilisé dans des widgets
 Widget toCard() {
  return Card(
   child: Text('$nom: $prix€'),
  );
 }
}
```

**Classes → Custom Widgets**
```dart
// Console (Semaine 5)
class Calculatrice {
 int additionner(int a, int b) => a + b;
}

// Flutter (plus tard)
class MonBouton extends StatelessWidget {
 final String texte;
 final VoidCallback onPressed;
 
 MonBouton({required this.texte, required this.onPressed});
 
 @override
 Widget build(BuildContext context) {
  return ElevatedButton(
   onPressed: onPressed,
   child: Text(texte),
  );
 }
}
```

---

### SEMAINE 6 : Async/Await et Projet Final

#### Concepts Dart
- Future et async/await
- Gestion d'erreurs (try/catch)
- Streams (optionnel)

#### Application Flutter

**async/await → API Calls**
```dart
// Console (Semaine 6)
Future<String> chargerDonnees() async {
 await Future.delayed(Duration(seconds: 2));
 return 'Données chargées';
}

// Flutter (plus tard)
Future<void> chargerProduits() async {
 setState(() {
  isLoading = true;
 });
 
 final produits = await api.getProduits(); // Même pattern !
 
 setState(() {
  this.produits = produits;
  isLoading = false;
 });
}
```

**FutureBuilder (Flutter)**
```dart
FutureBuilder<List<Produit>>(
 future: chargerProduits(), // Future de Semaine 6 !
 builder: (context, snapshot) {
  if (snapshot.hasData) {
   return ListView(children: ...);
  }
  return CircularProgressIndicator();
 },
)
```

---

## Semaines 7-10 : TRANSITION VERS FLUTTER

### Semaine 7 : Introduction Flutter
- Installation Flutter SDK
- Comprendre les Widgets
- Stateless vs Stateful
- **Réutiliser TOUS les concepts Dart appris !**

### Semaine 8 : Layouts et UI
- Column, Row, Container
- Styling
- **Utiliser if/else pour conditional rendering**
- **Utiliser lists pour afficher des données**

### Semaine 9 : State Management
- setState
- Provider (ou Riverpod)
- **Toute la logique Dart des semaines 1-6 s'applique !**

### Semaine 10 : Projet Flutter Final
- App complète
- Navigation
- API calls (async/await de Semaine 6)
- **Combiner TOUS les concepts !**

---

## Modifications Pédagogiques pour Préparer Flutter

### Dans Chaque Semaine Dart :

#### 1. Ajouter des Sections " Préparation Flutter"

**Exemple dans Semaine 1 (Variables) :**
```markdown
## Comment Ceci Prépare Flutter

En Flutter, les variables servent à :
- **Stocker l'état d'un widget** (compteur, texte, etc.)
- **Passer des données** entre widgets
- **Gérer les inputs** utilisateur

Exemple Flutter (vous ferez ça plus tard) :
```dart
class MonWidget extends StatefulWidget {
 int compteur = 0; // Variable de Semaine 1 !
 
 void incrementer() {
  setState(() {
   compteur++;
  });
 }
}
```
```

#### 2. Utiliser des Exemples "Orientés App"

**Au lieu de :**
```dart
// Calculer l'aire d'un rectangle
int calculerAire(int longueur, int largeur) {
 return longueur * largeur;
}
```

**Préférer :**
```dart
// Calculer le total d'un panier (comme une app e-commerce)
double calculerTotal(List<double> prix) {
 double total = 0;
 for (var prix in prix) {
  total += prix;
 }
 return total;
}
```

#### 3. Vocabulaire Flutter Introduit Progressivement

**Semaine 1 :** State, données dynamiques 
**Semaine 2 :** Conditional rendering, validation 
**Semaine 3 :** ListView, data models 
**Semaine 4 :** Dynamic widgets, builders 
**Semaine 5 :** Custom widgets, models 
**Semaine 6 :** API calls, loading states 

#### 4. Projets Finaux "Style App"

**Semaine 1 :** Calculateur personnel → Simule un profil app 
**Semaine 2 :** Système de notes → Simule une app éducation 
**Semaine 3 :** Gestionnaire de tâches → To-Do app 
**Semaine 4 :** Catalogue de produits → E-commerce app 
**Semaine 5 :** Système de réservation → Booking app 
**Semaine 6 :** Chat bot simple → Messaging app 

---

## Checklist de Préparation Flutter par Semaine

### Semaine 1 
- [ ] Variables expliquées comme "state"
- [ ] Fonctions comme "event handlers"
- [ ] I/O console comme "user inputs"
- [ ] Section "Vers Flutter" à la fin
- [ ] Vocabulaire Flutter introduit

### Semaine 2 (en cours)
- [ ] if/else pour "conditional rendering"
- [ ] switch pour "navigation/routing"
- [ ] Validation de formulaires
- [ ] Section " Préparation Flutter"
- [ ] Exemples orientés app mobile

### Semaine 3 (à créer)
- [ ] Lists pour ListView
- [ ] Maps pour data models
- [ ] Itération pour builder patterns
- [ ] JSON parsing preview

### Semaine 4 (à créer)
- [ ] for loops pour générer widgets
- [ ] map() pour transformer data
- [ ] Dynamic UI generation

### Semaine 5 (à créer)
- [ ] Classes comme custom widgets
- [ ] Data models pour API
- [ ] Constructors Flutter-style

### Semaine 6 (à créer)
- [ ] async/await pour API calls
- [ ] FutureBuilder preview
- [ ] Error handling
- [ ] Loading states

---

## Message aux Étudiants

**Ajouté dans chaque intro :**

```markdown
## Votre Chemin vers Flutter

**Ce cours Dart vous prépare DIRECTEMENT à Flutter !**

### Aujourd'hui (Console Dart)
Vous apprenez [concept] en mode console.

### Bientôt (Flutter Mobile)
Vous utiliserez [concept] pour créer des apps mobiles !

**Exemple concret :**
[Montrer le même code en console puis en Flutter]

**Pourquoi d'abord console ?**
 Focus sur la logique (pas distrait par l'UI)
 Plus rapide à apprendre
 Debugging plus simple
 Base solide avant Flutter

**Dans 6 semaines, vous créerez des VRAIES apps mobiles !** 
```

---

## Timeline Complète

```
Semaine 0   : [Vous êtes ici]
Semaines 1-2 : Dart Basics (variables, fonctions, conditions)
Semaines 3-4 : Dart Intermédiaire (collections, boucles)
Semaines 5-6 : Dart Avancé (POO, async)
---
Semaine 7   : FLUTTER ! Premier widget
Semaine 8   : Layouts et UI
Semaine 9   : State management
Semaine 10  : Projet app complète
---
Après     : Apps mobiles professionnelles ! 
```

**Temps total : 10 semaines pour devenir développeur Flutter !**

---

## Actions Immédiates

### Pour Adapter les Cours Existants :

1. **Week 1 :** Ajouter sections " Préparation Flutter"
2. **Week 2 :** Créer avec orientation Flutter
3. **Weeks 3-6 :** Créer avec exemples app-oriented
4. **Chaque week :** Ajouter comparaison Console vs Flutter

### Nouveau Contenu à Créer :

- `FLUTTER_PREVIEW.md` - Aperçu de ce qui vient
- Diagrammes : Console → Flutter
- Tableau récap des concepts transférables
- Quiz : "Pourquoi apprendre Dart d'abord ?"

---

## Résultat Final

**Les étudiants auront :**

 Base Dart solide 
 Compréhension des concepts Flutter 
 Vocabulaire Flutter familier 
 Transition naturelle vers Flutter 
 Confiance pour créer des apps 
 Portfolio de 6+ projets Dart 
 Prêts pour Flutter dès Semaine 7 ! 

**→ SUCCÈS GARANTI DANS FLUTTER !** 

---

*Document créé pour optimiser l'apprentissage Dart → Flutter* 
*Version 1.0 - Octobre 2025*


