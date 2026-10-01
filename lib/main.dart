import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text(
            'Работник',
          ),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Сергей Путкин'),
              Row(
                children: [
                  Text('Цех:'),
                  Text('ЛПЦ-2'),
                ],
              ),
              const Row(
                children: [
                  Text('Должность:'),
                  Text('Маcтер'),
                ],
              ),
              
              const SizedBox(
                height: 20,
              ),

              ElevatedButton(
                onPressed: () {
                  print('Нажата кнопка');
                },
                child: const Text(
                  'Позвонить',
                ),
              ),


            ],
          ),
        ),
      )
    );
  }
}


