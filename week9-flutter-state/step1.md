# Étape 1 : setState Avancé et Gestion d'État

## Gérer Plusieurs Variables d'État

```dart
class MaPage extends StatefulWidget {
  @override
  State<MaPage> createState() => _MaPageState();
}

class _MaPageState extends State<MaPage> {
  int compteur = 0;
  String texte = '';
  bool estActif = false;
  
  void toutModifier() {
    setState(() {
      compteur++;
      texte = 'Cliqué $compteur fois';
      estActif = !estActif;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$compteur'),
            Text(texte),
            Text('Actif: $estActif'),
            ElevatedButton(
              onPressed: toutModifier,
              child: Text('Modifier'),
            ),
          ],
        ),
      ),
    );
  }
}
```

**Plusieurs variables dans setState().**

**Cliquez sur "Continuer".**

