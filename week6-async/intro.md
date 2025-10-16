# Bienvenue dans Dart Semaine 6 - Programmation Asynchrone

## Dernière Semaine Dart Avant Flutter

**Félicitations d'être arrivé ici.**

Semaines 1-5 : Vous maîtrisez Dart.

Semaine 6 : Dernier concept crucial pour Flutter.

---

## Qu'est-ce que l'Asynchrone ?

### Analogie Simple

**Synchrone (normal) :**
```
Vous commandez un café
Vous attendez debout pendant 5 minutes
Vous recevez votre café
Vous pouvez faire autre chose
```

**Asynchrone (async) :**
```
Vous commandez un café
Vous allez vous asseoir (faire autre chose)
Le café est prêt (notification)
Vous allez le chercher
```

**En programmation :**
- Synchrone = Le programme attend (bloqué)
- Asynchrone = Le programme continue (non-bloqué)

---

## Pourquoi c'est Important pour Flutter ?

**En Flutter, vous ferez :**
- Appels API (attendre la réponse)
- Chargement d'images (attendre le téléchargement)
- Lecture de fichiers (attendre la lecture)
- Animations (attendre la fin)

**Sans async/await = App figée.**

---

## Ce que Vous Allez Apprendre

### Étape 0 : Introduction
- Concept d'asynchrone
- Premier Future

### Étape 1 : Future et Async/Await
- Créer des Futures
- Attendre avec await
- async functions

### Étape 2 : Gestion d'Erreurs
- try/catch
- Erreurs asynchrones
- Timeout

### Étape 3 : Simulation API
- Appels API simulés
- Parsing de données
- Loading states

### Étape 4 : Défi
- Client API complet
- Gestion complète

---

## Préparation Flutter

### Console (cette semaine)

```dart
Future<String> chargerDonnees() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Données chargées';
}
```

### Flutter (Semaine 7)

```dart
FutureBuilder<List<Produit>>(
  future: chargerProduits(),
  builder: (context, snapshot) {
    if (snapshot.hasData) {
      return ListView(...);
    }
    return CircularProgressIndicator();
  },
)
```

**Même Future, affichage différent.**

---

## Pré-requis

- Semaines 1-5 terminées
- Connaître POO
- Connaître try/catch basique

---

## Prêt ?

**Dernière étape avant Flutter.**

**Cliquez sur "Continuer".**


