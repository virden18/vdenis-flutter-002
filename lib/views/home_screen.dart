import 'package:flutter/material.dart';
import 'package:vdenis_flutter_002/views/stateful_widget.dart';
import 'package:vdenis_flutter_002/views/stateless_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless vs Stateful'),
        backgroundColor: const Color.fromARGB(255, 215, 191, 120),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyStatelessWidget()),
                );
              },
              child: const Text('Ir a StatelessWidget'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterScreen()),
                );
              },
              child: const Text('Ir a StatefulWidget'),
            ),
          ],
        ),
      ),
    );
  }
}
