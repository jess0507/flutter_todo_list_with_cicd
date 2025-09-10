import 'package:flutter_todo_list_with_cicd/domain/entity/importance.dart';
import 'package:flutter_todo_list_with_cicd/domain/entity/todo.dart';

import '../model/todo_model.dart';

class TodoMapper {
  Todo toEntity(TodoModel model) {
    return Todo(
      id: model.id,
      content: model.content,
      isCompleted: model.isCompleted,
      importance: model.importance.fromString,
      createAt: model.createAt,
    );
  }

  TodoModel fromEntity(Todo todo) {
    return TodoModel(
      id: todo.id,
      content: todo.content,
      isCompleted: todo.isCompleted,
      importance: todo.importance.name,
      createAt: todo.createAt,
    );
  } 
}