# Étape 0 : Introduction à la POO

`dart --version && mkdir -p /root/semaine5_dart && cd /root/semaine5_dart`{{execute}}

## Qu'est-ce qu'une Classe ?

**Classe = Plan / Modèle**  
**Objet = Instance créée à partir du plan**

Analogie : 
- Classe = Plan de maison
- Objet = Maison construite

## Premier Exemple

`nano premiere_classe.dart`{{execute}}

```dart
// Définir une classe
class Personne {
  String nom;
  int age;
  
  Personne(this.nom, this.age);
  
  void sePresenter() {
    print('Je m\'appelle $nom, j\'ai $age ans.');
  }
}

void main() {
  // Créer un objet
  Personne marie = Personne('Marie', 25);
  marie.sePresenter();
  
  Personne pierre = Personne('Pierre', 30);
  pierre.sePresenter();
}
```

Ctrl+O, Entrée, Ctrl+X  
`dart premiere_classe.dart`{{execute}}

**Résultat :**
```
Je m'appelle Marie, j'ai 25 ans.
Je m'appelle Pierre, j'ai 30 ans.
```

**Cliquez sur "Continuer".**

