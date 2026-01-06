part of './dominote.dart';

class DbGameTables extends DbDominote {
  final dbTableId = 'game_tables';
  final Models.Table table;

  DbGameTables({required this.table});

  Future<int> _insert() async {
    final db = await _connect();
    if (await _verifyTableExist(dbTableId)) {
      return await db.insert(dbTableId, table.toMap());
    }
    throw Exception('Table does not exist: $dbTableId');
  }

  Future<int> register() async {
    if ((await checkTables(table.name)).isEmpty) {
      return await _insert();
    } else {
      throw Exception('Item already exists: ${table.name}');
    }
  }

  Future<List<Models.Table>> checkTables([String? name]) async {
    final db = await _connect();
    if ((await _verifyTableExist(dbTableId))) {
      final query = await db.query(
        'game_tables',
        where: name != null ? 'name = ?' : null,
        whereArgs: name != null ? [name] : null,
      );
      return query.map((e) => Models.Table.fromMap(e)).toList(growable: false);
    }
    throw Exception('Table does not exist: $dbTableId');
  }
}
