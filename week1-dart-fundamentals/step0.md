# Étape 0 : Installer Dart sur Linux

## Bienvenue dans l'Installation de Dart! 🎯

Cette étape est **OBLIGATOIRE** avant de programmer en Dart.

**Analogie simple:**
Installer Dart, c'est comme installer un four avant de cuisiner.
- Sans four → impossible de cuisiner
- Sans Dart → impossible de programmer en Dart!

**Durée:** ~10 minutes (14 commandes à exécuter)

---

## Qu'est-ce qu'on va installer?

### Dart SDK (Software Development Kit)

**En français:** "Kit de Développement Logiciel"

**C'est une boîte à outils qui contient:**
- **dart** - Pour exécuter vos programmes
- **dart compile** - Pour créer des exécutables
- **dart format** - Pour rendre votre code joli
- **dart analyze** - Pour détecter les erreurs
- Et plein d'autres outils!

---

## Pourquoi c'est plus long que Python?

Python est **déjà installé** sur la plupart des systèmes Linux.

Dart, lui, doit être **téléchargé et installé**.

**Mais c'est facile!** Il suffit de suivre les 14 commandes ci-dessous!

---

## IMPORTANT: Commandes Interactives

Vous allez voir des commandes avec un fond gris et un symbole ▶️.

**VOUS N'AVEZ PAS BESOIN DE LES TAPER!**

**Cliquez simplement dessus** → La commande s'exécute automatiquement!

---

## Les 14 Commandes d'Installation

---

### Commande 1 : Vérifier que vous êtes connecté à Internet

`ping -c 2 google.com`{{execute}}

**CE QUI SE PASSE:**
- On teste la connexion Internet
- On envoie 2 "pings" à Google
- Si ça marche, vous verrez "2 packets transmitted, 2 received"

**VÉRIFICATION:**
✅ Vous devez voir: `2 packets received`
❌ Si erreur: Vérifiez votre connexion

---

### Commande 2 : Mettre à jour la liste des paquets disponibles

`apt-get update -y`{{execute}}

**CE QUI SE PASSE:**
- Linux met à jour sa "liste de courses"
- Il vérifie quels logiciels sont disponibles
- Cela prend ~30 secondes

**ANALOGIE:**
C'est comme vérifier le catalogue d'un magasin avant d'acheter.

**PATIENCE:** Cette commande peut prendre un moment!

---

### Commande 3 : Installer les outils nécessaires

`apt-get install -y apt-transport-https wget gnupg`{{execute}}

**CE QUI SE PASSE:**
On installe 3 outils importants:
- **apt-transport-https** - Pour télécharger via HTTPS (sécurisé)
- **wget** - Pour télécharger des fichiers
- **gnupg** - Pour vérifier les signatures (sécurité)

**POURQUOI?**
Ces outils sont nécessaires pour installer Dart en toute sécurité.

**DURÉE:** ~1 minute

---

### Commande 4 : Télécharger la clé de sécurité de Google

`wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor -o /usr/share/keyrings/dart.gpg`{{execute}}

**CE QUI SE PASSE:**
- On télécharge une "clé de sécurité" de Google
- Cette clé prouve que Dart vient vraiment de Google
- Pas d'un pirate informatique!

**ANALOGIE:**
C'est comme vérifier le sceau de sécurité sur un médicament.

**RÉSULTAT ATTENDU:**
Aucun message d'erreur = c'est bon! ✓

---

### Commande 5 : Ajouter le dépôt Dart à la liste des sources

`echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | tee /etc/apt/sources.list.d/dart_stable.list`{{execute}}

**CE QUI SE PASSE:**
- On dit à Linux: "Dart est disponible ici!"
- Linux ajoute cette adresse à sa liste
- Maintenant Linux sait où trouver Dart

**ANALOGIE:**
C'est comme ajouter l'adresse d'un nouveau magasin dans votre GPS.

**RÉSULTAT:**
Vous verrez la ligne qu'on vient d'ajouter s'afficher.

---

### Commande 6 : Mettre à jour la liste (maintenant avec Dart!)

`apt-get update -y`{{execute}}

**CE QUI SE PASSE:**
- Linux met à jour sa liste ENCORE
- Maintenant, il voit Dart dans la liste!
- Il sait qu'il peut installer Dart

**POURQUOI ENCORE?**
Parce qu'on vient d'ajouter une nouvelle source (Dart).

**DURÉE:** ~20 secondes

---

### Commande 7 : INSTALLER DART! 🎉

`apt-get install -y dart`{{execute}}

**CE QUI SE PASSE:**
- Linux télécharge Dart depuis Google
- Linux installe Dart sur le système
- Cela prend ~1-2 minutes

**C'EST LA COMMANDE LA PLUS IMPORTANTE!**

**PATIENCE:**
Cette commande télécharge ~150 MB de données.

**RÉSULTAT ATTENDU:**
À la fin, vous verrez quelque chose comme:
```
Setting up dart (x.x.x-x) ...
```

**SI VOUS VOYEZ ÇA:** 🎉 Dart est installé!

---

### Commande 8 : Ajouter Dart au PATH (très important!)

`export PATH="$PATH:/usr/lib/dart/bin"`{{execute}}

**CE QUI SE PASSE:**
- On dit à Linux: "Dart est dans ce dossier"
- Maintenant, quand vous tapez `dart`, Linux sait où chercher

**ANALOGIE:**
C'est comme mettre un raccourci sur votre bureau.

**Sans cette commande:** Linux ne trouvera pas `dart`!

---

### Commande 9 : Rendre cette modification permanente

`echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.bashrc`{{execute}}

**CE QUI SE PASSE:**
- On écrit la commande précédente dans un fichier spécial
- Ce fichier s'exécute à chaque démarrage
- Ainsi, Dart sera TOUJOURS disponible

**ANALOGIE:**
C'est comme enregistrer un favori dans votre navigateur.

---

### Commande 10 : Vérifier que Dart est bien installé! ✅

`dart --version`{{execute}}

**CE QUI SE PASSE:**
On demande à Dart: "Quelle est ta version?"

**RÉSULTAT ATTENDU:**
```
Dart SDK version: 3.x.x (stable)
```

**SI VOUS VOYEZ ÇA:** 🎊 **BRAVO! DART EST INSTALLÉ!**

**SI ERREUR "command not found":**
- Attendez quelques secondes
- Réexécutez la commande 8
- Puis réexécutez la commande 10

---

### Commande 11 : Créer votre dossier de projet

`mkdir mon_projet_dart`{{execute}}

**CE QUI SE PASSE:**
- On crée un nouveau dossier
- Nom: "mon_projet_dart"
- C'est là qu'on va mettre tous nos programmes!

**ANALOGIE:**
C'est comme créer un nouveau dossier pour ranger vos documents.

---

### Commande 12 : Aller dans ce dossier

`cd mon_projet_dart`{{execute}}

**CE QUI SE PASSE:**
- On "entre" dans le dossier
- Maintenant, tout ce qu'on crée ira dans ce dossier

**VÉRIFICATION:**
Votre ligne de commande devrait maintenant montrer:
```
root@host:~/mon_projet_dart#
```

**Vous voyez "mon_projet_dart"?** ✓ Parfait!

---

### Commande 13 : Créer votre premier programme Dart! 🎯

`nano premier.dart`{{execute}}

**CE QUI SE PASSE:**
- L'éditeur **nano** s'ouvre
- L'écran devient bleu/noir
- Vous voyez "GNU nano" en haut
- Vous pouvez maintenant taper!

**IMPORTANT:** Ne fermez PAS encore nano! On va taper du code!

---

## ACTION MANUELLE REQUISE : Taper Votre Premier Code Dart!

**Dans nano qui est maintenant ouvert, TAPEZ ce code:**

```dart
void main() {
  print('Bonjour Dart!');
  print('Je viens d\'installer Dart avec succès!');
}
```

**ATTENTION AUX DÉTAILS:**
- **void** - tout en minuscules
- **main** - tout en minuscules
- **( )** - Parenthèses autour de rien
- **{ }** - Accolades pour délimiter le code
- **print** - tout en minuscules
- **' '** - Guillemets simples autour du texte
- **;** - Point-virgule à la fin de CHAQUE instruction
- **\\** - Backslash avant l'apostrophe dans "d'installer"

**CONSEILS:**
- Tapez ligne par ligne
- Respectez l'indentation (2 espaces)
- Vérifiez chaque caractère

---

## Sauvegarder et Quitter nano

### ACTION 1 : Sauvegarder

**Appuyez sur:** `Ctrl + O` (la lettre O comme Oscar)

**CE QUI SE PASSE:**
- En bas, vous voyez: "File Name to Write: premier.dart"
- C'est le nom du fichier

**Appuyez sur:** `Entrée`

**RÉSULTAT:**
Vous voyez: `[ Wrote 4 lines ]`

**SI VOUS VOYEZ ÇA:** ✓ Le fichier est sauvegardé!

---

### ACTION 2 : Quitter nano

**Appuyez sur:** `Ctrl + X`

**CE QUI SE PASSE:**
- nano se ferme
- Vous revenez au terminal
- Vous voyez votre ligne de commande normale

**AIDE-MÉMOIRE:**
- `Ctrl + O` = **O**utput (sauvegarder)
- `Ctrl + X` = e**X**it (quitter)

**Astuce:** En bas de nano, `^` signifie `Ctrl`

---

### Commande 14 : EXÉCUTER VOTRE PREMIER PROGRAMME! 🚀

`dart premier.dart`{{execute}}

**CE QUI SE PASSE:**
- Dart lit votre fichier `premier.dart`
- Dart exécute le code
- Dart affiche le résultat

**RÉSULTAT ATTENDU:**
```
Bonjour Dart!
Je viens d'installer Dart avec succès!
```

---

## 🎉 FÉLICITATIONS! 🎉

### Vous venez de:

✅ Installer Dart complètement
✅ Configurer votre environnement
✅ Créer votre premier programme
✅ Exécuter du code Dart
✅ Afficher des messages

**VOUS ÊTES OFFICIELLEMENT UN PROGRAMMEUR DART!**

---

## Comprendre ce que vous avez fait

### Le code Dart que vous avez tapé:

```dart
void main() {
  print('Bonjour Dart!');
  print('Je viens d\'installer Dart avec succès!');
}
```

### Explication ligne par ligne:

**Ligne 1:** `void main() {`
- **void** = "ne retourne rien"
- **main** = nom de la fonction principale
- **()** = pas de paramètres
- **{** = début du bloc de code

**IMPORTANT:** En Dart, TOUT programme commence par `main()` !

**Ligne 2:** `print('Bonjour Dart!');`
- **print** = fonction pour afficher du texte
- **' '** = délimitent le texte (string)
- **;** = fin de l'instruction (OBLIGATOIRE!)

**Ligne 3:** Même chose que ligne 2
- **\\'** = apostrophe échappée (pour qu'elle s'affiche)

**Ligne 4:** `}`
- **}** = fin du bloc de code

---

## Récapitulatif : Commandes de Base

### Pour écrire un programme Dart:

**1. Créer/éditer un fichier:**
```bash
nano nomfichier.dart
```

**2. Taper le code dans nano**

**3. Sauvegarder:**
- `Ctrl + O`
- `Entrée`

**4. Quitter:**
- `Ctrl + X`

**5. Exécuter:**
```bash
dart nomfichier.dart
```

**MÉMORISEZ CE WORKFLOW!** Vous allez le faire souvent!

---

## ⚠️ Erreurs Courantes et Solutions

### Erreur #1: "dart: command not found"

**CAUSE:** Dart n'est pas dans le PATH

**SOLUTION:**
```bash
export PATH="$PATH:/usr/lib/dart/bin"
dart --version
```

---

### Erreur #2: "Error: Expected ';' after this."

**CAUSE:** Vous avez oublié le point-virgule `;`

**SOLUTION:**
- Rouvrir le fichier avec `nano`
- Ajouter `;` à la fin de chaque instruction

---

### Erreur #3: "Error: Expected '{' before this."

**CAUSE:** Vous avez oublié une accolade

**SOLUTION:**
- Vérifier que chaque `{` a son `}`
- Compter: doit être le même nombre!

---

### Erreur #4: "Error: Method not found: 'Main'."

**CAUSE:** Vous avez écrit `Main` au lieu de `main`

**RÈGLE:** En Dart, `main` est TOUJOURS en minuscules!

---

## Aide-Mémoire Visuel

### Structure d'un Programme Dart:

```dart
void main() {          ← Fonction principale (OBLIGATOIRE)
  print('texte');      ← Instruction 1 (avec ;)
  print('autre');      ← Instruction 2 (avec ;)
}                      ← Fin de la fonction
```

**RÈGLES:**
1. `main()` est obligatoire
2. Les accolades `{ }` délimitent le code
3. Chaque instruction se termine par `;`
4. Les textes sont entre guillemets `' '` ou `" "`

---

## Conseil de Professeur Expérimenté

### Pourquoi le point-virgule `;` est-il obligatoire?

**Réponse:** Pour éviter l'ambiguïté!

**Exemple sans `;` (ambigu):**
```
a = b + c
d = e + f
```

Dart pourrait comprendre:
- `a = b + c` puis `d = e + f` ✓
- OU `a = b + c d = e + f` ✗ (erreur!)

**Avec `;` (clair):**
```
a = b + c;
d = e + f;
```

Aucune ambiguïté possible!

**Le `;` dit à Dart:** "Cette instruction est terminée!"

---

## Différences avec Python (si vous connaissez)

| Aspect | Python | Dart |
|--------|--------|------|
| Point-virgule | ❌ Pas nécessaire | ✅ OBLIGATOIRE |
| Fonction principale | ❌ Pas obligatoire | ✅ `main()` obligatoire |
| Accolades | ❌ Indentation | ✅ `{ }` obligatoires |
| Affichage | `print()` | `print()` (pareil!) |
| Types | Optionnels | Optionnels mais recommandés |

**Dart est plus strict que Python** = moins de bugs!

---

## Vérification Finale : Tout est Prêt?

Testez ces commandes pour vérifier:

**1. Dart est installé?**
`dart --version`{{execute}}

Vous devez voir: `Dart SDK version: 3.x.x`

**2. Vous êtes dans le bon dossier?**
`pwd`{{execute}}

Vous devez voir: `/root/mon_projet_dart`

**3. Votre fichier existe?**
`ls premier.dart`{{execute}}

Vous devez voir: `premier.dart`

**TOUT EST BON?** 🎊 **Parfait! Vous êtes prêt pour la suite!**

---

## Ce que vous avez appris

### Compétences Techniques:
✅ Installer un SDK (Dart)
✅ Configurer un environnement de développement
✅ Utiliser le terminal Linux
✅ Utiliser nano (éditeur de texte)
✅ Créer un fichier `.dart`
✅ Exécuter un programme Dart
✅ Comprendre `main()`
✅ Utiliser `print()`

### Compétences Conceptuelles:
✅ Comprendre ce qu'est un SDK
✅ Comprendre la syntaxe de base de Dart
✅ Comprendre la structure d'un programme
✅ Savoir débugger des erreurs simples

**C'EST ÉNORME POUR UNE PREMIÈRE ÉTAPE!**

---

## Prêt pour la Vraie Programmation?

Maintenant que Dart est installé, vous allez apprendre:
- **Étape 1:** Variables et types de données
- **Étape 2:** Fonctions
- **Étape 3:** Entrées/sorties interactives
- **Étape 4:** Projet pratique complet

**Le plus dur est fait! L'installation!**

**Maintenant, on va s'amuser!** 🎮

---

## Note Importante pour les Étapes Suivantes

**À CHAQUE nouvelle session** (si vous fermez ce lab et revenez plus tard):

Vous devrez peut-être réexécuter:
```bash
export PATH="$PATH:/usr/lib/dart/bin"
cd mon_projet_dart
```

**NE VOUS INQUIÉTEZ PAS!** On vous le rappellera! 😊

---

## Cliquez sur "Continuer" pour l'Étape 1! →

**Étape 1: Variables et Types de Données** vous attend!

**Vous allez apprendre à stocker des informations en mémoire!** 📦


