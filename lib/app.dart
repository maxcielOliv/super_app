import 'package:flutter/material.dart';
import 'package:pomodoro/pomodoro.dart';
import 'package:provider/provider.dart';
import 'package:super_app/home_page.dart';
import 'package:super_app/ui/screen/notes_screen.dart';
import 'package:super_app/data/provider/focus_hub_provider.dart';
import 'package:super_app/ui/screen/task_screen.dart';

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
