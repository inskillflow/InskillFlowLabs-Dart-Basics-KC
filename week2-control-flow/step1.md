# Étape 1 : If/Else - Prendre des Décisions

## IMPORTANT: Vérifier l'environnement

### Commande 1 : Aller dans le dossier

`cd /root/semaine2_dart`{{execute}}

### Commande 2 : Vérifier Dart

`dart --version`{{execute}}

---

## Qu'est-ce que If/Else ? 🔀

### Analogie du Quotidien

**Situation réelle :**

☔ **S'il pleut** → Je prends un parapluie  
🌞 **Sinon** → Je ne prends rien

**En programmation Dart :**

```dart
if (il_pleut) {
  prendreParapluie();
} else {
  // Rien à faire
}
```

**C'est exactement pareil !** Le programme **prend une décision** ! 🧠

---

## Structure If Simple

### Syntaxe de Base

```dart
if (condition) {
  // Code exécuté si condition VRAIE
}
```

### Exemple Concret

```dart
void main() {
  int age = 20;
  
  if (age >= 18) {
    print('Vous êtes majeur');
  }
}
```

**Explication :**
1. `age` vaut 20
2. Dart vérifie : `age >= 18` ?
3. 20 >= 18 → **VRAI** ✓
4. Dart exécute le code dans les `{ }`
5. Affiche "Vous êtes majeur"

---

## EXERCICE 1 : Premier If Simple

### ÉTAPE 1.1 - Créer le fichier

`nano premier_if.dart`{{execute}}

### ÉTAPE 1.2 - Taper le code

```dart
void main() {
  int temperature = 35;
  
  if (temperature > 30) {
    print('Il fait très chaud !');
    print('Pensez à boire de l\'eau.');
  }
  
  print('Programme terminé.');
}
```

### ÉTAPE 1.3 - Exécuter

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart premier_if.dart`{{execute}}

**RÉSULTAT ATTENDU :**
```
Il fait très chaud !
Pensez à boire de l'eau.
Programme terminé.
```

**TESTEZ :** Changez `temperature` à 25 et réexécutez !

---

## Structure If/Else

### Syntaxe Complète

```dart
if (condition) {
  // Code si condition VRAIE
} else {
  // Code si condition FAUSSE
}
```

**Analogie :**
```
SI j'ai de l'argent
  ALORS j'achète le produit
SINON
  je ne l'achète pas
```

---

## EXERCICE 2 : If/Else Majeur/Mineur

### ÉTAPE 2.1 - Créer le fichier

`nano majeur_mineur.dart`{{execute}}

### ÉTAPE 2.2 - Taper le code

```dart
import 'dart:io';

void main() {
  print('=== VÉRIFICATEUR D\'ÂGE ===');
  print('Entrez votre âge:');
  
  String? input = stdin.readLineSync();
  int age = int.parse(input ?? '0');
  
  if (age >= 18) {
    print('✓ Vous êtes majeur');
    print('Vous pouvez voter');
  } else {
    print('✗ Vous êtes mineur');
    print('Vous ne pouvez pas encore voter');
  }
}
```

### ÉTAPE 2.3 - Exécuter et tester

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart majeur_mineur.dart`{{execute}}

**Testez avec différents âges :**
- 17 → "Vous êtes mineur"
- 18 → "Vous êtes majeur"
- 25 → "Vous êtes majeur"

---

## 💭 Préparation Flutter

### En Flutter : Conditional Rendering

**Console (aujourd'hui) :**
```dart
if (age >= 18) {
  print('Majeur');
} else {
  print('Mineur');
}
```

**Flutter (bientôt) :**
```dart
Widget build(BuildContext context) {
  return age >= 18
    ? Text('Majeur',       // ← Si vrai
        style: TextStyle(color: Colors.green))
    : Text('Mineur',       // ← Si faux
        style: TextStyle(color: Colors.red));
}
```

**Même logique, juste affiché dans un widget !** 📱

---

## Structure If/Else If/Else

### Pour Plusieurs Conditions

```dart
if (condition1) {
  // Si condition1 vraie
} else if (condition2) {
  // Si condition1 fausse ET condition2 vraie
} else if (condition3) {
  // Si condition1 et 2 fausses ET condition3 vraie
} else {
  // Si TOUTES fausses
}
```

---

## EXERCICE 3 : Calculateur de Mention

### ÉTAPE 3.1 - Créer le fichier

`nano mentions.dart`{{execute}}

### ÉTAPE 3.2 - Taper le code

```dart
import 'dart:io';

void main() {
  print('=== CALCULATEUR DE MENTION ===');
  print('Entrez votre note sur 20:');
  
  String? input = stdin.readLineSync();
  double note = double.parse(input ?? '0');
  
  if (note >= 16) {
    print('🏆 Mention: Très bien');
    print('Félicitations ! Excellent travail !');
  } else if (note >= 14) {
    print('👍 Mention: Bien');
    print('Très bon travail !');
  } else if (note >= 12) {
    print('✓ Mention: Assez bien');
    print('Bon travail !');
  } else if (note >= 10) {
    print('✓ Mention: Passable');
    print('Vous avez validé !');
  } else {
    print('✗ Échec');
    print('Courage, vous ferez mieux la prochaine fois !');
  }
}
```

### ÉTAPE 3.3 - Comprendre la logique

**Comment Dart évalue :**

1. **Note 17 :**
   - `17 >= 16` ? → **VRAI** ✓ → Affiche "Très bien" → **STOP**

2. **Note 13 :**
   - `13 >= 16` ? → FAUX → Continue
   - `13 >= 14` ? → FAUX → Continue
   - `13 >= 12` ? → **VRAI** ✓ → Affiche "Assez bien" → **STOP**

3. **Note 8 :**
   - Toutes les conditions fausses
   - Exécute `else` → Affiche "Échec"

**Important :** Dès qu'une condition est vraie, Dart **arrête** !

### ÉTAPE 3.4 - Exécuter

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart mentions.dart`{{execute}}

**Testez avec :** 18, 15, 13, 11, 8

---

## Conditions Imbriquées

### If à l'Intérieur d'un If

```dart
if (conditionA) {
  // Code A
  if (conditionB) {
    // Code B (exécuté si A ET B vrais)
  }
}
```

---

## EXERCICE 4 : Système de Connexion

### ÉTAPE 4.1 - Créer le fichier

`nano connexion.dart`{{execute}}

### ÉTAPE 4.2 - Taper le code

```dart
import 'dart:io';

void main() {
  print('=== SYSTÈME DE CONNEXION ===');
  
  // Identifiants corrects (simulés)
  String usernameCorrect = 'admin';
  String passwordCorrect = '1234';
  
  // Demander username
  print('Nom d\'utilisateur:');
  String? username = stdin.readLineSync();
  
  // Vérifier username
  if (username == usernameCorrect) {
    // Username correct, demander password
    print('Mot de passe:');
    String? password = stdin.readLineSync();
    
    // Vérifier password
    if (password == passwordCorrect) {
      print('');
      print('✓ Accès autorisé !');
      print('Bienvenue $username !');
    } else {
      print('');
      print('✗ Mot de passe incorrect');
    }
  } else {
    print('');
    print('✗ Nom d\'utilisateur incorrect');
  }
}
```

### ÉTAPE 4.3 - Comprendre l'imbrication

**Logique :**
```
SI username correct
  ALORS
    SI password correct
      ALORS → Accès autorisé
      SINON → Password incorrect
SINON
  → Username incorrect
```

**2 niveaux de vérification !** 🔐

### ÉTAPE 4.4 - Exécuter

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart connexion.dart`{{execute}}

**Testez :**
- Username: admin, Password: 1234 → **Accès**
- Username: admin, Password: wrong → **Password incorrect**
- Username: user, Password: 1234 → **Username incorrect**

---

## Opérateur Ternaire (Raccourci)

### Syntaxe Condensée

```dart
variable = condition ? valeurSiVrai : valeurSiFaux;
```

### Exemple

```dart
// Avec if/else classique
String statut;
if (age >= 18) {
  statut = 'Majeur';
} else {
  statut = 'Mineur';
}

// Avec opérateur ternaire (plus court)
String statut = age >= 18 ? 'Majeur' : 'Mineur';
```

**C'est plus court mais moins lisible pour les débutants !**

---

## EXERCICE 5 : Prix avec Réduction

### ÉTAPE 5.1 - Créer le fichier

`nano reduction.dart`{{execute}}

### ÉTAPE 5.2 - Taper le code

```dart
import 'dart:io';

void main() {
  print('=== CALCULATEUR DE PRIX ===');
  print('Prix du produit:');
  
  String? input = stdin.readLineSync();
  double prix = double.parse(input ?? '0');
  
  // Si prix > 100€, réduction de 10%
  if (prix > 100) {
    double reduction = prix * 0.10;
    double prixFinal = prix - reduction;
    
    print('');
    print('Prix initial: $prix €');
    print('Réduction 10%: -$reduction €');
    print('Prix final: $prixFinal €');
    print('Vous économisez $reduction € !');
  } else {
    print('');
    print('Prix: $prix €');
    print('(Pas de réduction pour les achats < 100€)');
  }
}
```

### ÉTAPE 5.3 - Exécuter

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart reduction.dart`{{execute}}

**Testez avec :** 150, 80, 100, 200

---

## 💭 Préparation Flutter : E-Commerce App

### Console (aujourd'hui)
```dart
if (prix > 100) {
  appliquerReduction();
}
```

### Flutter (bientôt)
```dart
class ProduitCard extends StatelessWidget {
  final double prix;
  
  Widget build(context) {
    return Card(
      child: Column(
        children: [
          Text('Prix: $prix€'),
          if (prix > 100)  // ← Même condition !
            Chip(
              label: Text('Réduction -10%'),
              backgroundColor: Colors.green,
            ),
        ],
      ),
    );
  }
}
```

**La réduction s'affiche seulement si prix > 100 !** 🛍️

---

## ⚠️ ATTENTION: Erreurs Courantes

### Erreur #1 : Confondre `=` et `==`

**FAUX :**
```dart
if (age = 18) {  // ❌ Assignation !
  print('Majeur');
}
```

**CORRECT :**
```dart
if (age == 18) {  // ✅ Comparaison !
  print('Majeur');
}
```

**Règle :**
- `=` → Assigner une valeur
- `==` → Comparer deux valeurs

---

### Erreur #2 : Oublier les Accolades

**FAUX :**
```dart
if (age >= 18)
  print('Majeur');
  print('Peut voter');  // ❌ Toujours exécuté !
```

**CORRECT :**
```dart
if (age >= 18) {
  print('Majeur');
  print('Peut voter');  // ✅ Dans le bloc if
}
```

**Toujours utiliser `{ }` même pour une ligne !**

---

### Erreur #3 : Ordre des Conditions

**PROBLÈME :**
```dart
if (note >= 10) {
  print('Passable');
} else if (note >= 16) {
  print('Très bien');  // ❌ Jamais atteint !
}
```

**POURQUOI ?**
Si note = 17 :
- `17 >= 10` → **VRAI** → Affiche "Passable" → **STOP**
- Ne vérifie jamais `>= 16` !

**CORRECT :**
```dart
if (note >= 16) {      // ✅ Plus restrictif d'abord
  print('Très bien');
} else if (note >= 10) {
  print('Passable');
}
```

**Règle : Mettre les conditions les plus restrictives EN PREMIER !**

---

### Erreur #4 : Logique Inversée

**PROBLÈME :**
```dart
if (age < 18) {
  print('Majeur');  // ❌ Logique inverse !
}
```

**CORRECT :**
```dart
if (age >= 18) {  // ✅ Logique correcte
  print('Majeur');
}
```

**Vérifiez toujours la logique !**

---

## Récapitulatif : Structures If/Else

### If Simple
```dart
if (condition) {
  // Code si vrai
}
```

### If/Else
```dart
if (condition) {
  // Si vrai
} else {
  // Si faux
}
```

### If/Else If/Else
```dart
if (condition1) {
  // Si condition1 vraie
} else if (condition2) {
  // Si condition2 vraie
} else {
  // Si toutes fausses
}
```

### If Imbriqué
```dart
if (conditionA) {
  if (conditionB) {
    // Si A ET B vrais
  }
}
```

### Ternaire
```dart
variable = condition ? valeurVrai : valeurFaux;
```

---

## Aide-Mémoire Visuel

```dart
// STRUCTURE DE BASE
if (condition) {
  // Code
}

// RÈGLES
✅ Condition entre ( )
✅ Code entre { }
✅ == pour comparer (pas =)
✅ Plus restrictif en premier
✅ Toujours tester tous les cas

// OPÉRATEURS
age >= 18    // Plus grand ou égal
prix == 100  // Égal
nom != ""    // Différent de
```

---

## Conseil de Professeur

### Tester Tous les Cas !

Pour une condition sur l'âge :

**Testez :**
- Cas normal : 25
- Limite basse : 18
- Juste en dessous : 17
- Extrême bas : 0
- Négatif : -5 (erreur ?)

**Ne présumez jamais qu'une condition fonctionne !**  
**Testez, testez, testez !** 🧪

---

## Mini-Quiz

<details>
<summary>Question 1: Que fait ce code?</summary>

```dart
int x = 10;
if (x > 5) {
  x = x + 5;
}
print(x);
```

**Réponse:** Affiche `15`
- x vaut 10
- 10 > 5 → vrai
- x devient 10 + 5 = 15
</details>

<details>
<summary>Question 2: Quelle est l'erreur?</summary>

```dart
if (age = 18) {
  print('Majeur');
}
```

**Réponse:** `=` au lieu de `==`  
Correction : `if (age == 18)`
</details>

<details>
<summary>Question 3: Que s'affiche?</summary>

```dart
int note = 15;
if (note >= 10) {
  print('Réussi');
} else if (note >= 14) {
  print('Bien');
}
```

**Réponse:** "Réussi" seulement  
15 >= 10 → vrai → affiche et s'arrête  
Ne teste jamais >= 14
</details>

---

## Exercice Bonus : Calculateur IMC Amélioré

Créez un programme qui :
1. Demande poids et taille
2. Calcule IMC
3. Affiche l'interprétation avec if/else if/else :
   - < 18.5 : Insuffisance
   - 18.5-25 : Normal
   - 25-30 : Surpoids
   - > 30 : Obésité

**Utilisez ce que vous avez appris !** 💪

---

## Prêt pour les Opérateurs ?

Vous savez maintenant :
- ✅ If simple
- ✅ If/else
- ✅ If/else if/else
- ✅ Conditions imbriquées
- ✅ Opérateur ternaire

**PROCHAINE ÉTAPE :** Tous les opérateurs de comparaison et logiques ! 🔧

**Cliquez sur "Continuer" pour l'Étape 2 !** →


