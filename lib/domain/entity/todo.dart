import 'package:freezed_annotation/freezed_annotation.dart';

import 'importance.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    @Default(-1) int id,
    @Default('') String content,
    @Default(Importance.none) Importance importance,
    @Default(false) bool isCompleted,
    @Default(0) int createAt,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}