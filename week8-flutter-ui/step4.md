# Étape 4 : Projet - Page de Profil Complète

## Code Complet

**Exécutez dans DartPad :**

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: PageProfil()));

class PageProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon Profil'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.teal, Colors.teal.shade700],
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: Text('MD', style: TextStyle(fontSize: 40, color: Colors.teal)),
                  ),
                  SizedBox(height: 15),
                  Text('Marie Dupont', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                  Text('Développeuse Flutter', style: TextStyle(fontSize: 16, color: Colors.white70)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  InfoTile(icon: Icons.email, label: 'Email', value: 'marie@email.com'),
                  InfoTile(icon: Icons.phone, label: 'Téléphone', value: '06 12 34 56 78'),
                  InfoTile(icon: Icons.location_on, label: 'Ville', value: 'Paris, France'),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Modifier le profil'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  
  InfoTile({required this.icon, required this.label, required this.value});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 1),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal, size: 30),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: TextStyle(fontSize: 12, color: Colors.grey)),
              Text(value, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ],
          ),
        ],
      ),
    );
  }
}
```

**Page de profil professionnelle.**

**Cliquez sur "Continuer".**

