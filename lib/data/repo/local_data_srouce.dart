import 'package:fimber/fimber.dart';
import 'package:rxdart/subjects.dart';

import '../database/base_database.dart';

mixin LocalDataSource<T, E> {
  String get tag;
  final _streamController = BehaviorSubject<List<T>>.seeded([]);
  Stream<List<T>> get stream => _streamController.stream;
  BaseDatabase<E> get database;

  T fromEntity(E entity);
  E toEntity(T item);
  
  Future<void> refreshAll() async{
    await database.refreshAll();
    final List<E> entities = await database.getAll();
    final List<T> items = entities.map((e) => fromEntity(e)).toList();
    Fimber.d('$tag: refreshAll, items length: ${items.length}');
    _streamController.add(items);
  }

  Future<int> insert(T item) async {
    Fimber.d('$tag: insert, item: $item');
    final E entity = toEntity(item);
    final id = await database.insert(entity);
    await refreshAll();
    return id;
  }

  Future<int> update(int id, T item) async {
    Fimber.d('$tag: update, id: $id, item: $item');
    final E entity = toEntity(item);
    final count = await database.update(entity, id);
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