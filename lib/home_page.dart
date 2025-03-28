import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/tasks');
              },
              child: Text('Lista de Tarefas', style: TextStyle(fontSize: 30),),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/notes');
              },
              child: Text('Bloco de Notas', style: TextStyle(fontSize: 30),),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/pomodoro');
              },
              child: Text('Pomodoro', style: TextStyle(fontSize: 30),),
            ),
          ],
        ),
      ),
    );
  }
}
