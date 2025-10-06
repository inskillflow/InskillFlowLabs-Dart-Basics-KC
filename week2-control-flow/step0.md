# Étape 0 : Rappel et Préparation

## Bienvenue dans la Semaine 2 ! 🎯

Avant de commencer, vérifions que tout est prêt !

---

## Vérification : Avez-vous Fait la Semaine 1 ?

### ⚠️ IMPORTANT

Cette semaine suppose que vous connaissez :
- ✅ Variables (`int`, `String`, `double`, `bool`)
- ✅ Fonctions (avec paramètres et retour)
- ✅ Entrées/sorties (`print`, `stdin`)
- ✅ nano (éditeur)

**Si vous ne savez PAS faire ça : retournez à la Semaine 1 !**

---

## ÉTAPE 1 : Vérifier Dart

### Commande 1 : Vérifier que Dart est installé

`dart --version`{{execute}}

**RÉSULTAT ATTENDU :**
```
Dart SDK version: 3.x.x
```

**SI ERREUR "command not found" :**
Dart n'est pas installé. Suivez les instructions ci-dessous.

---

## SI DART N'EST PAS INSTALLÉ

### Installation Rapide (Si nécessaire)

Si vous voyez "dart: command not found", exécutez ces commandes :

**1. Installer Dart :**
`apt-get update && apt-get install -y apt-transport-https wget gnupg`{{execute}}

**2. Ajouter le repository :**
`wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor -o /usr/share/keyrings/dart.gpg`{{execute}}

**3. Configurer les sources :**
`echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | tee /etc/apt/sources.list.d/dart_stable.list`{{execute}}

**4. Installer :**
`apt-get update && apt-get install -y dart`{{execute}}

**5. Configurer PATH :**
`export PATH="$PATH:/usr/lib/dart/bin"`{{execute}}

**6. Vérifier :**
`dart --version`{{execute}}

---

## ÉTAPE 2 : Créer le Dossier de Travail

### Commande 2 : Créer et aller dans le dossier

`mkdir -p /root/semaine2_dart && cd /root/semaine2_dart`{{execute}}

**CE QUI SE PASSE :**
- Crée un nouveau dossier pour la Semaine 2
- Se déplace dans ce dossier

**VÉRIFICATION :**
Votre ligne de commande devrait montrer :
```
root@host:~/semaine2_dart#
```

---

## ÉTAPE 3 : Révision Rapide - Variables

### Test : Créer un Programme de Révision

`nano revision_variables.dart`{{execute}}

**Tapez ce code :**

```dart
void main() {
  // Variables de base
  int age = 25;
  String nom = 'Julie';
  double prix = 19.99;
  bool estActif = true;
  
  // Affichage
  print('=== RÉVISION SEMAINE 1 ===');
  print('Nom: $nom');
  print('Age: $age ans');
  print('Prix: $prix €');
  print('Actif: $estActif');
}
```

**Sauvegarder et quitter :**
1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`

**Exécuter :**
`dart revision_variables.dart`{{execute}}

**SI ÇA MARCHE :** ✅ Vous vous souvenez des variables !

---

## ÉTAPE 4 : Révision Rapide - Fonctions

### Test : Programme avec Fonction

`nano revision_fonctions.dart`{{execute}}

**Tapez ce code :**

```dart
// Fonction qui additionne deux nombres
int additionner(int a, int b) {
  return a + b;
}

// Fonction qui salue
void saluer(String nom) {
  print('Bonjour $nom!');
}

void main() {
  print('=== RÉVISION FONCTIONS ===');
  
  // Utiliser les fonctions
  saluer('Marie');
  
  int resultat = additionner(10, 5);
  print('10 + 5 = $resultat');
}
```

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart revision_fonctions.dart`{{execute}}

**SI ÇA MARCHE :** ✅ Vous vous souvenez des fonctions !

---

## ÉTAPE 5 : Révision Rapide - Entrées/Sorties

### Test : Programme Interactif

`nano revision_io.dart`{{execute}}

**Tapez ce code :**

```dart
import 'dart:io';

void main() {
  print('=== RÉVISION I/O ===');
  print('Quel est votre prénom?');
  
  String? prenom = stdin.readLineSync();
  print('Bonjour $prenom!');
  
  print('Entrez un nombre:');
  String? texte = stdin.readLineSync();
  int nombre = int.parse(texte ?? '0');
  print('Le double de $nombre est ${nombre * 2}');
}
```

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart revision_io.dart`{{execute}}

**Interaction attendue :**
- Tapez votre prénom
- Tapez un nombre
- Le programme répond

**SI ÇA MARCHE :** ✅ Vous vous souvenez des I/O !

---

## Récapitulatif : Ce que Vous Savez Déjà

### Variables et Types
```dart
int age = 25;              // Nombre entier
double prix = 19.99;       // Nombre décimal
String nom = 'Julie';      // Texte
bool actif = true;         // Vrai/Faux
```

### Fonctions
```dart
int calculer(int a, int b) {
  return a + b;
}
```

### I/O
```dart
import 'dart:io';
String? reponse = stdin.readLineSync();
int nombre = int.parse(reponse ?? '0');
print('Résultat: $nombre');
```

---

## Nouveau cette Semaine : Les Conditions

### Qu'est-ce qu'une Condition ?

**Une condition permet au programme de CHOISIR quoi faire.**

**Analogie :**
```
SI il pleut
  ALORS prendre un parapluie
SINON
  laisser le parapluie
```

**En Dart :**
```dart
if (il_pleut) {
  prendreParapluie();
} else {
  laisserParapluie();
}
```

---

## Premier Exemple de Condition

### Programme Simple avec If/Else

`nano premier_if.dart`{{execute}}

**Tapez ce code :**

```dart
void main() {
  int age = 20;
  
  if (age >= 18) {
    print('Vous êtes majeur');
  } else {
    print('Vous êtes mineur');
  }
}
```

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart premier_if.dart`{{execute}}

**RÉSULTAT :**
```
Vous êtes majeur
```

**CE QUI SE PASSE :**
1. `age` vaut 20
2. Dart vérifie : `age >= 18` ?
3. 20 >= 18 → **VRAI** ✓
4. Donc : exécute le code dans `if`
5. Affiche "Vous êtes majeur"

**Essayez de changer `age` à 15 et réexécutez !**

---

## Anatomie d'une Condition

```dart
if (condition) {
  // Code si condition VRAIE
} else {
  // Code si condition FAUSSE
}
```

**Parties :**
- `if` - mot-clé (si)
- `(condition)` - expression qui donne `true` ou `false`
- `{ }` - bloc de code à exécuter
- `else` - mot-clé optionnel (sinon)

---

## Opérateurs de Comparaison de Base

| Opérateur | Signification | Exemple | Résultat |
|-----------|---------------|---------|----------|
| `==` | Égal | `5 == 5` | `true` |
| `!=` | Différent | `5 != 3` | `true` |
| `>` | Plus grand | `10 > 5` | `true` |
| `<` | Plus petit | `5 < 10` | `true` |
| `>=` | Plus grand ou égal | `10 >= 10` | `true` |
| `<=` | Plus petit ou égal | `5 <= 5` | `true` |

**⚠️ ATTENTION :**
- `==` (deux égals) = comparaison
- `=` (un égal) = assignation

```dart
if (age = 18) { ... }     // ❌ ERREUR ! Assignation
if (age == 18) { ... }    // ✅ CORRECT ! Comparaison
```

---

## Exercice Rapide : Vérificateur de Température

`nano temperature_check.dart`{{execute}}

**Créez un programme qui :**
- Vérifie si la température est >= 30
- Si oui : "Il fait très chaud !"
- Si non : "Température agréable"

**Code à compléter :**

```dart
void main() {
  int temperature = 35;
  
  if (temperature >= 30) {
    print('Il fait très chaud !');
  } else {
    print('Température agréable');
  }
}
```

1. `Ctrl+O` puis `Entrée`
2. `Ctrl+X`
3. `dart temperature_check.dart`{{execute}}

**Testez avec différentes valeurs de température !**

---

## Vocabulaire Important

### Termes à Connaître

**Condition :** Expression qui donne `true` ou `false`
```dart
age >= 18    // C'est une condition
```

**Bloc de code :** Code entre `{ }`
```dart
{
  print('Ceci');
  print('Est un bloc');
}
```

**Branche :** Chemin que peut prendre le programme
```dart
if (condition) {
  // Branche 1 (si vrai)
} else {
  // Branche 2 (si faux)
}
```

**Expression booléenne :** Expression qui donne un `bool`
```dart
5 > 3        // true
'a' == 'b'   // false
```

---

## Ce que Vous Allez Faire Cette Semaine

### Step 1 : If/Else Détaillé
- Conditions simples
- Conditions multiples (if/else if/else)
- Conditions imbriquées
- Nombreux exercices

### Step 2 : Opérateurs
- Tous les opérateurs de comparaison
- Opérateurs logiques (&&, ||, !)
- Combiner des conditions
- Tables de vérité

### Step 3 : Switch
- Syntaxe switch/case
- Quand l'utiliser
- Break et default
- Exemples pratiques

### Step 4 : Défi
- Système de notes complet
- Utilise tout ce que vous apprenez
- Projet guidé pas à pas

---

## Checklist : Êtes-vous Prêt ?

Avant de continuer, vérifiez :

- [ ] Dart installé et fonctionne
- [ ] Dossier semaine2_dart créé
- [ ] Révision variables : OK
- [ ] Révision fonctions : OK
- [ ] Révision I/O : OK
- [ ] Premier if/else testé

**TOUT EST ✓ ? Parfait ! Allons-y !** 🚀

---

## Message d'Encouragement

**Les conditions sont un tournant dans votre apprentissage !**

Avant : Vos programmes étaient "bêtes" (toujours la même chose)  
Après : Vos programmes seront "intelligents" (s'adaptent aux situations)

**C'est excitant ! Prenez votre temps et amusez-vous !** 🎉

---

## Prêt pour les Conditions Complètes ?

**Cliquez sur "Continuer" pour l'Étape 1 !** →

**Vous allez maîtriser if/else comme un pro !** 💪


