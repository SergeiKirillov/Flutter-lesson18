import 'package:flutter/material.dart';
import 'package:lesson18/main_2.dart';

void main() {
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: Text('Моё приложение',),
                ),
                body: Center(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                            Text('Сергей Пупкин'),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    Text('Цех:'),
                                    Text ('ЛПЦ-2'),
                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    Text('Должность:'),
                                    Text('Мастер'),
                                ],
                            ),
                            Text('Телефон: 87001234567'),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    Text('Работает:'),
                                    Text('Да'),
                                ],
                            ),
                            SizedBox(
                                height: 20,
                            ),
                            ElevatedButton(
                                onPressed: (){
                                    print('Нажата кнопка');
                                },
                                child:const Text(
                                    'Позвонить',
                                ),
                            ),
                            SizedBox(
                                height: 20,
                            ),
                            ElevatedButton(
                                onPressed: (){
                                    print('Информация');
                                }, child: const Text('Дополнительная информация')),
                        ],
                    )
                ),
            ),
        );   
    }
}