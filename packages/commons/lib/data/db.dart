import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  
  DB._();

  static final DB instance = DB._();

  static Database? _database;

  get database async {
    if(_database != null) return _database;

    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'superApp.db'),
      version: 1,
      onCreate: _onCreate,

    );
  }

  _onCreate(db, versao) async {
    await db.execute(_tarefa);
    await db.execute(_nota);
    
  }

  String get _tarefa => '''
    CREATE TABLE tarefa (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      descricao TEXT,
      completa TEXT
    )
  ''';

  String get _nota => '''
    CREATE TABLE nota (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      descricao TEXT
    )
  ''';
}