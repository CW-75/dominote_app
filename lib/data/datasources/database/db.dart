import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> connectTableDatabase() async {
  WidgetsFlutterBinding.ensureInitialized();
  final db = openDatabase(
    join(await getDatabasesPath(), 'dominote.db'),
    onCreate: (db, version) {
      return db.execute('''
        CREATE TABLE players(
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        name TEXT)
        CREATE TABLE tables(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT,
          player FOREIGN KEY REFERENCES players(id),
        );
        ''');
    },
    version: 1,
  );
  return db;
}
