import 'package:flutter/material.dart';
import 'package:vintefilmes/modelviewhome.dart';
import 'modelviewhome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('20 Filmes TMDB'),
        backgroundColor: Color.fromARGB(255, 32, 64, 81),
      ),
      body: internettest(),
      backgroundColor: Color.fromARGB(255, 228, 227, 227),
    );
  }
}

Widget internettest() {
  var teste;
  try {
    teste = modelView();
  } catch (e) {
    teste = Center(
      child: Text('Erro de conexexão'),
    );
  }
  return teste;
}
