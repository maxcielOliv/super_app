import 'dart:async';

import 'package:flutter/material.dart';

class PomodoroScreen extends StatefulWidget {
  const PomodoroScreen({super.key});

  @override
  State<PomodoroScreen> createState() => _PomodoroScreenState();
}

class _PomodoroScreenState extends State<PomodoroScreen> {
  double percent = 0;
  int timeInMinute = 25;
  int timeInSec = 25 * 60;
  Timer? timer;

  void startTimer() {
    timer?.cancel();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeInSec > 0) {
        setState(() {
          timeInSec--;
          timeInMinute = timeInSec ~/ 60;
          percent = 1 - (timeInSec / (timeInMinute * 60));
        });
      } else {
        timer.cancel();
        setState(() {
          percent = 1;
        },);
      }
    });
  }

  void pauseTimer() {
    timer?.cancel();
    print('pasuse');
  }

  void resetTimer() {
    timer?.cancel();
    setState(() {
      timeInMinute = 25;
      timeInSec = 25 *60;
      percent = 0;
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Timer Pomodoro')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$timeInMinute:${(timeInSec % 60).toString().padLeft(2, '0')}',
              style: TextStyle(fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    startTimer();
                  },
                  child: Text('Iniciar'),
                ),
                SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: () {
                    pauseTimer();
                  },
                  child: Text('Pausar'),
                ),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: () {
                  resetTimer();
                }, child: Text('Resetar')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
