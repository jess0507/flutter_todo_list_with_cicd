import 'package:fimber/fimber.dart';
import 'package:rxdart/subjects.dart';

import 'base_database.dart';

abstract class BaseLocalDataSource<T> {
  String get tag;
  final _streamController = BehaviorSubject<List<T>>.seeded([]);
  Stream<List<T>> get stream => _streamController.stream;
  BaseDatabase<T> get database;
  
  Future<void> refreshAll() async{
    await database.refreshAll();
    final List<T> items = await database.getAll();
    _streamController.add(items);
  }

  Future<int> insert(T item) async {
    Fimber.d('$tag: insert, item: $item');
    final id = await database.insert(item);
    await refreshAll();
    return id;
  }

  Future<int> update(int id, T item) async {
    Fimber.d('$tag: update, id: $id, item: $item');
    final count = await database.update(item, id);
    await refreshAll();
    return count;
  }

  Future<int> delete(int id) async {
    Fimber.d('$tag: delete, id: $id');
    final count = await database.delete(id);
    await refreshAll();
    return count;
  }

  Future<void> dispose() async {
    Fimber.d('$tag: dispose');
    database.close();
    await _streamController.close();
  }
}