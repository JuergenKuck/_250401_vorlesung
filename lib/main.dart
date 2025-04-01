import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  // Attribute
  // bisher keine
  //
  // Kontruktor
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Aufgabe1'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              MyHelloText(),
              MyContainerRow(),
              MyIconRow(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHelloText extends StatelessWidget {
  const MyHelloText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 16),
      Text(
        'Hallo App Akademie!',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      )
    ]);
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: FilledButton(
          onPressed: () {},
          child: Text(text),
        ),
      ),
    );
  }
}

class MyContainerRow extends StatelessWidget {
  const MyContainerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(spacing: 8, children: [
      MyContainer(text: 'A', color: Colors.red),
      MyContainer(text: 'B', color: Colors.green),
      MyContainer(text: 'C', color: Colors.blue),
    ]);
  }
}

class MyIconRow extends StatelessWidget {
  const MyIconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.face,
          size: 40,
        ),
        Icon(
          Icons.face,
          size: 40,
        )
      ],
    );
  }
}
