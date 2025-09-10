import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entity/importance.dart';
import 'model/add_todo_view_model_state.dart';

final addTodoViewmodel =
    StateNotifierProvider.autoDispose<AddTodoViewModel, AddTodoViewModelState>(
        (ref) => AddTodoViewModel());

class AddTodoViewModel extends StateNotifier<AddTodoViewModelState> {
  AddTodoViewModel() : super(AddTodoViewModelState());

  void updateTodo({
    String? content,
    Importance? importance,
  }) {
    final todo = state.todo.copyWith(content: content ?? state.todo.content, importance: importance ?? state.todo.importance);
    state = state.copyWith(todo: todo);
  }
}
