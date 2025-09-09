import 'dart:async';

import 'package:path/path.dart';
import 'package:rxdart/subjects.dart';
import 'package:sqflite/sqflite.dart';

mixin BaseDatabase<T> {
  Database? _database;

  final _streamController = BehaviorSubject<List<T>>.seeded([]);
  Stream<List<T>> get stream => _streamController.stream;

  String get dbName;
  String get tableName;
  int get version => 1;
  String get createTableSql;

  Future<Database> getDatabase() async {
    if (_database != null) return _database!;

    final dbPath = await getDatabasesPath();
    final path = join(dbPath, dbName);
    
    _database = await openDatabase(
      path,
      version: version,
      onCreate: (db, version) async {
        await db.execute(createTableSql);
      }
    );
    await refreshAll();
    return _database!;
  }

  T fromMap(Map<String, dynamic> map);
  Map<String, dynamic> toMap(T item);

  Future<void> refreshAll() async {
    final db = await getDatabase();
    final List<Map<String, dynamic>> maps = await db.query(tableName);
    _streamController.add(maps.map((map) => fromMap(map)).toList());
  }

  Future<List<T>> getAll() async {
    final db = await getDatabase();
    final List<Map<String, dynamic>> maps = await db.query(tableName);
    return maps.map((map) => fromMap(map)).toList();
  }

  Future<int> insert(T item) async {
    final db = await getDatabase();
    final map = toMap(item)..remove('id');
    final id = await db.insert(tableName, map);
    return id;
  }

  Future<int> update(T item, int id) async {
    final db = await getDatabase();
    final count = await db.update(tableName, toMap(item), where: 'id = ?', whereArgs: [id]);
    return count;
  }
  
  Future<int> delete(int id) async {
    final db = await getDatabase();
    final count = await db.delete(tableName, where: 'id = ?', whereArgs: [id]);
    return count;
  }

  Future<void> close() async {
    final db = await getDatabase();
    await db.close();
    _database = null;
    await _streamController.close();
  }
}