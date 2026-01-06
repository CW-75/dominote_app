import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:dominote_flutter/domain/model/models.dart' as Models;
import 'package:sqflite/utils/utils.dart';

part './tables.dart';
part 'players.dart';

abstract class DbDominote {
  FutureOr<void> _createDb(Database db, int version) async {
    await db.execute("""
      CREATE TABLE game_tables(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT
      )
    """);
    await db.execute("""
      CREATE TABLE players(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT
      )
    """);
    await db.execute("""
      CREATE TABLE tables(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        wins INTEGER DEFAULT 0,
        best_score INTEGER DEFAULT 0,
        best_teammate TEXT,
        table_id INTEGER,
        player_id INTEGER,
        FOREIGN KEY(table_id) REFERENCES game_tables(id) ON DELETE CASCADE,
        FOREIGN KEY(player_id) REFERENCES players(id)
      )
    """);
  }

  // Uncomment if you need to delete the database
  // Future<void> deleteDb() async {
  //   final db = await _connect();
  //   await db.close();
  //   final dbPath = join(await getDatabasesPath(), 'dominote.db');
  //   if (await databaseExists(dbPath)) {
  //     await deleteDatabase(dbPath);
  //   }
  // }

  Future<Database> _connect() async {
    WidgetsFlutterBinding.ensureInitialized();
    final dbPath = join(await getDatabasesPath(), 'dominote.db');
    final db = await openDatabase(
      dbPath,
      onCreate: (db, version) => _createDb(db, version),
      version: 1,
    );
    return db;
  }

  Future<bool> _verifyTableExist(String table) async {
    final db = await _connect();
    final int? count = firstIntValue(
      await db.query(
        'sqlite_master',
        columns: ['COUNT(*)'],
        where: 'type = ? AND name = ?',
        whereArgs: ['table', table],
      ),
    );
    if (count == null) {
      throw Exception('Failed to verify table existence: $table');
    }
    return count > 0;
  }
}
