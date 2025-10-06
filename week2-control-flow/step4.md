# Étape 4 : Défi - Système de Notes Interactif

## IMPORTANT: Environnement

`cd /root/semaine2_dart && dart --version`{{execute}}

---

## Le Défi : Système de Notes Complet 🏆

### Ce que Vous Allez Créer

Un programme qui :
1. **Demande les informations** de l'étudiant
2. **Calcule la moyenne** de 3 notes
3. **Détermine la mention** (if/else if)
4. **Vérifie l'admission** (opérateurs logiques)
5. **Donne des conseils** personnalisés (switch)
6. **Affiche un résumé** complet

**Projet complet utilisant TOUT ce que vous avez appris !** 🎯

---

## Construction Étape par Étape

### PARTIE 1 : Structure de Base

`nano systeme_notes.dart`{{execute}}

**Tapez :**

```dart
import 'dart:io';

void main() {
  print('╔════════════════════════════════════╗');
  print('║  SYSTÈME DE NOTATION SCOLAIRE      ║');
  print('╚════════════════════════════════════╝');
  print('');
  
  // Partie 1: Informations étudiant
  print('--- INFORMATIONS ÉTUDIANT ---');
  print('Nom complet:');
  String? nom = stdin.readLineSync();
  nom = nom ?? 'Étudiant';
  
  print('Classe (ex: Terminale, Licence 1):');
  String? classe = stdin.readLineSync();
  classe = classe ?? '';
  
  print('');
}
```

**Sauvegarder :** `Ctrl+O`, `Entrée`, `Ctrl+X`  
**Tester :** `dart systeme_notes.dart`{{execute}}

---

### PARTIE 2 : Saisie des Notes

**Rouvrez :** `nano systeme_notes.dart`{{execute}}

**Ajoutez à la fin (avant le dernier `}`) :**

```dart
  // Partie 2: Saisie des notes
  print('--- SAISIE DES NOTES (sur 20) ---');
  
  print('Note 1 (Mathématiques):');
  double note1 = double.parse(stdin.readLineSync() ?? '0');
  
  print('Note 2 (Français):');
  double note2 = double.parse(stdin.readLineSync() ?? '0');
  
  print('Note 3 (Anglais):');
  double note3 = double.parse(stdin.readLineSync() ?? '0');
  
  // Calculer moyenne
  double moyenne = (note1 + note2 + note3) / 3;
  
  print('');
```

**Sauvegarder et tester**

---

### PARTIE 3 : Calcul de Mention

**Ajoutez :**

```dart
  // Partie 3: Déterminer la mention
  String mention;
  String emoji;
  
  if (moyenne >= 16) {
    mention = 'Très bien';
    emoji = '🏆';
  } else if (moyenne >= 14) {
    mention = 'Bien';
    emoji = '👍';
  } else if (moyenne >= 12) {
    mention = 'Assez bien';
    emoji = '✓';
  } else if (moyenne >= 10) {
    mention = 'Passable';
    emoji = '✓';
  } else {
    mention = 'Insuffisant';
    emoji = '✗';
  }
  
  print('--- RÉSULTATS ---');
  print('Moyenne: ${moyenne.toStringAsFixed(2)}/20');
  print('$emoji Mention: $mention');
  print('');
```

---

### PARTIE 4 : Vérification Admission

**Ajoutez :**

```dart
  // Partie 4: Vérifier admission
  bool moyenneOK = moyenne >= 10;
  bool aucuneNoteEliminatoire = note1 >= 5 && note2 >= 5 && note3 >= 5;
  
  bool estAdmis = moyenneOK && aucuneNoteEliminatoire;
  
  if (estAdmis) {
    print('✓ ADMIS ! Félicitations !');
  } else {
    print('✗ NON ADMIS');
    
    if (!moyenneOK) {
      print('Raison: Moyenne inférieure à 10/20');
    }
    if (!aucuneNoteEliminatoire) {
      print('Raison: Note éliminatoire (< 5/20)');
    }
  }
  print('');
```

---

### PARTIE 5 : Conseils Personnalisés

**Ajoutez :**

```dart
  // Partie 5: Conseils selon la performance
  print('--- CONSEIL PERSONNALISÉ ---');
  
  switch (mention) {
    case 'Très bien':
      print('Excellent travail ! Continuez ainsi !');
      print('Vous pouvez viser les meilleures écoles.');
      break;
    case 'Bien':
      print('Très bon travail !');
      print('Quelques efforts supplémentaires pour le Très Bien.');
      break;
    case 'Assez bien':
      print('Bon travail !');
      print('Vous pouvez améliorer vos résultats avec plus de travail.');
      break;
    case 'Passable':
      print('C\'est juste suffisant.');
      print('Il faut travailler davantage pour progresser.');
      break;
    default:
      print('Résultats insuffisants.');
      print('Un travail sérieux est nécessaire.');
  }
  print('');
```

---

### PARTIE 6 : Analyse Détaillée

**Ajoutez :**

```dart
  // Partie 6: Analyse par matière
  print('--- ANALYSE PAR MATIÈRE ---');
  
  // Meilleure note
  double meilleure = note1;
  String matiereForte = 'Mathématiques';
  
  if (note2 > meilleure) {
    meilleure = note2;
    matiereForte = 'Français';
  }
  if (note3 > meilleure) {
    meilleure = note3;
    matiereForte = 'Anglais';
  }
  
  // Pire note
  double pire = note1;
  String matiereFaible = 'Mathématiques';
  
  if (note2 < pire) {
    pire = note2;
    matiereFaible = 'Français';
  }
  if (note3 < pire) {
    pire = note3;
    matiereFaible = 'Anglais';
  }
  
  print('Point fort: $matiereForte ($meilleure/20)');
  print('À améliorer: $matiereFaible ($pire/20)');
  print('');
```

---

### PARTIE 7 : Résumé Final

**Ajoutez :**

```dart
  // Partie 7: Résumé complet
  print('╔════════════════════════════════════╗');
  print('║       BULLETIN DE NOTES            ║');
  print('╚════════════════════════════════════╝');
  print('');
  print('Étudiant: $nom');
  print('Classe: $classe');
  print('');
  print('Notes:');
  print('  Mathématiques: $note1/20');
  print('  Français:      $note2/20');
  print('  Anglais:       $note3/20');
  print('');
  print('Moyenne générale: ${moyenne.toStringAsFixed(2)}/20');
  print('Mention: $mention');
  print('Statut: ${estAdmis ? "ADMIS" : "NON ADMIS"}');
  print('');
  print('═══════════════════════════════════════');
  print('Merci d\'avoir utilisé notre système !');
}
```

---

## Code Complet (Pour Vérification)

<details>
<summary>Cliquez pour voir le code complet</summary>

```dart
import 'dart:io';

void main() {
  print('╔════════════════════════════════════╗');
  print('║  SYSTÈME DE NOTATION SCOLAIRE      ║');
  print('╚════════════════════════════════════╝');
  print('');
  
  // Partie 1: Informations
  print('--- INFORMATIONS ÉTUDIANT ---');
  print('Nom complet:');
  String? nom = stdin.readLineSync();
  nom = nom ?? 'Étudiant';
  
  print('Classe:');
  String? classe = stdin.readLineSync();
  classe = classe ?? '';
  
  print('');
  
  // Partie 2: Notes
  print('--- SAISIE DES NOTES ---');
  print('Note 1 (Mathématiques):');
  double note1 = double.parse(stdin.readLineSync() ?? '0');
  
  print('Note 2 (Français):');
  double note2 = double.parse(stdin.readLineSync() ?? '0');
  
  print('Note 3 (Anglais):');
  double note3 = double.parse(stdin.readLineSync() ?? '0');
  
  double moyenne = (note1 + note2 + note3) / 3;
  
  print('');
  
  // Partie 3: Mention
  String mention;
  String emoji;
  
  if (moyenne >= 16) {
    mention = 'Très bien';
    emoji = '🏆';
  } else if (moyenne >= 14) {
    mention = 'Bien';
    emoji = '👍';
  } else if (moyenne >= 12) {
    mention = 'Assez bien';
    emoji = '✓';
  } else if (moyenne >= 10) {
    mention = 'Passable';
    emoji = '✓';
  } else {
    mention = 'Insuffisant';
    emoji = '✗';
  }
  
  print('--- RÉSULTATS ---');
  print('Moyenne: ${moyenne.toStringAsFixed(2)}/20');
  print('$emoji Mention: $mention');
  print('');
  
  // Partie 4: Admission
  bool moyenneOK = moyenne >= 10;
  bool aucuneNoteEliminatoire = note1 >= 5 && note2 >= 5 && note3 >= 5;
  bool estAdmis = moyenneOK && aucuneNoteEliminatoire;
  
  if (estAdmis) {
    print('✓ ADMIS !');
  } else {
    print('✗ NON ADMIS');
    if (!moyenneOK) {
      print('Raison: Moyenne < 10/20');
    }
    if (!aucuneNoteEliminatoire) {
      print('Raison: Note éliminatoire (< 5/20)');
    }
  }
  print('');
  
  // Partie 5: Conseils
  print('--- CONSEIL ---');
  switch (mention) {
    case 'Très bien':
      print('Excellent ! Continuez ainsi !');
      break;
    case 'Bien':
      print('Très bon travail !');
      break;
    case 'Assez bien':
      print('Bon travail !');
      break;
    case 'Passable':
      print('C\'est juste suffisant.');
      break;
    default:
      print('Résultats insuffisants.');
  }
  print('');
  
  // Partie 6: Analyse
  print('--- ANALYSE ---');
  double meilleure = note1;
  String matiereForte = 'Maths';
  
  if (note2 > meilleure) {
    meilleure = note2;
    matiereForte = 'Français';
  }
  if (note3 > meilleure) {
    meilleure = note3;
    matiereForte = 'Anglais';
  }
  
  print('Point fort: $matiereForte');
  print('');
  
  // Partie 7: Résumé
  print('╔═══════════════════════════╗');
  print('║     BULLETIN              ║');
  print('╚═══════════════════════════╝');
  print('Étudiant: $nom');
  print('Moyenne: ${moyenne.toStringAsFixed(2)}/20');
  print('Mention: $mention');
  print('Statut: ${estAdmis ? "ADMIS" : "NON ADMIS"}');
}
```
</details>

---

## Testez Complètement !

**Cas à tester :**
1. **Excellent :** Notes 18, 17, 19
2. **Bon :** Notes 15, 14, 13
3. **Limite :** Notes 10, 10, 10
4. **Échec moyenne :** Notes 8, 9, 7
5. **Note éliminatoire :** Notes 4, 15, 15

---

## 💭 Préparation Flutter : App Éducation

### Console (aujourd'hui)
```dart
if (moyenne >= 10 && aucuneNoteEliminatoire) {
  print('ADMIS');
}
```

### Flutter (bientôt)
```dart
class BulletinPage extends StatelessWidget {
  Widget build(context) {
    return Card(
      color: estAdmis ? Colors.green : Colors.red,
      child: Column(
        children: [
          Text('Moyenne: $moyenne'),
          if (estAdmis)  // ← Même logique !
            Icon(Icons.check, color: Colors.white)
          else
            Icon(Icons.close, color: Colors.white),
        ],
      ),
    );
  }
}
```

---

## Ce que Vous Avez Utilisé

✅ **Variables** (nom, notes, moyenne)  
✅ **Fonctions** (main, parse)  
✅ **If/else if/else** (mentions)  
✅ **Opérateurs** (>=, &&, !)  
✅ **Switch** (conseils)  
✅ **Opérateur ternaire** (estAdmis ?)  
✅ **String interpolation** ($moyenne)  

**TOUS les concepts de la Semaine 2 !** 🎯

---

## Félicitations ! 🎉

Vous avez créé un **système complet** !

**Prêt pour la Conclusion ?**

**Cliquez sur "Continuer" !** →


