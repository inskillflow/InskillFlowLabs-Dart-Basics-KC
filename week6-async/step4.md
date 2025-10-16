# Étape 4 : Défi - Client API Complet

`cd /root/semaine6_dart`{{execute}}

## Projet : Client API avec Cache

`nano api_client.dart`{{execute}}

```dart
class ApiClient {
  Map<int, Map<String, dynamic>> _cache = {};
  
  Future<Map<String, dynamic>> getUtilisateur(int id) async {
    // Vérifier cache
    if (_cache.containsKey(id)) {
      print('Depuis cache...');
      return _cache[id]!;
    }
    
    // Simuler appel API
    print('Appel API...');
    await Future.delayed(Duration(seconds: 2));
    
    Map<String, dynamic> data = {
      'id': id,
      'nom': 'User $id',
      'email': 'user$id@mail.com',
    };
    
    _cache[id] = data;
    return data;
  }
}

void main() async {
  ApiClient api = ApiClient();
  
  print('Premier appel:');
  var user1 = await api.getUtilisateur(1);
  print(user1);
  
  print('\nDeuxième appel (même ID):');
  var user2 = await api.getUtilisateur(1);
  print(user2);
}
```

Ctrl+O, Entrée, Ctrl+X  
`dart api_client.dart`{{execute}}

**Premier appel : 2 secondes (API)**  
**Deuxième appel : Instant (cache)**

**POO + Async maîtrisés. Prêt pour Flutter.**

**Cliquez sur "Continuer".**

