import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/repo/todo_repository.dart';
import '../../domain/model/todo.dart';
import 'model/todo_list_page_view_model_state.dart';

final counterProvider = StateProvider<int>((ref) => 0);

final todoListPageViewmodel = StateNotifierProvider.autoDispose<
    TodoListPageViewmodel,
    TodoListPageViewModelState>((ref) => TodoListPageViewmodel());

class TodoListPageViewmodel extends StateNotifier<TodoListPageViewModelState> {
  final _todoRepository = TodoRepository.instance;
  late final StreamSubscription<List<Todo>> _subscription;

  TodoListPageViewmodel() : super(TodoListPageViewModelState()) {
    _todoRepository.refreshAll();
    _subscription = _todoRepository.stream.listen((data) {
      state = state.copyWith(todos: data);
    });
  }
  
  Future<void> addTodo(Todo todo) async {
    await _todoRepository.insert(todo);
  }

  Future<void> toggleCompleteStatus({required Todo todo}) async {
    final newTodo = todo.copyWith(isCompleted: !todo.isCompleted);
    await _todoRepository.update(todo.id, newTodo);
  }

  Future<void> delete({required Todo todo}) async {
    await _todoRepository.delete(todo.id);
  }

  @override
  void dispose() {
    _subscription.cancel();
    _todoRepository.dispose();
    super.dispose();
  }
}
