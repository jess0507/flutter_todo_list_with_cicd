import 'package:flutter_todo_list_with_cicd/domain/repository/todo_repository.dart';

import '../../domain/entity/todo.dart';
import '../mapper/todo_mapper.dart';
import '../local/todo_local_data_source.dart';


class TodoRepositoryImpl implements TodoRepository {
  TodoRepositoryImpl({
    TodoLocalDataSource? todoLocalDataSource,
    TodoMapper? todoMapper,
  })  : todoLocalDataSource = todoLocalDataSource ?? TodoLocalDataSource(),
        todoMapper = todoMapper ?? TodoMapper();

  final TodoLocalDataSource todoLocalDataSource;
  final TodoMapper todoMapper;

  @override
  Stream<List<Todo>> observeDataStream() {
    return todoLocalDataSource.stream.map((models) => models.map((model) => todoMapper.toEntity(model)).toList());
  }
  
  @override
  Future<void> fetchData() {
    return todoLocalDataSource.refreshAll();
  }
  
  @override
  Future<int> updateTodo(int id, Todo todo) {
    final model = todoMapper.fromEntity(todo);
    return todoLocalDataSource.update(id, model);
  }
  
  @override
  Future<int> addTodo(Todo todo) async {
    final model = todoMapper.fromEntity(todo);
    final id = await todoLocalDataSource.insert(model);
    return id;
  }
  
  @override
  Future<int> deleteTodo(int id) {
    return todoLocalDataSource.delete(id);
  }
  
  @override
  Future<void> dispose() {
    return todoLocalDataSource.dispose();
  }
}