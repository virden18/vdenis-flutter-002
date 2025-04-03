import 'package:flutter/material.dart';
import 'package:vdenis_flutter_002/views/acercade_screen.dart';
import 'package:vdenis_flutter_002/views/contacto_screen.dart';

class InicioScreen extends StatefulWidget {
  const InicioScreen({super.key});

  @override
  _InicioScreenState createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    // Aquí puedes inicializar cualquier cosa que necesites al cargar la pantalla
    print('initState: La pantalla Inicio ha sido inicializada.');
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
            Text(
              'Haz presionado el botón $_counter veces',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          )
        ]
      ),
    );
  }
}