import 'package:flutter/material.dart';
import 'package:vdenis_flutter_002/views/inicio_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicio',
      theme: ThemeData(colorScheme : ColorScheme.fromSeed(seedColor:Color.fromARGB(255, 215, 191, 120))),
      home: const InicioScreen(),
    );
  }
}

