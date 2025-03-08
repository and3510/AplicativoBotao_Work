

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _backgroundColor = Colors.white;

  void _changeColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        title: Text(widget.title),
      ),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Pressione um botão para mudar a cor:'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => _changeColor(Colors.red),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text('Vermelho', style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => _changeColor(Colors.green),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text('Verde', style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => _changeColor(Colors.blue),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text('Azul', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

