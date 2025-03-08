import 'package:colorchange/MyHomePage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: 'Flutter Botão Cores',
      home: const MyHomePage(title: 'Flutter para Mudar Cor'),
    );
  }
}