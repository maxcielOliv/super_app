import 'package:commons/data/db.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqlite_api.dart';

class TaskRepository extends ChangeNotifier { 
  late Database db;
  String _tarefa = '';
  
  get tarefa => _tarefa;

  TaskRepository() {
    _initRepository();
  }

  _initRepository() async {
    await _getTarefa();
  }

  _getTarefa() async {
    db = await DB.instance.database;
    List tarefa = await db.query('tarefa', limit: 1);
    _tarefa = tarefa.first['descricao'];
    notifyListeners();
  }

  setTarefa(String descricao) async {
    db = await DB.instance.database;
    db.insert('tarefa', {
      'descricao': descricao
    });
    _tarefa = descricao;
    notifyListeners();
  } 

}