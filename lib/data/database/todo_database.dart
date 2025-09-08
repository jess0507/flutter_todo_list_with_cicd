
import 'base_database.dart';
import 'model/todo_entity.dart';

class TodoDatabase with BaseDatabase<TodoEntity> {
  TodoDatabase._();
  static final instance = TodoDatabase._();
  
  @override
  String get createTableSql => '''
    CREATE TABLE $tableName (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      content TEXT,
      isCompleted INTEGER,
      importance TEXT,
      createAt INTEGER
    )
  ''';

  @override
  String get tableName => 'todo';

  @override
  String get dbName => 'todo_database.db';
  @override
  TodoEntity fromMap(Map<String, dynamic> map) {
    final entityMap = Map<String, dynamic>.from(map)
      ..['isCompleted'] = map['isCompleted'] == 1;
    return TodoEntity.fromJson(entityMap);
  }

  @override
  Map<String, dynamic> toMap(TodoEntity item) {
    final map = item.toJson()..['isCompleted'] = item.isCompleted ? 1 : 0;
    return map;
  }
}
