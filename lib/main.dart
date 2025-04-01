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
              SizedBox(height: 16),
              Text(
                'Hallo App Akademie!',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                spacing: 8,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                      child: FilledButton(
                        onPressed: () {},
                        child: Text('A'),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                      child: FilledButton(
                        onPressed: () {},
                        child: Text('B'),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                      child: FilledButton(
                        onPressed: () {},
                        child: Text('C'),
                      ),
                    ),
                  )
                ],
              ),
              Row(
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Methoden

  void buttonClick() {
    print('Button wurde geklicked!');
  }

  void foo() {
    print('Hallo an alle!');
  }
}
