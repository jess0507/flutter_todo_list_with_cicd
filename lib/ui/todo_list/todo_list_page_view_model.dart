import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/repository/todo_repository_impl.dart';
import '../../domain/entity/todo.dart';
import 'model/todo_list_page_view_model_state.dart';

final todoListPageViewmodel = StateNotifierProvider.autoDispose<
    TodoListPageViewmodel,
    TodoListPageViewModelState>((ref) => TodoListPageViewmodel());

class TodoListPageViewmodel extends StateNotifier<TodoListPageViewModelState> {
  final _todoRepository = TodoRepositoryImpl();
  late final StreamSubscription<List<Todo>> _subscription;

  TodoListPageViewmodel() : super(TodoListPageViewModelState()) {
    _todoRepository.fetchData();
    _subscription = _todoRepository.observeDataStream().listen((data) {
      state = state.copyWith(todos: data);
    });
  }
  
  Future<void> addTodo(Todo todo) async {
    await _todoRepository.addTodo(todo);
  }

  Future<void> toggleCompleteStatus({required Todo todo}) async {
    final newTodo = todo.copyWith(isCompleted: !todo.isCompleted);
    await _todoRepository.updateTodo(todo.id, newTodo);
  }

  Future<void> delete({required Todo todo}) async {
    await _todoRepository.deleteTodo(todo.id);
  }

  @override
  void dispose() {
    _subscription.cancel();
    _todoRepository.dispose();
    super.dispose();
  }
}
