# Étape 4 : Défi - Gestionnaire de Tâches

## IMPORTANT: Environnement

`cd /root/semaine3_dart && dart --version`{{execute}}

---

## Le Défi : Application de Gestion de Tâches

### Ce que Vous Allez Créer

Un gestionnaire de tâches (To-Do App) en console qui :
1. Stocke des tâches dans une List
2. Chaque tâche est un Map (titre, complété, priorité)
3. Menu interactif avec switch
4. Fonctionnalités CRUD complètes

**Projet complet utilisant Lists et Maps.**

---

## Construction Progressive

### PARTIE 1 : Structure de Base

`nano todo_app.dart`{{execute}}

**Code complet :**

```dart
import 'dart:io';

void main() {
  // Liste de tâches (chaque tâche = Map)
  List<Map<String, dynamic>> taches = [];
  
  print('=== GESTIONNAIRE DE TÂCHES ===');
  
  while (true) {
    print('');
    print('--- MENU ---');
    print('1. Afficher toutes les tâches');
    print('2. Ajouter une tâche');
    print('3. Marquer comme complétée');
    print('4. Supprimer une tâche');
    print('5. Statistiques');
    print('6. Quitter');
    print('Choix:');
    
    String? choix = stdin.readLineSync();
    
    switch (choix) {
      case '1':
        afficherTaches(taches);
        break;
      case '2':
        ajouterTache(taches);
        break;
      case '3':
        completerTache(taches);
        break;
      case '4':
        supprimerTache(taches);
        break;
      case '5':
        afficherStatistiques(taches);
        break;
      case '6':
        print('Au revoir.');
        return;
      default:
        print('Choix invalide.');
    }
  }
}

void afficherTaches(List<Map<String, dynamic>> taches) {
  print('');
  print('--- LISTE DES TÂCHES ---');
  
  if (taches.isEmpty) {
    print('Aucune tâche.');
    return;
  }
  
  for (int i = 0; i < taches.length; i++) {
    var tache = taches[i];
    String statut = tache['complete'] ? '[X]' : '[ ]';
    String priorite = tache['priorite'];
    print('${i + 1}. $statut ${tache['titre']} (Priorité: $priorite)');
  }
}

void ajouterTache(List<Map<String, dynamic>> taches) {
  print('');
  print('Titre de la tâche:');
  String? titre = stdin.readLineSync();
  
  print('Priorité (1=Haute, 2=Moyenne, 3=Basse):');
  String? prioriteInput = stdin.readLineSync();
  int prioriteNum = int.parse(prioriteInput ?? '2');
  
  String priorite;
  switch (prioriteNum) {
    case 1:
      priorite = 'Haute';
      break;
    case 2:
      priorite = 'Moyenne';
      break;
    case 3:
      priorite = 'Basse';
      break;
    default:
      priorite = 'Moyenne';
  }
  
  Map<String, dynamic> nouvelleTache = {
    'titre': titre,
    'complete': false,
    'priorite': priorite,
  };
  
  taches.add(nouvelleTache);
  print('Tâche ajoutée.');
}

void completerTache(List<Map<String, dynamic>> taches) {
  afficherTaches(taches);
  
  if (taches.isEmpty) return;
  
  print('');
  print('Numéro de la tâche à compléter:');
  String? numInput = stdin.readLineSync();
  int index = int.parse(numInput ?? '0') - 1;
  
  if (index >= 0 && index < taches.length) {
    taches[index]['complete'] = true;
    print('Tâche marquée comme complétée.');
  } else {
    print('Numéro invalide.');
  }
}

void supprimerTache(List<Map<String, dynamic>> taches) {
  afficherTaches(taches);
  
  if (taches.isEmpty) return;
  
  print('');
  print('Numéro de la tâche à supprimer:');
  String? numInput = stdin.readLineSync();
  int index = int.parse(numInput ?? '0') - 1;
  
  if (index >= 0 && index < taches.length) {
    taches.removeAt(index);
    print('Tâche supprimée.');
  } else {
    print('Numéro invalide.');
  }
}

void afficherStatistiques(List<Map<String, dynamic>> taches) {
  print('');
  print('--- STATISTIQUES ---');
  
  int total = taches.length;
  int completes = taches.where((t) => t['complete']).length;
  int restantes = total - completes;
  
  print('Total: $total tâches');
  print('Complétées: $completes');
  print('Restantes: $restantes');
  
  if (total > 0) {
    double pourcentage = (completes / total) * 100;
    print('Progression: ${pourcentage.toStringAsFixed(1)}%');
  }
}
```

1. Ctrl+O puis Entrée
2. Ctrl+X
3. `dart todo_app.dart`{{execute}}

---

## Analyse du Code

### Structure de Données

Chaque tâche est un Map :
```dart
{
  'titre': 'Faire les courses',
  'complete': false,
  'priorite': 'Haute'
}
```

Toutes les tâches dans une List :
```dart
List<Map<String, dynamic>> taches = [
  {...},
  {...},
];
```

---

## Préparation Flutter : To-Do App

### Console (aujourd'hui)

```dart
List<Map<String, dynamic>> taches = [];
taches.add({'titre': 'Tâche', 'complete': false});
```

### Flutter (bientôt)

```dart
class TodoApp extends StatefulWidget {
  List<Todo> taches = [];
  
  Widget build(context) {
    return ListView.builder(
      itemCount: taches.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
          title: Text(taches[index].titre),
          value: taches[index].complete,
          onChanged: (bool? value) {
            setState(() {
              taches[index].complete = value!;
            });
          },
        );
      },
    );
  }
}
```

**Même logique, interface graphique.**

---

## Félicitations

Vous avez créé une application complète utilisant :
- Lists
- Maps
- Sets
- Méthodes where(), any()
- Logique complexe

**Prêt pour la conclusion.**

**Cliquez sur "Continuer".**


