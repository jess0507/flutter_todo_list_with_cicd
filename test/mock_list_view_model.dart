


import 'package:fimber/fimber.dart';
import 'package:flutter_todo_list_with_cicd/domain/entity/todo.dart';
import 'package:flutter_todo_list_with_cicd/ui/todo_list/model/todo_list_page_view_model_state.dart';
import 'package:flutter_todo_list_with_cicd/ui/todo_list/todo_list_page_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MockTodoListViewModel extends StateNotifier<TodoListPageViewModelState> implements TodoListPageViewmodel {
  TodoListPageViewModelState mockState;

  MockTodoListViewModel(this.mockState) : super(mockState);
  
  @override
  Future<void> addTodo(Todo todo) async {
    Fimber.d('addTodo: $todo');
  }
  
  @override
  Future<void> delete({required Todo todo}) async {
    Fimber.d('addTodo: $todo');
  }
  
  @override
  Future<void> toggleCompleteStatus({required Todo todo}) async {
    Fimber.d('toggleCompleteStatus: $todo');
  }
  
}