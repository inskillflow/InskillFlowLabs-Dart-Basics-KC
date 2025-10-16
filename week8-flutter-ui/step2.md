# Étape 2 : ListView et ScrollView

## ListView : Listes Scrollables

```dart
ListView(
  children: [
    ListTile(title: Text('Item 1')),
    ListTile(title: Text('Item 2')),
    ListTile(title: Text('Item 3')),
  ],
)
```

## ListView.builder : Pour Grandes Listes

```dart
ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text(items[index]),
    );
  },
)
```

## Exercice : Liste de Contacts

**Exécutez dans DartPad :**

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ListeContacts()));

class ListeContacts extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {'nom': 'Marie Dupont', 'tel': '06 12 34 56 78'},
    {'nom': 'Pierre Martin', 'tel': '06 98 76 54 32'},
    {'nom': 'Julie Bernard', 'tel': '06 55 44 33 22'},
    {'nom': 'Thomas Petit', 'tel': '06 11 22 33 44'},
    {'nom': 'Sophie Durand', 'tel': '06 99 88 77 66'},
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mes Contacts')),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(contacts[index]['nom']![0]),
              ),
              title: Text(contacts[index]['nom']!),
              subtitle: Text(contacts[index]['tel']!),
              trailing: Icon(Icons.phone),
            ),
          );
        },
      ),
    );
  }
}
```

**Liste scrollable de contacts.**

**Cliquez sur "Continuer".**

