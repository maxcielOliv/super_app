import 'package:commons/commons.dart';
import 'package:flutter/material.dart';
import 'package:notes/notes_screen.dart';
import 'package:pomodoro/pomodoro.dart';
import 'package:tasks/task_screen.dart';
import 'package:super_app/ui/screen/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create: (_) => FocusHubProvider(),
      ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.light(),
        home: HomePage(),
        routes: {
          '/tasks': (context) => const TaskScreen(),
          '/notes': (context) => const NotesScreen(),
          '/pomodoro': (context) => const PomodoroScreen(),
        },
      ),
    );
  }
}
