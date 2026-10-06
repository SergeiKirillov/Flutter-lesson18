import 'package:flutter/material.dart';

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
          home: const WorkerPage(),
        );
    }
}

class WorkerPage extends StatefulWidget {
  const WorkerPage({super.key});

  @override 
  State<WorkerPage> createState(){
    return _WorkerPageState();
  }
}

class _WorkerPageState extends State<WorkerPage>{
  bool working = true;
  bool showPhone = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text ('Работник'),
       ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              
              Text('Сергей Пупкин', style: TextStyle(fontSize: 24,),),
              
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
                
                Text(
                  showPhone?'Телефон: 87001234567':' ', style: TextStyle(fontSize: 24),
                ),
                
                Text(
                  working?'Работает':'Не работает',style:const TextStyle(fontSize: 20,),
                ),

                SizedBox(
                  height: 20,
                ),

                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      working=!working;
                    });
                  },
                  child: Text(
                    working ?'Отдыхать':'Работать',
                  ),
                ),
                
                SizedBox(
                  height: 20,
                ),
                
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      showPhone=!showPhone;
                    });
                  }, child: Text(
                    showPhone ?'Скрыть телефон':'Показать телефон'
                  )
                ),
              ],
          )
        ),
      );
  }
  
}
