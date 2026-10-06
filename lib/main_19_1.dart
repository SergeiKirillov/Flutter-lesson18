import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: const CounterPage(),
    );
  }  
}

class CounterPage extends StatefulWidget{
  const CounterPage({super.key});

  @override
  State<CounterPage> createState(){
    return _CounterPageState();
  }
}


class _CounterPageState extends State<CounterPage>{
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Счётчик'),
      ),
      body:Center(
        child: Text(
          '$counter',
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}