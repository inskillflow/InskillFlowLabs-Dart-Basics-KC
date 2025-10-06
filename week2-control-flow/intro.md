# Bienvenue dans Dart Semaine 2 - Structures de Contrôle ! 🎯

## Félicitations pour Avoir Terminé la Semaine 1 ! 🎉

Vous savez maintenant :
- ✅ Installer et utiliser Dart
- ✅ Créer des variables et types
- ✅ Créer des fonctions
- ✅ Interagir avec l'utilisateur

**C'est une base solide ! Maintenant, on passe au niveau supérieur !** 🚀

---

## Cette Semaine : Apprendre à Prendre des Décisions

### Imaginez un Programme qui :

**Sans conditions :**
```
Bonjour !
Voici votre résultat.
Au revoir !
```
→ Toujours le même, ennuyeux, pas intelligent

**Avec conditions :**
```
SI l'utilisateur a moins de 18 ans
  → Afficher "Vous êtes mineur"
SINON
  → Afficher "Vous êtes majeur"

SI la note est >= 10
  → Afficher "Réussi !"
SINON
  → Afficher "Échec"
```
→ **Intelligent, adaptatif, utile !**

**Les conditions rendent vos programmes INTELLIGENTS !** 🧠

---

## Analogie Simple

### La Vie Réelle

**Vous utilisez des conditions tous les jours :**

☔ **S'il pleut** → Prendre un parapluie  
🌞 **Sinon** → Laisser le parapluie à la maison

🚦 **Si le feu est rouge** → S'arrêter  
🚦 **Si le feu est vert** → Avancer

💰 **Si j'ai assez d'argent** → Acheter le produit  
💰 **Sinon** → Économiser encore

### En Programmation

**C'est exactement pareil !**

```dart
if (il_pleut) {
  prendreParapluie();
} else {
  laisserParapluie();
}
```

**Vos programmes vont pouvoir "réfléchir" et s'adapter !** 🤔

---

## Ce que Vous Allez Apprendre Cette Semaine

### Étape 0 : Rappel et Préparation ⚙️
- Révision rapide de la Semaine 1
- Réinstaller Dart si nécessaire
- Préparer l'environnement

**Durée :** ~5 minutes

---

### Étape 1 : If/Else - Prendre des Décisions 🔀
- Structure if/else
- Conditions simples
- If/else if/else multiples
- Conditions imbriquées
- Opérateurs de comparaison de base

**Durée :** ~20 minutes

---

### Étape 2 : Opérateurs de Comparaison et Logiques 🔧
- Tous les opérateurs de comparaison (==, !=, <, >, <=, >=)
- Opérateurs logiques (&&, ||, !)
- Combiner plusieurs conditions
- Priorité des opérateurs
- Tables de vérité

**Durée :** ~20 minutes

---

### Étape 3 : Switch - Choix Multiples 🎛️
- Structure switch/case
- Quand utiliser switch vs if/else
- Cas multiples
- Case par défaut
- Break et fall-through

**Durée :** ~15 minutes

---

### Étape 4 : Défi - Système de Notes Interactif 🏆
**Projet complet !**

Créez un système qui :
- Demande la note de l'étudiant
- Calcule la mention (Très bien, Bien, Assez bien, etc.)
- Donne des conseils personnalisés
- Vérifie si l'étudiant peut passer
- Affiche des statistiques

**Durée :** ~25 minutes

---

## À Qui S'Adresse Cette Semaine ?

✅ **Vous avez terminé la Semaine 1** (obligatoire !)  
✅ Vous connaissez les variables et fonctions  
✅ Vous voulez rendre vos programmes plus intelligents  
✅ Vous êtes prêt pour des concepts plus avancés  

**Si vous n'avez PAS fait la Semaine 1 : STOP !**  
Faites d'abord la Semaine 1, sinon vous serez perdu ! ⚠️

---

## Nouveaux Concepts Cette Semaine

### 1. Conditions (`if`/`else`)
```dart
if (condition) {
  // Code si vrai
} else {
  // Code si faux
}
```

### 2. Opérateurs de Comparaison
```dart
age == 18    // Égal
age != 18    // Différent
age < 18     // Plus petit
age > 18     // Plus grand
age <= 18    // Plus petit ou égal
age >= 18    // Plus grand ou égal
```

### 3. Opérateurs Logiques
```dart
age >= 18 && haPermis    // ET (les deux conditions)
age < 18 || isEmancipé   // OU (au moins une condition)
!estMineur               // NON (inverse)
```

### 4. Switch
```dart
switch (jour) {
  case 'lundi':
    print('Début de semaine');
    break;
  case 'vendredi':
    print('Presque le weekend!');
    break;
  default:
    print('Jour normal');
}
```

---

## Exemples de Programmes que Vous Créerez

### Programme 1 : Vérificateur d'Âge
```
Entrez votre âge: 17
→ Vous êtes mineur
→ Vous ne pouvez pas voter
→ Plus que 1 an avant la majorité !
```

### Programme 2 : Calculateur de Mention
```
Entrez votre note: 16
→ Note: 16/20
→ Mention: Très bien
→ Félicitations ! Excellent travail !
```

### Programme 3 : Système de Connexion
```
Nom d'utilisateur: admin
Mot de passe: 1234
→ Accès autorisé ! Bienvenue admin !
```

### Programme 4 : Convertisseur de Saison
```
Quel mois? (1-12): 7
→ Mois: Juillet
→ Saison: Été
→ Période de vacances !
```

**Tous ces programmes utilisent des conditions !** 🎯

---

## Pourquoi les Conditions Sont Essentielles ?

### Sans Conditions
Vos programmes sont **linéaires** :
```
Étape 1 → Étape 2 → Étape 3 → Fin
```
Toujours le même chemin, ennuyeux !

### Avec Conditions
Vos programmes sont **adaptatifs** :
```
              → Chemin A (si condition 1)
Début → Choix → Chemin B (si condition 2)
              → Chemin C (sinon)
```
Différents chemins selon les situations !

**C'est ce qui rend les programmes UTILES dans la vraie vie !** 💡

---

## Applications Réelles

### Où Utilise-t-on les Conditions ?

**🏦 Banque :**
- SI solde > 0 → Autoriser le retrait
- SI solde < 0 → Bloquer le compte

**🛒 E-commerce :**
- SI panier > 50€ → Livraison gratuite
- SI article en stock → Permettre l'achat

**🎮 Jeux Vidéo :**
- SI vie > 0 → Continuer à jouer
- SI score > highscore → Nouveau record

**🚗 GPS :**
- SI embouteillage → Proposer itinéraire alternatif
- SI vitesse > limite → Alerter

**PARTOUT !** Les conditions sont au cœur de TOUS les programmes ! 🌍

---

## Compétences que Vous Allez Acquérir

### À la Fin de Cette Semaine, Vous Saurez :

**Techniques :**
✅ Écrire des conditions if/else  
✅ Utiliser tous les opérateurs de comparaison  
✅ Combiner des conditions avec &&, ||, !  
✅ Utiliser switch pour des choix multiples  
✅ Imbriquer des conditions  
✅ Débugger des erreurs de logique  

**Conceptuelles :**
✅ Penser de manière algorithmique  
✅ Décomposer un problème en conditions  
✅ Choisir la bonne structure (if vs switch)  
✅ Anticiper tous les cas possibles  
✅ Créer des programmes adaptatifs  

---

## Règles d'Or pour Cette Semaine

### ✅ FAIRE :
- Tester tous les cas possibles
- Vérifier chaque condition
- Utiliser des noms de variables clairs
- Indenter correctement le code
- Penser à tous les scénarios

### ❌ NE PAS FAIRE :
- Oublier les accolades `{ }`
- Confondre `=` (assignation) et `==` (comparaison)
- Oublier les cas limites (0, négatifs, etc.)
- Imbriquer trop de conditions (max 3 niveaux)

---

## Temps Total Estimé

**⏱️ Durée totale :** ~1h30

- Étape 0 : 5 min (rappel)
- Étape 1 : 20 min (if/else)
- Étape 2 : 20 min (opérateurs)
- Étape 3 : 15 min (switch)
- Étape 4 : 25 min (défi final)
- Conclusion : 5 min

**Vous pouvez faire tout d'un coup ou étape par étape !**

---

## Pré-requis Techniques

### Ce que Vous DEVEZ Savoir :

✅ Créer des variables (`int`, `String`, `bool`, etc.)  
✅ Créer des fonctions  
✅ Utiliser `print()` et `stdin.readLineSync()`  
✅ Convertir les types avec `int.parse()`  
✅ Utiliser `nano` pour éditer  
✅ Exécuter un programme avec `dart`  

**Si vous ne savez pas faire ça : retournez à la Semaine 1 ! ⚠️**

---

## Message de Votre Instructeur

Bienvenue dans la Semaine 2 ! 👋

**Cette semaine est CRUCIALE !**

Les conditions sont la **première étape vers la vraie programmation**.

Jusqu'à maintenant, vos programmes étaient des "recettes" :
- Faire A
- Faire B
- Faire C

**Maintenant, ils vont devenir "intelligents" :**
- SI situation X → Faire A
- SINON → Faire B

**C'est une révolution dans votre façon de programmer !** 💥

**Mon conseil #1 :** Prenez votre temps pour bien comprendre.  
**Mon conseil #2 :** Testez TOUS les cas (vrai, faux, limite).  
**Mon conseil #3 :** Dessinez des diagrammes si ça aide !  

**Vous êtes prêt ? Let's go !** 🚀

---

## Ce qui Vous Attend Après

### Semaine 3 : Collections (Lists, Maps, Sets)
- Stocker plusieurs valeurs
- Manipuler des listes
- Parcourir des données

### Semaine 4 : Boucles (For, While)
- Répéter des actions
- Itérer sur des collections
- Automatiser des tâches

**Chaque semaine construit sur la précédente !**

---

## Environnement de Travail

Vous êtes sur **KillerCoda** :
- **Panneau gauche :** Instructions (ce texte)
- **Panneau droit :** Terminal Linux
- **Éditeur :** `nano` (ligne de commande)

**Rappel nano :**
- `Ctrl+O` puis `Entrée` = Sauvegarder
- `Ctrl+X` = Quitter

---

## Fichiers d'Exemple Disponibles

Trois fichiers pré-créés pour vous aider :
- `example_conditions.dart` - Exemples if/else
- `example_switch.dart` - Exemples switch
- `example_logique.dart` - Opérateurs logiques

**Pour les exécuter :**
```bash
dart /root/example_conditions.dart
```

---

## Structure de Chaque Étape

Chaque step suit le même format :

1. **Théorie** - Concept expliqué simplement
2. **Syntaxe** - Comment l'écrire
3. **Exemples** - Cas concrets
4. **Exercices** - Pratique guidée
5. **Erreurs** - Pièges à éviter
6. **Récapitulatif** - Ce qu'on a appris

**Progression logique du simple au complexe !**

---

## Prêt à Commencer ?

Vous allez apprendre à créer des programmes qui :
- **Pensent** (évaluent des conditions)
- **Décident** (choisissent un chemin)
- **S'adaptent** (réagissent différemment)

**C'est excitant ! 🎉**

**Cliquez sur "Continuer" pour commencer !** →


