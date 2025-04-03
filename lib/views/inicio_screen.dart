import 'package:flutter/material.dart';
import 'package:vdenis_flutter_002/views/acercade_screen.dart';
import 'package:vdenis_flutter_002/views/contacto_screen.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: AppBar(
      title: const Text('Inicio'),
      backgroundColor: Color.fromARGB(255, 215, 191, 120),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactoScreen(),)
                );
              }, 
              child: const Text('Contacto'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AcercaDeScreen(),)
                );
              }, 
              child: const Text('Acerca de'),
            )
          ]
        ),
      ),
    );
  }
}