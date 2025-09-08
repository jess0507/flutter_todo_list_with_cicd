// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_page_view_model_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoListPageViewModelStateImpl _$$TodoListPageViewModelStateImplFromJson(
  Map<String, dynamic> json,
) => _$TodoListPageViewModelStateImpl(
  todos:
      (json['todos'] as List<dynamic>?)
          ?.map((e) => Todo.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$TodoListPageViewModelStateImplToJson(
  _$TodoListPageViewModelStateImpl instance,
) => <String, dynamic>{'todos': instance.todos};
