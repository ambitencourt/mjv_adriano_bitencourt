import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adriano Bitencourt'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Card(
              margin: EdgeInsets.all(10),
            ),
            const SizedBox(height: 16),
            const Text(
              'Minhas estatísticas',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Icon(Icons.list),
                SizedBox(width: 8),
                Text('Concluídas: '),
                Text('0'),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            const Text(
              'Minhas estatísticas',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Icon(Icons.list),
                SizedBox(width: 8),
                Text('Concluídas: '),
                Text('0'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
