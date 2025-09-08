import 'package:flutter_todo_list_with_cicd/data/database/base_database.dart';
import 'package:flutter_todo_list_with_cicd/data/database/model/todo_entity.dart';
import 'package:flutter_todo_list_with_cicd/data/database/todo_database.dart';
import 'package:flutter_todo_list_with_cicd/domain/model/importance.dart';

import '../../domain/model/todo.dart';
import 'local_data_srouce.dart';


class TodoRepository with LocalDataSource<Todo, TodoEntity> {
  TodoRepository._();
  static final instance = TodoRepository._();

  @override
  String get tag => 'TodoRepository';

  @override
  BaseDatabase<TodoEntity> get database => TodoDatabase.instance as BaseDatabase<TodoEntity>;
  
  @override
  Todo fromEntity(TodoEntity entity) => Todo(
      id: entity.id,
      content: entity.content,
      isCompleted: entity.isCompleted,
      importance: entity.importance.fromString,
      createAt: entity.createAt,
    );
  
  @override
  TodoEntity toEntity(Todo item) => TodoEntity(
      id: item.id,
      content: item.content,
      isCompleted: item.isCompleted,
      importance: item.importance.name,
      createAt: item.createAt,
    );
}