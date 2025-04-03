import 'package:flutter/material.dart';

class ContactoScreen extends StatefulWidget {
  const ContactoScreen({super.key});

  @override
  _ContactoScreenState createState() => _ContactoScreenState();
}

class _ContactoScreenState extends State<ContactoScreen> {
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    // Imprime el mensaje ingresado antes de cerrar la pantalla
    print('Mensaje ingresado: ${_messageController.text}');
    _messageController.dispose(); // Libera el controlador de texto
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacto'),
        backgroundColor: const Color.fromARGB(255, 215, 191, 120),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresa a la pantalla anterior
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Contacto',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            const Text(
              'Escribe tu mensaje:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _messageController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Escribe tu mensaje aquí...',
              ),
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}