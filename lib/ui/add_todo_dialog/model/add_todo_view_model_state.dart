
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/todo.dart';

part 'add_todo_view_model_state.freezed.dart';
part 'add_todo_view_model_state.g.dart';

@freezed
class AddTodoViewModelState with _$AddTodoViewModelState {
  const factory AddTodoViewModelState({@Default(Todo()) Todo todo}) = _AddTodoViewModelState;

  factory AddTodoViewModelState.fromJson(Map<String, dynamic> json) =>
      _$AddTodoViewModelStateFromJson(json);
}
