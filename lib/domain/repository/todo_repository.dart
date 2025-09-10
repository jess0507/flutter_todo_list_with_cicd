import '../entity/todo.dart';

abstract class TodoRepository {
  Stream<List<Todo>> observeDataStream();
  Future<void> fetchData();
  Future<int> addTodo(Todo todo);
  Future<int> updateTodo(int id, Todo todo);
  Future<int> deleteTodo(int id);
  Future<void> dispose();
}