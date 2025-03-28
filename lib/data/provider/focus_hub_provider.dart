import 'package:flutter/material.dart';

class FocusHubProvider extends ChangeNotifier{
  final List<Map<String, dynamic>> _tasks = [];
  final List<String> _notes = [];

  List<Map<String, dynamic>> get tasks => _tasks;
  List<String> get notes => _notes;

  void addTask(String task) {
    _tasks.add({'title': task, 'completed': false});
    notifyListeners();
  }

  void toggleTaskCompletion(int index) {
    _tasks[index]['completed'] = !_tasks[index]['completed'];
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void addNote(String note) {
    _notes.add(note);
    notifyListeners();
  }

  void removeNote(int index) {
    _notes.removeAt(index);
    notifyListeners();
  }
}