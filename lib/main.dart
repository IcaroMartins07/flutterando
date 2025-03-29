import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exemplo Widgets')),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 100.0,
                  padding: const EdgeInsets.all(16.0),
                  child: const Text('1° Lista'),
                ),
                Container(
                  width: 100.0,
                  padding: const EdgeInsets.all(16.0),
                  child: const Text('2° Lista'),
                ),
                Container(
                  width: 100.0,
                  padding: const EdgeInsets.all(16.0),
                  child: const Text('3° Lista'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.shopping_cart_checkout_sharp),
                  title: const Text('Item 01'),
                  tileColor: Colors.grey[200],
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart_checkout_sharp),
                  title: const Text('Item 02'),
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart_checkout_sharp),
                  title: const Text('Item 03'),
                  tileColor: Colors.grey[200],
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart_checkout_sharp),
                  title: const Text('Item 04'),
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart_checkout_sharp),
                  title: const Text('Item 05'),
                  tileColor: Colors.grey[200],
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart_checkout_sharp),
                  title: const Text('Item 06'),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: const Text('Ir para a Segunda Tela'),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Segunda Tela')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Enviar')),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
