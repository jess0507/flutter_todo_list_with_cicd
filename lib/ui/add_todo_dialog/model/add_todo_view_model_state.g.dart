// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_todo_view_model_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddTodoViewModelStateImpl _$$AddTodoViewModelStateImplFromJson(
  Map<String, dynamic> json,
) => _$AddTodoViewModelStateImpl(
  todo: json['todo'] == null
      ? const Todo()
      : Todo.fromJson(json['todo'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AddTodoViewModelStateImplToJson(
  _$AddTodoViewModelStateImpl instance,
) => <String, dynamic>{'todo': instance.todo};
