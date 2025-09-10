import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/todo.dart';

part 'todo_list_page_view_model_state.freezed.dart';
part 'todo_list_page_view_model_state.g.dart';

@freezed
class TodoListPageViewModelState with _$TodoListPageViewModelState {
  const factory TodoListPageViewModelState({
    @Default([]) List<Todo> todos,
  }) = _TodoListPageViewModelState;

  factory TodoListPageViewModelState.fromJson(Map<String, dynamic> json) =>
      _$TodoListPageViewModelStateFromJson(json);
}
