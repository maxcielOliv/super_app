import 'package:flutter/material.dart';
import 'package:tasks/task_screen.dart';
import 'package:commons/commons.dart';

void main() {
  runApp(ChangeNotifierProvider(
        create: (_) => FocusHubProvider(),
        child: MyApp()
      ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: TaskScreen()
      ),
    );
  }
}
