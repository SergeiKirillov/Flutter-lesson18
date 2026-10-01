import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Пример ElevatedButton')),
        body: Center(
          child: ElevatedButton(
            // onPressed обязателен. Если передать null, кнопка станет неактивной.
            onPressed: () {
              print('Кнопка нажата!');
            },
            child: const Text('Нажми меня'),
          ),
        ),
      ),
    );
  }
}
