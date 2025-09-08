import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_entity.freezed.dart';
part 'todo_entity.g.dart';

@freezed
class TodoEntity with _$TodoEntity {
  const factory TodoEntity({
    @Default(-1) int id,
    @Default('') String content,
    @Default('none') String importance,
    @Default(false) bool isCompleted,
    @Default(0) int createAt,
  }) = _TodoEntity;

  factory TodoEntity.fromJson(Map<String, dynamic> json) =>
      _$TodoEntityFromJson(json);
}